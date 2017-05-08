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
			<blockquote class="layui-elem-quote">
			<form action="" class="layui-form">
				<table>
					<tr>
						<td>
						</td>
						<%-- <td style="padding: 5px">
							<select name="group_type" id="group_type" >
							<option value="">请选择模块</option>
							<option value="cus_area" ${map.group_type=='cus_area'?'selected':''}>地区字段</option>
							<option value="cus_vips" ${map.group_type=='cus_vips'?'selected':''}>会员字段</option>
							<option value="cus_land" ${map.group_type=='cus_land'?'selected':''}>地块字段</option>
							<option value="cus_village" ${map.group_type=='cus_village'?'selected':''}>村庄字段</option>
							<option value="cus_frame" ${map.group_type=='cus_frame'?'selected':''}>农场字段</option>
						</select> --%>
						<div class="layui-btn-group">
							<%-- <a href="javascript:;" class="layui-btn layui-btn-normal addGroupsInfo" data-params="group_type=${map.type}&id=${map.id}" >
							<i class="layui-icon ">&#xe608;</i> 添加组
							</a> --%>
						    <a href="groups_columns?type=cus_area" class="layui-btn layui-btn-normal  ${map.type=='cus_area'?'layui-btn-danger':''}">地区管理</a>
						    <a href="groups_columns?type=cus_vips" class="layui-btn  layui-btn-normal ${map.type=='cus_vips'?'layui-btn-danger':''}">会员管理</a>
						    <a href="groups_columns?type=cus_land" class="layui-btn  layui-btn-normal ${map.type=='cus_land'?'layui-btn-danger':''}">地块管理</a>
						    <a href="groups_columns?type=cus_village" class="layui-btn  layui-btn-normal ${map.type=='cus_village'?'layui-btn-danger':''}">村庄管理</a>
						    <a href="groups_columns?type=cus_frame" class="layui-btn  layui-btn-normal ${map.type=='cus_frame'?'layui-btn-danger':''}">农场管理</a>
						  </div>
						  <div class="layui-btn-group">
						  	<c:forEach items="${groups}" var="var">
							    <a href="groups_columns?type=${map.type}&id=${var.id}" class="layui-btn    ${map.id==var.id?'layui-btn-danger':'layui-btn-primary'}">${var.group_name}</a>
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
								<th><input type="checkbox" id="selected-all"></th>
								<th>属性类型</th>
								<th>属性名称</th>
								<th>唯一标识名</th>
								<th>提示说明</th>
								<th>默认值</th>
								<th>属性状态</th>
								<th>验证方式</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="var">
								<tr>
									<td><input type="checkbox"></td>
									<td>${var.column_type_str }</td>
									<td>${var.column_name }</td>
									<td>${var.column_key }</td>
									<td>${var.column_hint }</td>
									<td style="overflow: hidden;white-space: nowrap;text-overflow:ellipsis;max-width: 200px;" >${var.column_default_value}</td>
									<td>${var.column_status }</td>
									<td>${var.column_method }</td>
									<td>
										<a  class="layui-btn layui-btn-small edit_columns" data-params="id=${var.id}">编辑</a>
										<a href="javascript:;" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-small">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
			</fieldset>
			<div class="admin-table-page" style="background: white;border:none">
				<div id="page" class="page" style="float: right;">
				</div>
			</div>
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
				$('input').iCheck({
					checkboxClass: 'icheckbox_flat-blue'
				});
				//page
				laypage({
					cont: 'page',
					pages: 25 //总页数
						,
					groups: 5 //连续显示分页数
						,
					jump: function(obj, first) {
						//得到了当前页，用于向服务端请求对应数据
						var curr = obj.curr;
						if(!first) {
							//layer.msg('第 '+ obj.curr +' 页');
						}
					}
				});
				$('.addGroupsInfo').on('click', function() {
						layer.open({
							type: 2,
							title: '添加组',
							content: "addGroups?"+$(this).attr("data-params"),
							area: ['600px', '350px'],
							end:function(){
								location.reload();								
							}
						});
				 });
				$('.edit_columns').on('click', function() {
					layer.open({
						type: 2,
						title: '添加组',
						content: "editColumns?"+$(this).attr("data-params"),
						area: ['800px', '500px'],btn: ['提交', '重置']
					  	,yes: function(index, layero){
						    //按钮【按钮一】的回调
							/* $(layero.find(".layui-form")).submit();  */
							var body = top.layer.getChildFrame('body', index);
							var iframeWin = top[layero.find('iframe')[0]['name']];
							iframeWin.submitForm();
							layer.close(index);
							location.reload();
						},
						cancel:function(){
							console.log("close");
						}
					});
				});
			});
		</script>
	</body>
</html>
