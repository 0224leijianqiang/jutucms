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
		<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="plugins/layui/layui.js"></script>
	</head>

	<body>
		<div style="margin: 20px;">
			<div class="layui-btn-group">
			
		    <a href="groups_chlidren?type=cus_area" class="layui-btn ${map.type=='cus_area'?'layui-btn-danger':''}">地区管理</a>
		    <a href="groups_chlidren?type=cus_vips" class="layui-btn ${map.type=='cus_vips'?'layui-btn-danger':''}">会员管理</a>
		    <a href="groups_chlidren?type=cus_land" class="layui-btn ${map.type=='cus_land'?'layui-btn-danger':''}">地块管理</a>
		    <a href="groups_chlidren?type=cus_village" class="layui-btn ${map.type=='cus_village'?'layui-btn-danger':''}">村庄管理</a>
		    <a href="groups_chlidren?type=cus_frame" class="layui-btn ${map.type=='cus_frame'?'layui-btn-danger':''}">农场管理</a>
		    <a href="groups_chlidren?type=cus_goods" class="layui-btn ${map.type=='cus_goods'?'layui-btn-danger':''}">产品管理</a>
		    </div>
			<form class="layui-form" action="saveColumns" style="margin-top: 10px;">
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
									<c:when test="${column.column_type =='05'}">
										
										<div style="float: left;margin-right: 10px;width:260px;margin-right:5px" id="${column.column_key}_div">
										<select name="${column.column_key}" lay-verify="" id="${column.column_key}" data-url="${column.url}" lay-filter="${column.column_key}" style="float: left;" >
											<c:forEach items="${column.column_default_value}" var="value" >
												 <option value=""></option>
											</c:forEach>
										 </select>
										 </div>
										 <script type="text/javascript">
											 $(document).ready(function(){
											 	var data = $.ajax({url:"${column.url}",async:false});
											 	var array =  $.parseJSON(data.responseText);
											 	for(var obj in array){
											 		$("#${column.column_key}").append("<option>"+array[obj]+"</option>");
											 	}
											 });
											 layui.use(['form'], function() {
													var form = layui.form();
													initDynamic("${column.column_key}", form)
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
												  $("#${column.column_key}_div").after("<div id="+id+" style='float:left;width:260px;margin-right:5px'><select>"+str+"</select></div>");
												  form.render('select');
												  console.log($("#ssss").html())
												}); 
											 }
										 </script>
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
							<a class="layui-btn  layui-btn-primary  layui-btn-small add_children_info" style="float: right;margin-right: 15px;position:static;" data-params="id=${child.id}&group_type=${var.group_type}">添加属性</a>
						</div>
					</div>
				</c:forEach>
			</fieldset>
			</c:forEach>
			</form>
		</div>
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
						area: ['600px', '500px'],btn: ['提交', '重置']
				  	,yes: function(index, layero){
					    //按钮【按钮一】的回调
						/* $(layero.find(".layui-form")).submit();  */
						var body = top.layer.getChildFrame('body', index);
						var iframeWin = top[layero.find('iframe')[0]['name']];
						iframeWin.submitForm();
						layer.close(index);
						location.reload();
						}
					});
			});
		});
		</script>
	</body>
</html>