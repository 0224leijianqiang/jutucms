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
							<a href="javascript:;" class="layui-btn layui-btn-normal addGroupsInfo" data-params="PID=${PID}" >
								添加模版
							</a>
							<c:if test="${UPID!=null}">
								<a href="templates?PID=${UPID}" class="layui-btn layui-btn-warm" >
									上级
								</a>
							</c:if>
						 </div>
						  <div class="layui-btn-group">
						  	<c:forEach items="${groups}" var="var">
							    <a href="templates?PID=${var.TEMPLATE_ID}" class="layui-btn  ${PID==var.TEMPLATE_ID?'layui-btn-danger':'layui-btn-primary'}">${var.TEMPLATE_NAME}</a>
						  	</c:forEach>
						  </div>
						</td>
					</tr>
				</table>
				
				</form>
			</blockquote>
			
			<fieldset class="layui-elem-field">
				<legend><a>数据列表</a></legend>
				<div class="layui-field-box">
					<table class="site-table table-hover">
						<thead>
							<tr>
								<th><input type="checkbox" id="selected-all"></th>
								<th>上级</th>
								<th>模版名称</th>
								<th>模版数据库名</th>
								<th>详细描述</th>
								<th>创建时间</th>
								<th>更新时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${lists}" var="var">
								<tr>
									<td><input type="checkbox"></td>
									<td>${var.PID }</td>
									<td>${var.TEMPLATE_NAME }</td>
									<td>${var.TEMPLATE_KEY }</td>
									<td>${var.TEMPLATE_INFO }</td>
									<td>${var.CREATE_DATE }</td>
									<td>${var.UPDATE_DATE }</td>
									<td>
										<%-- <c:if test="${var.PID!=0}">
											<a href="templates?PID=${PID}&TEMPLATE_NAME=${var.TEMPLATE_NAME}" class="layui-btn layui-btn-normal layui-btn-small">上级</a>
										</c:if> --%>
										<a href="templates?PID=${var.TEMPLATE_ID}&TEMPLATE_NAME=${var.TEMPLATE_NAME}" class="layui-btn layui-btn-small">进入</a>
										<%-- <a  class="layui-btn layui-btn-normal layui-btn-small addGroupsInfo" data-params="group_type=${var.group_type}&id=${var.id}">添加</a> --%>
										<a href="javascript:;" data-id="1" data-params="ID=${var.TEMPLATE_ID}"  data-opt="del" class="layui-btn layui-btn-danger layui-btn-small addGroupsInfo">编辑</a>
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
					checkboxClass: 'icheckbox_flat-green'
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
							content: "addTemplates?"+$(this).attr("data-params"),
							area: ['600px', '350px'],btn: ['提交', '重置']
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
