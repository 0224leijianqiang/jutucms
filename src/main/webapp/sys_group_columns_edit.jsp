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
			<form class="layui-form" action="saveColumns">
					
					<input type="hidden" name="id" value="${pd._id}"/>
					<input type="hidden" name="group_id" value="${pd.group_id}"/>
<%-- 				<input type="hidden" name="group_type" value="${map.group_type}"/>
 --%>				<div class="layui-form-item">
					<label class="layui-form-label">属性类型</label>
					<div class="layui-input-block">
						<div class="layui-tab" style="overflow: visible;">
						<select name="column_type" lay-verify="" style="max-height: 50px">
							  <c:forEach items="${iselect}" var="map">
								  <option value="${map.key}" ${map.key==pd.column_type?'selected':'' }>${map.value }</option>
							  </c:forEach>
						</select>
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">属性名称</label>
					<div class="layui-input-block">
						<input type="text" name="column_name" value="${pd.column_name }" lay-verify="required"  placeholder="属性名称用户字段" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">唯一标识名</label>
					<div class="layui-input-block">
						<input type="text" name="column_key" lay-verify="required"  value="${pd.column_key}" placeholder="唯一标识名用户数据库字段识别" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">提示说明</label>
					<div class="layui-input-block">
						<input type="text" name="column_hint"  placeholder="字段提示说明" value="${pd.column_hint }" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">默认值</label>
					<div class="layui-input-block">
						<input type="text" name="column_default_value" value="${pd.column_default_value }"  placeholder="多个属性请用英文逗号分隔开" autocomplete="off" class="layui-input"> 
						<!--  <small>默认值适用于备选参数类型(单选框,多选框,下拉框),多个属性分别用逗号分隔,要具体指定属性值的同时请用属性=值的形式,数据来源于动态值请用url:+链接地址,数据格式为json</small>-->
					</div>
				</div>	
				<div class="layui-form-item">
					<label class="layui-form-label">属性状态</label>
					<div class="layui-input-block">
				      <input type="checkbox" name="column_status" lay-skin="primary" title="是否隐藏" value="is_hidden" ${fn:contains(pd.column_status, 'is_hidden')?'checked':''}>
				      <input type="checkbox" name="column_status" lay-skin="primary" title="是否必填" value="is_required" ${fn:contains(pd.column_status, 'is_required')?'checked':''}>
					</div>
				</div>	
					<div class="layui-form-item">
					<label class="layui-form-label">验证方式</label>
					<div class="layui-input-block">
				      <input type="radio" name="column_method" lay-skin="primary" title="整数" value="int" ${fn:contains(pd.column_method, 'int')?'checked':''}>
				      <input type="radio" name="column_method" lay-skin="primary" title="邮件" value="email" ${fn:contains(pd.column_method, 'email')?'checked':''}>
				      <input type="radio" name="column_method" lay-skin="primary" title="小数" value="number" ${fn:contains(pd.column_method, 'number')?'checked':''}>
				      <input type="radio" name="column_method" lay-skin="primary" title="电话" value="phone" ${fn:contains(pd.column_method, 'phone')?'checked':''}>
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
					return true;
				});
			});
			function submitForm(){
				$(".layui-form").submit();
			}
		</script>
	</body>
</html>