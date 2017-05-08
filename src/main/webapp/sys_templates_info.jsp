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
						  <div class="layui-btn-group">
						  	<c:forEach items="${groups}" var="var">
							    <a href="templatesinfo?TEMPLATE_KEY=${var.TEMPLATE_KEY}&ID=${var.TEMPLATE_ID}" class="layui-btn  ${TEMPLATE_KEY==var.TEMPLATE_KEY?'layui-btn-danger':'layui-btn-normal'}">${var.TEMPLATE_NAME}</a>
						  	</c:forEach>
						  </div>
						</td>
					</tr>
				</table>
			   </form>
			</blockquote>
			<form class="layui-form" action="saveColumns" style="margin-top: 10px;">
			<c:forEach items="${lists}" var="var">
			<fieldset class="layui-elem-field">
				<legend>${var.TEMPLATE_NAME }</legend>
				<c:forEach items="${var.childrens}" var="child">
					<div class="layui-form-item" style="margin-top: 15px">
						<label class="layui-form-label">${child.TEMPLATE_NAME}</label>
						<div class="layui-input-block">
							<div style="min-width:92%;max-width:95%;float: left;" onmousemove="">
							<c:forEach items="${child.properties}" var="column">
								<c:choose>
									<c:when test="${column.PROPERTIES_TYPE =='01'}">
										<input type="text" name="${column.PROPERTIES_KEY}" lay-verify="required" style="width:260px;float: left;margin-right: 10px;"  autocomplete="off" placeholder="请输入${column.PROPERTIES_NAME}" class="layui-input">
									</c:when>
									<c:when test="${column.PROPERTIES_TYPE =='02'}">
											<c:if test="${child.columns_size==1}">
												<c:forEach items="${column.PROPERTIES_DEFAULT}" var="value" varStatus="status">
												 <input type="checkbox" name="${column.PROPERTIES_KEY}" lay-skin="primary" title="${value}" value="${value }">
												</c:forEach>
											</c:if>
											<c:if test="${child.columns_size>1}">
												<fieldset class="layui-elem-field" style="float: left;">
												  <legend>${column.PROPERTIES_NAME}</legend>
												  <div class="layui-field-box">
													  <c:forEach items="${column.PROPERTIES_DEFAULT}" var="value" varStatus="status">
													 <input type="checkbox" name="${column.PROPERTIES_KEY}" lay-skin="primary" title="${value}" value="${value }">
													</c:forEach>
												  </div>
												</fieldset>
											</c:if>
									</c:when>
									<c:when test="${column.PROPERTIES_TYPE =='03'}">
										 <c:forEach items="${column.PROPERTIES_DEFAULT}" var="value" varStatus="status">
											 <input type="radio" name="${column.PROPERTIES_KEY}" lay-skin="primary" title="${value}" value="${value }" ${status.index==0?'checked':'' }>
											</c:forEach>
									</c:when>
									<c:when test="${column.PROPERTIES_TYPE =='04'}">
											<div style="max-width: 260px;float: left;margin-right: 10px">
										 	<select name="${column.PROPERTIES_KEY}" lay-verify="" style="width: 260px;" >
												<c:forEach items="${column.PROPERTIES_DEFAULT}" var="value">
													  <option value="${value }">${value}</option>
												</c:forEach>
										  	</select>  
											</div>
									</c:when>
									<c:when test="${column.PROPERTIES_TYPE =='05'}">
										
										<div style="float: left;margin-right: 10px;width:260px;margin-right:5px" id="${column.PROPERTIES_KEY}_div">
										<select name="${column.PROPERTIES_KEY}" lay-verify="" id="${column.PROPERTIES_KEY}" data-url="${column.url}" lay-filter="${column.PROPERTIES_KEY}" style="float: left;" >
											<c:forEach items="${column.PROPERTIES_DEFAULT}" var="value" >
												 <option value=""></option>
											</c:forEach>
										 </select>
										 </div>
										 <script type="text/javascript">
											 $(document).ready(function(){
											 	var data = $.ajax({url:"${column.url}",async:false});
											 	var array =  $.parseJSON(data.responseText);
											 	for(var obj in array){
											 		$("#${column.PROPERTIES_KEY}").append("<option>"+array[obj]+"</option>");
											 	}
											 });
											 layui.use(['form'], function() {
													var form = layui.form();
													initDynamic("${column.PROPERTIES_KEY}", form)
											      });
											 function initDynamic(id,form){
												 form.on('select('+id+')', function(data){
												 /*console.log(data.elem); //得到select原始DOM对象
												  console.log(data.othis); //得到美化后的DOM对象
												  console.log(data.value); //得到被选中的值 */
												  var back = $.ajax({url:$(data.elem).attr("data-url")+"?"+$(data.elem).attr("id")+"="+data.value,async:false});
												  var backArray = $.parseJSON(back.responseText);
												  var str = "<option></option>";
												  for(var obj in backArray){
											 		str+="<option>"+backArray[obj]+"</option>";
											      }
												  $("#${column.PROPERTIES_KEY}_div").after("<div id="+id+" style='float:left;width:260px;margin-right:5px'><select>"+str+"</select></div>");
												  form.render('select');
												  console.log($("#ssss").html())
												}); 
											 }
										 </script>
									</c:when>
									<c:when test="${column.PROPERTIES_TYPE =='06'}">
      									<textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor" style="min-width: 800px"></textarea>
									</c:when>
									<c:when test="${column.PROPERTIES_TYPE =='08'}">
										<input type="text" name="${column.PROPERTIES_KEY}" lay-verify="required" style="width:260px;" placeholder="yyyy-mm-dd"  autocomplete="off" placeholder="请输入${column.PROPERTIES_NAME}" class="layui-input" onclick="layui.laydate({elem: this})">
									</c:when>
									<c:when test="${column.PROPERTIES_TYPE =='09'}">
										<input type="file" name="file1" lay-type="file" class="layui-upload-file"> 
									</c:when>
									<c:otherwise>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							</div>
							<a class="layui-btn  layui-btn-primary  layui-btn-small addGroupsInfo" style="float: right;margin-right: 15px;position:static;" data-params="PROP_GROUP=${child.TEMPLATE_ID }">添加属性</a>
						</div>
					</div>
				</c:forEach>
			</fieldset>
			</c:forEach>
			</form>
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
