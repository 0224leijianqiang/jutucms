<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<form class="layui-form" action="saveGroups">
				<div class="layui-form-item">
					<label class="layui-form-label">上级</label>
					<div class="layui-input-block">
						<select name="group_superior" >
							<option value="0">无</option>
							<c:forEach items="${list}" var="var">
								<option value="${var.id}" ${var.id==map.id?'selected':''}>${var.group_name }</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">所属模板</label>
					<div class="layui-input-block">
						<select name="group_type" >
							<option value=""></option>
							<option value="cus_area" ${map.group_type=='cus_area'?'selected':''}>地区字段</option>
							<option value="cus_vips" ${map.group_type=='cus_vips'?'selected':''}>会员字段</option>
							<option value="cus_land" ${map.group_type=='cus_land'?'selected':''}>地块字段</option>
							<option value="cus_village" ${map.group_type=='cus_village'?'selected':''}>村庄字段</option>
							<option value="cus_frame" ${map.group_type=='cus_frame'?'selected':''}>农场字段</option>
							<option value="cus_goods" ${map.group_type=='cus_goods'?'selected':''}>产品字段</option>
						</select>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">组名</label>
					<div class="layui-input-block">
						<input type="text" name="group_name" lay-verify="required"  autocomplete="off" placeholder="请输入标题" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">描述</label>
					<div class="layui-input-block">
						<input type="text" name="group_info"  placeholder="请输入" autocomplete="off" class="layui-input">
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