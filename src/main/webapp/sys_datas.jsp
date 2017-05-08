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
		<style>
	    pre {outline: 1px solid #ccc; padding: 5px; margin: 5px; }
	    .string { color: green; }
	    .number { color: darkorange; }
	    .boolean { color: blue; }
	    .null { color: magenta; }
	    .key { color: red; }
	</style>
  </head>
  
  <body>
	<body>
		<div class="admin-main">
			
			<fieldset class="layui-elem-field">
				<legend>数据列表</legend>
				<div class="layui-field-box">
				<pre id="result">

</pre>
					<%-- <table class="site-table table-hover">
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
					</table> --%>
				</div>
			</fieldset>
			<div class="admin-table-page" style="background: white;border:none">
				<div id="page" class="page" style="float: right;">
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="plugins/layui/layui.js"></script>
		<script>
			var json =${results};
			$('#result').html(syntaxHighlight(json));
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
				
			});
			
			function syntaxHighlight(json) {
			    if (typeof json != 'string') {
			        json = JSON.stringify(json, undefined, 2);
			    }
			    json = json.replace(/&/g, '&').replace(/</g, '<').replace(/>/g, '>');
			    return json.replace(/("(\\u[a-zA-Z0-9]{4}|\\[^u]|[^\\"])*"(\s*:)?|\b(true|false|null)\b|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?)/g, function(match) {
			        var cls = 'number';
			        if (/^"/.test(match)) {
			            if (/:$/.test(match)) {
			                cls = 'key';
			            } else {
			                cls = 'string';
			            }
			        } else if (/true|false/.test(match)) {
			            cls = 'boolean';
			        } else if (/null/.test(match)) {
			            cls = 'null';
			        }
			        return '<span class="' + cls + '">' + match + '</span>';
			    });
			}
		</script>
	</body>
</html>
