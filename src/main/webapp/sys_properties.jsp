<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">  <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
 	 <link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="css/global.css" media="all">
		<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/table.css" />
  </head>
  
  <body>
	<body>
		<div class="admin-main">
			<blockquote class="layui-elem-quote layui-quote-nm">
				<form action="" class="layui-form">
				<table>
					<tr>
						<td>
							  <a href="javascript:;" class="layui-btn layui-btn-warm addGroupsInfo" data-params="TEMPLATE_KEY=${TEMPLATE_KEY}"  >
								 新增属性
							  </a>
						  <div class="layui-btn-group">
						  	<c:forEach items="${groups}" var="var">
							    <a href="properties?TEMPLATE_KEY=${var.TEMPLATE_KEY}" class="layui-btn  ${TEMPLATE_KEY==var.TEMPLATE_KEY?'layui-btn-danger':'layui-btn-normal'}">${var.TEMPLATE_NAME}</a>
						  	</c:forEach>
						  </div>
						</td>
					</tr>
				</table>
			   </form>
			</blockquote>
			
			<fieldset class="layui-elem-field">
				<legend>数据列表</legend>
				<div class="layui-field-box">
					<table class="site-table table-hover">
						<thead>
							<tr>
								<th>序号</th>
								<th>属性组别</th>
								<th>属性名称</th>
								<th>属性类型</th>
								<th>属性状态</th>
								<th>属性验证方式</th>
								<th>字段名称/属性KEY</th>
								<th>字段类型</th>
								<th>字段备注/属性描述</th>
								<th>是否允许为空</th>
								<!-- <th>是否自动增长</th>
								<th>是否主键</th> -->
								<th>操作</th>
							</tr>
						</thead>
						<tbody class="layui-form">
							<c:forEach items="${lists}" var="var" varStatus="status">
								<tr>
									<td>${status.index+1}</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td>${var.COLUMN_NAME }</td>
									<td>${var.COLUMN_TYPE }</td>
									<td>${var.COLUMN_COMMENT }</td>
									<td>
										<input type="checkbox" name="close" lay-skin="switch" lay-text="是|否" ${var.IS_NULLABLE=='YES'?'checked':''}>
									</td>
									<%-- <td>
										<input type="checkbox" name="close" lay-skin="switch" lay-text="是|否" ${var.EXTRA=='auto_increment'?'checked':''} disabled="disabled">
									</td>
									<td>
										<input type="checkbox" name="close" lay-skin="switch" lay-text="是|否" ${var.COLUMN_KEY=='PRI'?'checked':''} disabled="disabled">
									</td> --%>
									<td>
										<a href="javascript:;" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-small addGroupsInfo" data-params="TEMPLATE_KEY=${TEMPLATE_KEY}&COLUMN_NAME=${var.COLUMN_NAME}">编辑</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
			</fieldset>
			<!-- <div class="admin-table-page" style="background: white;border:none">
				<div id="page" class="page" style="float: right;">
				</div>
			</div> -->
		</div>
		<script type="text/javascript" src="plugins/layui/layui.js"></script>
		<script>
			layui.config({
				base: 'plugins/layui/modules/'
			});
			layui.use(['icheck', 'laypage','layer','form'], function() {
				var $ = layui.jquery,
					laypage = layui.laypage,
					layer = parent.layer === undefined ? layui.layer : parent.layer,
					form = layui.form();
					$('.addGroupsInfo').on('click', function() {
						layer.open({
							type: 2,
							title: '属性管理',
							content: "editProperties?"+$(this).attr("data-params"),
							area: ['800px', '495px'],btn: ['提交', '重置']
					  	,yes: function(index, layero){
						    //按钮【按钮一】的回调
							/* $(layero.find(".layui-form")).submit();  */
							var body = top.layer.getChildFrame('body', index);
								var iframeWin = top[layero.find('iframe')[0]['name']];
								iframeWin.submitForm();
								layer.close(index);
								location.reload();
							},
							end:function(){
								//location.reload();								
							}
						});
					});

			});
		</script>
	</body>
</html>
