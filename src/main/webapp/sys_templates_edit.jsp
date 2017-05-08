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
			<form class="layui-form" action="saveTemplates">
				<input type="hidden" name="ID" value="${params.TEMPLATE_ID}"/>
				<div class="layui-form-item">
					<label class="layui-form-label">上级</label>
					<div class="layui-input-block">
						<select name="PID" >
							<option value="0">无</option>
							<c:forEach items="${list}" var="var">
								<option value="${var.TEMPLATE_ID}" ${PID==var.TEMPLATE_ID?'selected':''}>${var.TEMPLATE_NAME }</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">模版名称</label>
					<div class="layui-input-block">
						<input type="text" name="TEMPLATE_NAME" lay-verify="required" value="${params.TEMPLATE_NAME}"  autocomplete="off" placeholder="请输入模版名称" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">模版数据库名</label>
					<div class="layui-input-block">
						<input type="text" name="TEMPLATE_KEY" lay-verify="required" value="${params.TEMPLATE_KEY}"  autocomplete="off" placeholder="请输入模版数据库名" class="layui-input">
					</div>
				</div>	
				<div class="layui-form-item">
					<label class="layui-form-label">模版描述</label>
					<div class="layui-input-block">
						<input type="text" name="TEMPLATE_INFO"  placeholder="请输入" value="${params.TEMPLATE_INFO}"  autocomplete="off" class="layui-input">
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