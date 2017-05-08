<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
 <head>
		<meta charset="utf-8">
		<title>表单</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
	</head>

	<body>
		<div style="margin: 20px;">
			<form class="layui-form" action="saveProperties">
				<div class="layui-form-item">
					<label class="layui-form-label">所属模块组</label>
					<div class="layui-input-block">
						<select name="PROPERTIES_PID" lay-verify="">
								  <option value="${template.TEMPLATE_ID}" >${template.TEMPLATE_NAME }</option>
						</select>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">属性类型</label>
					<div class="layui-input-block">
						<select name="PROPERTIES_TYPE" lay-verify="">
							  <c:forEach items="${iselect}" var="map">
								  <option value="${map.key}" ${map.key==pd.column_type?'selected':'' }>${map.value }</option>
							  </c:forEach>
						</select>
					</div>
				</div>
				
				<div class="layui-form-item">
					<label class="layui-form-label">属性名称</label>
					<div class="layui-input-block">
						<input type="text" name="PROPERTIES_NAME" lay-verify="required"  autocomplete="off" placeholder="请输入属性名称" class="layui-input"  style="float: left;width:50%;"/>
						<input type="text" name="PROPERTIES_DEFAULT" lay-verify="required"  autocomplete="off" placeholder="请输入属性默认值" class="layui-input"  style="float: left;width:49%;margin-left: 1%"/>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">字段名称/长度</label>
					<div class="layui-input-block">
						<input type="text" name="PROPERTIES_KEY" lay-verify="required"  autocomplete="off" placeholder="请输入字段名称/属性唯一标识名" class="layui-input" style="float: left;width:50%;">
						<input type="number" name="PROPERTIES_MAX_LENGTH" lay-verify="required"  autocomplete="off" placeholder="请输入属性值大小范围" value="32" class="layui-input"  style="float: left;width:49%;margin-left: 1%">
					</div>
				</div>
				
				<div class="layui-form-item">
					<label class="layui-form-label">详细描述</label>
					<div class="layui-input-block">
						<input type="text" name="PROPERTIES_INFO" lay-verify="required"  autocomplete="off" placeholder="请输入字段/属性详细描述" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">属性参数</label>
					<div class="layui-input-block">
				      <input type="checkbox" name="PROPERTIES_PARAMS" lay-skin="primary" title="必填" value="is_required" ${fn:contains(pd.column_status, 'is_required')?'checked':''}>
				       <input type="checkbox" name="PROPERTIES_PARAMS" lay-skin="primary" title="隐藏" value="is_required" ${fn:contains(pd.column_status, 'is_required')?'checked':''}>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">属性验证方式</label>
					<div class="layui-input-block">
				      <input type="radio" name="PROPERTIES_VALID" lay-skin="primary" title="整数" value="int" ${fn:contains(pd.column_method, 'int')?'checked':''}>
				      <input type="radio" name="PROPERTIES_VALID" lay-skin="primary" title="邮件" value="email" ${fn:contains(pd.column_method, 'email')?'checked':''}>
				      <input type="radio" name="PROPERTIES_VALID" lay-skin="primary" title="小数" value="number" ${fn:contains(pd.column_method, 'number')?'checked':''}>
				      <input type="radio" name="PROPERTIES_VALID" lay-skin="primary" title="电话" value="phone" ${fn:contains(pd.column_method, 'phone')?'checked':''}>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="plugins/layui/layui.js"></script>
		<script>
			layui.use(['form', 'layedit', 'laydate'], function() {
				var form = layui.form(),
					layer = layui.layer,
					layedit = layui.layedit,
					laydate = layui.laydate;
				//创建一个编辑器
				var editIndex = layedit.build('LAY_demo_editor');
				//自定义验证规则
				/* form.verify({
					title: function(value) {
						if(value.length < 4) {
							return '标题至少得5个字符啊';
						}
					}
				}); */
				//监听提交
				form.on('submit(demo1)', function(data) {
					/* layer.alert(JSON.stringify(data.field), {
						title: '最终的提交信息'
					}) */
					layer.closeAll($(fom));
					return true;
				});
			});
			function submitForm(){
				$(".layui-form").submit();
			}
		</script>
	</body>
</html>