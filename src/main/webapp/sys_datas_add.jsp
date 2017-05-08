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
	</head>

	<body>
		<div style="margin: 20px;">
			<form class="layui-form" action="saveDatas" style="margin-top: 10px;">
			<input type="hidden" name="collectionName" value="${map.type }"/>
			<c:forEach items="${list}" var="var">
			<fieldset class="layui-elem-field">
				<legend>${var.group_name }</legend>
				<c:forEach items="${var.children}" var="child">
					<div class="layui-form-item" style="margin-top: 15px">
						<label class="layui-form-label">${child.group_name}</label>
						<div class="layui-input-block">
							<div style="min-width:92%;max-width:95%;float: left;" onmousemove="">
							<c:forEach items="${child.columns}" var="column">
								<c:choose>
									<c:when test="${column.column_type =='01'}">
										<input type="text" name="${column.column_key}" lay-verify="required" style="width:260px;float: left;margin-right: 10px;"  autocomplete="off" placeholder="请输入${column.column_name}" class="layui-input">
									</c:when>
									<c:when test="${column.column_type =='02'}">
											<c:if test="${child.columns_size==1}">
												<c:forEach items="${column.column_default_value}" var="value" varStatus="status">
												 <input type="checkbox" name="${column.column_key}" lay-skin="primary" title="${value}" value="${value }">
												</c:forEach>
											</c:if>
											<c:if test="${child.columns_size>1}">
												<fieldset class="layui-elem-field" style="float: left;">
												  <legend>${column.column_name}</legend>
												  <div class="layui-field-box">
													  <c:forEach items="${column.column_default_value}" var="value" varStatus="status">
													 <input type="checkbox" name="${column.column_key}" lay-skin="primary" title="${value}" value="${value }">
													</c:forEach>
												  </div>
												</fieldset>
											</c:if>
									</c:when>
									<c:when test="${column.column_type =='03'}">
										 <c:forEach items="${column.column_default_value}" var="value" varStatus="status">
											 <input type="radio" name="${column.column_key}" lay-skin="primary" title="${value}" value="${value }" ${status.index==0?'checked':'' }>
											</c:forEach>
									</c:when>
									<c:when test="${column.column_type =='04'}">
											<div style="max-width: 260px;float: left;margin-right: 10px">
										 	<select name="${column.column_key}" lay-verify="" style="width: 260px;" >
												<c:forEach items="${column.column_default_value}" var="value">
													  <option value="${value }">${value}</option>
												</c:forEach>
										  	</select>  
											</div>
									</c:when>
									<c:when test="${column.column_type =='06'}">
      									<textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor" style="min-width: 800px"></textarea>
									</c:when>
									<c:when test="${column.column_type =='08'}">
										<input type="text" name="${column.column_key}" lay-verify="required" style="width:260px;" placeholder="yyyy-mm-dd"  autocomplete="off" placeholder="请输入${column.column_name}" class="layui-input" onclick="layui.laydate({elem: this})">
									</c:when>
									<c:when test="${column.column_type =='09'}">
										<input type="file" name="file1" lay-type="file" class="layui-upload-file"> 
									</c:when>
									<c:otherwise>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							</div>
						</div>
					</div>
				</c:forEach>
			</fieldset>
			</c:forEach>
			<a class="layui-btn" id="saveDatas">保存提交</a>
			</form>
		</div>
		<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="plugins/layui/layui.js"></script>
		<script>
		layui.use(['layer','form','laydate','upload','layedit'], function() {
			var form = layui.form(),
			layer = parent.layer === undefined ? layui.layer : parent.layer,
			laydate = layui.laydate,
			layedit = layui.layedit;
			var editIndex = layedit.build('LAY_demo_editor');
			layui.upload({
			    url: '' //上传接口
			    ,success: function(res){ //上传成功后的回调
			      console.log(res)
			    }
			  });
			$('.add_children_info').on('click', function() {
					layer.open({
						type: 2,
						title: '添加属性',
						content: ["addColumns?"+$(this).attr("data-params")],
						area: ['600px', '500px'],
						end:function(){
							location.reload();								
						}
					});
			});
			$("#saveDatas").on('click',function(){
				$(".layui-form").submit();
				layer.alert("提交成功");
			});
		});
		</script>
	</body>
</html>