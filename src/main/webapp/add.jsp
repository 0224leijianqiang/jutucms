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
    <link href="cs/styles.css" type="text/css" rel="stylesheet"/>
    <link href="css/styles.css" type="text/css" rel="stylesheet"/>
    <link href="css/styles_1.css" type="text/css" rel="stylesheet"/>
    <link href="css/styles_2.css" type="text/css" rel="stylesheet"/>
  </head>
  
  <body>
	<%--   <form action="frame/save" method="post">
			<table>
				<tr>
					<td>所属组</td>
					<td>
						<select name="groupId" >
							<c:forEach items="${list}" var="group">
								<option ${map.name==group.name?'selected':''}>${group.name }</option>
							</c:forEach>
						</select>
						<a href="frame/addGroupChild">添加组</a>
					</td>
				</tr>
				<tr>
					<td>属性名</td>
					<td><input name="field_name"/></td>
				</tr>
				<tr>
					<td>属性描述</td>
					<td><input name="field_info"/></td>
				</tr>
				<tr>
					<td>类型</td>
					<td>
						<select name="field_type">
							<option>文本值</option>
							<option>单选框</option>
							<option>复选框</option>
							<option>文本域</option>
							<option>下拉框</option>
							<option>标签</option>
							<option>图片</option>
							<option>附件</option>
							<option>日期</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>备选值</td>
					<td><input name="field_value"  placeholder="多个值用逗号分隔开"/></td>
				</tr>
				<tr>
					<td>mysql映射属性</td>
					<td>
						<select name="fmysql">
							<c:forEach items="${columns }" var="c">
								<option>${c.CLOUMN_NAME }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="保存"/></td>
				</tr>
				
			</table>
	  </form> --%>
	     <div id="u8544_state1" class="panel_state" data-label="会员字段" >
          <div id="u8544_state1_content" class="panel_state_content">

            <!-- Unnamed (Group) -->
            <div id="u9096" class="ax_default" data-width="1680" data-height="1827">

              <!-- Unnamed (Table) -->
              <div id="u9097" class="ax_default">

                <!-- Unnamed (Table Cell) -->
                <div id="u9098" class="ax_default table_cell">
                  <img id="u9098_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9099" class="text">
                    <p><span>用户名</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9100" class="ax_default table_cell">
                  <img id="u9100_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9101" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9102" class="ax_default table_cell">
                  <img id="u9102_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9103" class="text">
                    <p><span>昵称</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9104" class="ax_default table_cell">
                  <img id="u9104_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9105" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9106" class="ax_default table_cell">
                  <img id="u9106_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9107" class="text">
                    <p><span>真实姓名</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9108" class="ax_default table_cell">
                  <img id="u9108_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9109" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9110" class="ax_default table_cell">
                  <img id="u9110_img" class="img " src="images/会员添加/u7767.png"/>
                  <!-- Unnamed () -->
                  <div id="u9111" class="text">
                    <p><span>性别</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9112" class="ax_default table_cell">
                  <img id="u9112_img" class="img " src="images/会员添加/u7769.png"/>
                  <!-- Unnamed () -->
                  <div id="u9113" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9114" class="ax_default table_cell">
                  <img id="u9114_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9115" class="text">
                    <p><span>出生年月</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9116" class="ax_default table_cell">
                  <img id="u9116_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9117" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9118" class="ax_default table_cell">
                  <img id="u9118_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9119" class="text">
                    <p><span>头像</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9120" class="ax_default table_cell">
                  <img id="u9120_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9121" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9122" class="ax_default table_cell">
                  <img id="u9122_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9123" class="text">
                    <p><span>地区</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9124" class="ax_default table_cell">
                  <img id="u9124_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9125" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9126" class="ax_default table_cell">
                  <img id="u9126_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9127" class="text">
                    <p><span>用户类型</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9128" class="ax_default table_cell">
                  <img id="u9128_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9129" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9130" class="ax_default table_cell">
                  <img id="u9130_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9131" class="text">
                    <p><span>用户组</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9132" class="ax_default table_cell">
                  <img id="u9132_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9133" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9134" class="ax_default table_cell">
                  <img id="u9134_img" class="img " src="images/会员添加/u7791.png"/>
                  <!-- Unnamed () -->
                  <div id="u9135" class="text">
                    <p><span>是否客户</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9136" class="ax_default table_cell">
                  <img id="u9136_img" class="img " src="images/会员添加/u7793.png"/>
                  <!-- Unnamed () -->
                  <div id="u9137" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9138" class="ax_default" data-width="500" data-height="30">

                <!-- Unnamed (Rectangle) -->
                <div id="u9139" class="ax_default box_2">
                  <div id="u9139_div" class=""></div>
                  <!-- Unnamed () -->
                  <div id="u9140" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Text Field) -->
                <div id="u9141" class="ax_default text_field">
                  <input id="u9141_input" type="text" value=""/>
                </div>
              </div>

              <!-- 提交成功 (Group) -->
              <div id="u9142" class="ax_default ax_default_hidden" data-label="提交成功" style="display:none; visibility: hidden" data-width="0" data-height="0">

                <!-- Unnamed (Rectangle) -->
                <div id="u9143" class="ax_default box_2">
                  <div id="u9143_div" class=""></div>
                  <!-- Unnamed () -->
                  <div id="u9144" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Shape) -->
                <div id="u9145" class="ax_default icon1">
                  <img id="u9145_img" class="img " src="images/地区库/u455.png"/>
                  <!-- Unnamed () -->
                  <div id="u9146" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Rectangle) -->
                <div id="u9147" class="ax_default _三级标题">
                  <div id="u9147_div" class=""></div>
                  <!-- Unnamed () -->
                  <div id="u9148" class="text">
                    <p><span>恭喜，保存成功！</span></p>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9149" class="ax_default" data-width="500" data-height="30">

                <!-- Unnamed (Rectangle) -->
                <div id="u9150" class="ax_default box_2">
                  <div id="u9150_div" class=""></div>
                  <!-- Unnamed () -->
                  <div id="u9151" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Text Field) -->
                <div id="u9152" class="ax_default text_field">
                  <input id="u9152_input" type="text" value=""/>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9153" class="ax_default" data-width="500" data-height="30">

                <!-- Unnamed (Rectangle) -->
                <div id="u9154" class="ax_default box_2">
                  <div id="u9154_div" class=""></div>
                  <!-- Unnamed () -->
                  <div id="u9155" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Text Field) -->
                <div id="u9156" class="ax_default text_field">
                  <input id="u9156_input" type="text" value=""/>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9157" class="ax_default" data-width="110" data-height="50">

                <!-- Male (Group) -->
                <div id="u9158" class="ax_default" data-label="Male" selectiongroup="Sex" data-width="50" data-height="25">

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9159" class="ax_default primary_button">
                    <div id="u9159_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9160" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Shape) -->
                  <div id="u9161" class="ax_default icon1">
                    <img id="u9161_img" class="img " src="images/地块添加/u3277.png"/>
                    <!-- Unnamed () -->
                    <div id="u9162" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>
                </div>

                <!-- Fmale (Group) -->
                <div id="u9163" class="ax_default" data-label="Fmale" selectiongroup="Sex" data-width="50" data-height="25">

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9164" class="ax_default primary_button">
                    <div id="u9164_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9165" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Shape) -->
                  <div id="u9166" class="ax_default icon1">
                    <img id="u9166_img" class="img " src="images/地块添加/u3282.png"/>
                    <!-- Unnamed () -->
                    <div id="u9167" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>
                </div>

                <!-- Unnamed (Rectangle) -->
                <div id="u9168" class="ax_default label">
                  <div id="u9168_div" class=""></div>
                  <!-- Unnamed () -->
                  <div id="u9169" class="text">
                    <p><span>男</span></p>
                  </div>
                </div>

                <!-- Unnamed (Rectangle) -->
                <div id="u9170" class="ax_default label">
                  <div id="u9170_div" class=""></div>
                  <!-- Unnamed () -->
                  <div id="u9171" class="text">
                    <p><span>女</span></p>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9172" class="ax_default" data-width="500" data-height="176">

                <!-- Unnamed (Group) -->
                <div id="u9173" class="ax_default" data-width="500" data-height="30">

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9174" class="ax_default box_2">
                    <div id="u9174_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9175" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Text Field) -->
                  <div id="u9176" class="ax_default text_field">
                    <input id="u9176_input" type="file" value=""/>
                  </div>
                </div>

                <!-- Unnamed (Group) -->
                <div id="u9177" class="ax_default" data-width="491" data-height="22">

                  <!-- ProvinceList (Droplist) -->
                  <div id="u9178" class="ax_default _下拉列表框" data-label="ProvinceList">
                    <select id="u9178_input">
                      <option selected value="请选择省市">请选择省市</option>
                      <option value="北京市">北京市</option>
                      <option value="上海市">上海市</option>
                      <option value="天津市">天津市</option>
                      <option value="重庆市">重庆市</option>
                      <option value="宁夏">宁夏</option>
                      <option value="内蒙古">内蒙古</option>
                      <option value="安徽省">安徽省</option>
                      <option value="福建省">福建省</option>
                      <option value="甘肃省">甘肃省</option>
                      <option value="广东省">广东省</option>
                      <option value="广西省">广西省</option>
                      <option value="贵州省">贵州省</option>
                      <option value="海南省">海南省</option>
                      <option value="河北省">河北省</option>
                      <option value="河南省">河南省</option>
                      <option value="黑龙江">黑龙江</option>
                      <option value="湖北省">湖北省</option>
                      <option value="湖南省">湖南省</option>
                      <option value="吉林省">吉林省</option>
                      <option value="江苏省">江苏省</option>
                      <option value="江西省">江西省</option>
                      <option value="辽宁省">辽宁省</option>
                      <option value="青海省">青海省</option>
                      <option value="山东省">山东省</option>
                      <option value="山西省">山西省</option>
                      <option value="陕西省">陕西省</option>
                      <option value="四川省">四川省</option>
                      <option value="云南省">云南省</option>
                      <option value="浙江省">浙江省</option>
                      <option value="西藏">西藏</option>
                      <option value="新疆">新疆</option>
                      <option value="港澳台">港澳台</option>
                    </select>
                  </div>

                  <!-- CityPanel (Dynamic Panel) -->
                  <div id="u9179" class="ax_default" data-label="CityPanel">
                    <div id="u9179_state0" class="panel_state" data-label="请选择省份">
                      <div id="u9179_state0_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9180" class="ax_default _下拉列表框">
                          <select id="u9180_input">
                            <option selected value="全部">全部</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state1" class="panel_state" data-label="北京市" style="display:none; visibility: hidden;">
                      <div id="u9179_state1_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9181" class="ax_default _下拉列表框">
                          <select id="u9181_input">
                            <option selected value="全部">全部</option>
                            <option value="东城区">东城区</option>
                            <option value="西城区">西城区</option>
                            <option value="崇文区">崇文区</option>
                            <option value="宣武区">宣武区</option>
                            <option value="朝阳区">朝阳区</option>
                            <option value="丰台区">丰台区</option>
                            <option value="石景山区">石景山区</option>
                            <option value="海淀区">海淀区</option>
                            <option value="门头沟区">门头沟区</option>
                            <option value="房山区">房山区</option>
                            <option value="通州区">通州区</option>
                            <option value="顺义区">顺义区</option>
                            <option value="昌平区">昌平区</option>
                            <option value="大兴区">大兴区</option>
                            <option value="平谷区">平谷区</option>
                            <option value="怀柔区">怀柔区</option>
                            <option value="密云县">密云县</option>
                            <option value="延庆县">延庆县</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state2" class="panel_state" data-label="上海市" style="display:none; visibility: hidden;">
                      <div id="u9179_state2_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9182" class="ax_default _下拉列表框">
                          <select id="u9182_input">
                            <option selected value="全部">全部</option>
                            <option value="浦东新区">浦东新区</option>
                            <option value="徐汇区">徐汇区</option>
                            <option value="黄浦区">黄浦区</option>
                            <option value="杨浦区">杨浦区</option>
                            <option value="虹口区">虹口区</option>
                            <option value="闵行区">闵行区</option>
                            <option value="长宁区">长宁区</option>
                            <option value="普陀区">普陀区</option>
                            <option value="宝山区">宝山区</option>
                            <option value="静安区">静安区</option>
                            <option value="闸北区">闸北区</option>
                            <option value="卢湾区">卢湾区</option>
                            <option value="松江区">松江区</option>
                            <option value="嘉定区">嘉定区</option>
                            <option value="南汇区">南汇区</option>
                            <option value="金山区">金山区</option>
                            <option value="青浦区">青浦区</option>
                            <option value="奉贤区">奉贤区</option>
                            <option value="崇明县">崇明县</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state3" class="panel_state" data-label="天津市" style="display:none; visibility: hidden;">
                      <div id="u9179_state3_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9183" class="ax_default _下拉列表框">
                          <select id="u9183_input">
                            <option selected value="全部">全部</option>
                            <option value="和平区">和平区</option>
                            <option value="河东区">河东区</option>
                            <option value="河西区">河西区</option>
                            <option value="南开区">南开区</option>
                            <option value="河北区">河北区</option>
                            <option value="红桥区">红桥区</option>
                            <option value="塘沽区">塘沽区</option>
                            <option value="汉沽区">汉沽区</option>
                            <option value="大港区">大港区</option>
                            <option value="东丽区">东丽区</option>
                            <option value="西青区">西青区</option>
                            <option value="津南区">津南区</option>
                            <option value="北辰区">北辰区</option>
                            <option value="武清区">武清区</option>
                            <option value="宝坻区">宝坻区</option>
                            <option value="宁河县">宁河县</option>
                            <option value="静海县">静海县</option>
                            <option value="蓟县">蓟县</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state4" class="panel_state" data-label="重庆市" style="display:none; visibility: hidden;">
                      <div id="u9179_state4_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9184" class="ax_default _下拉列表框">
                          <select id="u9184_input">
                            <option selected value="全部">全部</option>
                            <option value="万州区">万州区</option>
                            <option value="涪陵区">涪陵区</option>
                            <option value="渝中区">渝中区</option>
                            <option value="大渡口区">大渡口区</option>
                            <option value="江北区">江北区</option>
                            <option value="沙坪坝区">沙坪坝区</option>
                            <option value="九龙坡区">九龙坡区</option>
                            <option value="南岸区">南岸区</option>
                            <option value="北碚区">北碚区</option>
                            <option value="万盛区">万盛区</option>
                            <option value="双桥区">双桥区</option>
                            <option value="渝北区">渝北区</option>
                            <option value="巴南区">巴南区</option>
                            <option value="长寿县">长寿县</option>
                            <option value="綦江县">綦江县</option>
                            <option value="潼南县">潼南县</option>
                            <option value="铜梁县">铜梁县</option>
                            <option value="大足县">大足县</option>
                            <option value="荣昌县">荣昌县</option>
                            <option value="璧山县">璧山县</option>
                            <option value="梁平县">梁平县</option>
                            <option value="城口县">城口县</option>
                            <option value="丰都县">丰都县</option>
                            <option value="垫江县">垫江县</option>
                            <option value="武隆县">武隆县</option>
                            <option value="忠县">忠县</option>
                            <option value="开县">开县</option>
                            <option value="云阳县">云阳县</option>
                            <option value="奉节县">奉节县</option>
                            <option value="巫山县">巫山县</option>
                            <option value="巫溪县">巫溪县</option>
                            <option value="黔江土家族苗族自治县">黔江土家族苗族自治县</option>
                            <option value="石柱土家族自治县">石柱土家族自治县</option>
                            <option value="秀山土家族苗族自治县">秀山土家族苗族自治县</option>
                            <option value="酉阳土家族苗族自治县">酉阳土家族苗族自治县</option>
                            <option value="彭水苗族土家族自治县">彭水苗族土家族自治县</option>
                            <option value="江津市">江津市</option>
                            <option value="合川市">合川市</option>
                            <option value="永川市">永川市</option>
                            <option value="南川市">南川市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state5" class="panel_state" data-label="宁夏" style="display:none; visibility: hidden;">
                      <div id="u9179_state5_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9185" class="ax_default _下拉列表框">
                          <select id="u9185_input">
                            <option selected value="全部">全部</option>
                            <option value="银川市">银川市</option>
                            <option value="石嘴山市">石嘴山市</option>
                            <option value="吴忠市">吴忠市</option>
                            <option value="固原地区">固原地区</option>
                            <option value="中卫市">中卫市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state6" class="panel_state" data-label="内蒙古" style="display:none; visibility: hidden;">
                      <div id="u9179_state6_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9186" class="ax_default _下拉列表框">
                          <select id="u9186_input">
                            <option selected value="全部">全部</option>
                            <option value="呼和浩特市">呼和浩特市</option>
                            <option value="包头市">包头市</option>
                            <option value="乌海市">乌海市</option>
                            <option value="赤峰市">赤峰市</option>
                            <option value="呼伦贝尔市">呼伦贝尔市</option>
                            <option value="兴安盟">兴安盟</option>
                            <option value="通辽市">通辽市</option>
                            <option value="锡林郭勒盟">锡林郭勒盟</option>
                            <option value="乌兰察布盟">乌兰察布盟</option>
                            <option value="伊克昭盟">伊克昭盟</option>
                            <option value="巴彦淖尔盟">巴彦淖尔盟</option>
                            <option value="阿拉善盟">阿拉善盟</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state7" class="panel_state" data-label="安徽省" style="display:none; visibility: hidden;">
                      <div id="u9179_state7_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9187" class="ax_default _下拉列表框">
                          <select id="u9187_input">
                            <option selected value="全部">全部</option>
                            <option value="合肥市">合肥市</option>
                            <option value="芜湖市">芜湖市</option>
                            <option value="蚌埠市">蚌埠市</option>
                            <option value="淮南市">淮南市</option>
                            <option value="马鞍山市">马鞍山市</option>
                            <option value="淮北市">淮北市</option>
                            <option value="铜陵市">铜陵市</option>
                            <option value="安庆市">安庆市</option>
                            <option value="黄山市">黄山市</option>
                            <option value="滁州市">滁州市</option>
                            <option value="阜阳市">阜阳市</option>
                            <option value="宿州市">宿州市</option>
                            <option value="六安市">六安市</option>
                            <option value="宣城市">宣城市</option>
                            <option value="巢湖市">巢湖市</option>
                            <option value="池州市">池州市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state8" class="panel_state" data-label="福建省" style="display:none; visibility: hidden;">
                      <div id="u9179_state8_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9188" class="ax_default _下拉列表框">
                          <select id="u9188_input">
                            <option selected value="全部">全部</option>
                            <option value="福州市">福州市</option>
                            <option value="厦门市">厦门市</option>
                            <option value="宁德市">宁德市</option>
                            <option value="莆田市">莆田市</option>
                            <option value="泉州市">泉州市</option>
                            <option value="漳州市">漳州市</option>
                            <option value="龙岩">龙岩</option>
                            <option value="三明市">三明市</option>
                            <option value="南平市">南平市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state9" class="panel_state" data-label="甘肃省" style="display:none; visibility: hidden;">
                      <div id="u9179_state9_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9189" class="ax_default _下拉列表框">
                          <select id="u9189_input">
                            <option selected value="全部">全部</option>
                            <option value="兰州市">兰州市</option>
                            <option value="嘉峪关市">嘉峪关市</option>
                            <option value="金昌市">金昌市</option>
                            <option value="白银市">白银市</option>
                            <option value="天水市">天水市</option>
                            <option value="酒泉地区">酒泉地区</option>
                            <option value="张掖地区">张掖地区</option>
                            <option value="武威地区">武威地区</option>
                            <option value="定西地区">定西地区</option>
                            <option value="陇南地区">陇南地区</option>
                            <option value="平凉地区">平凉地区</option>
                            <option value="庆阳地区">庆阳地区</option>
                            <option value="临夏回族自治州">临夏回族自治州</option>
                            <option value="甘南藏族自治州">甘南藏族自治州</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state10" class="panel_state" data-label="广东省" style="display:none; visibility: hidden;">
                      <div id="u9179_state10_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9190" class="ax_default _下拉列表框">
                          <select id="u9190_input">
                            <option selected value="全部">全部</option>
                            <option value="广州市">广州市</option>
                            <option value="韶关市">韶关市</option>
                            <option value="深圳市">深圳市</option>
                            <option value="珠海市">珠海市</option>
                            <option value="汕头市">汕头市</option>
                            <option value="佛山市">佛山市</option>
                            <option value="江门市">江门市</option>
                            <option value="湛江市">湛江市</option>
                            <option value="茂名市">茂名市</option>
                            <option value="肇庆市">肇庆市</option>
                            <option value="惠州市">惠州市</option>
                            <option value="梅州市">梅州市</option>
                            <option value="汕尾市">汕尾市</option>
                            <option value="河源市">河源市</option>
                            <option value="阳江市">阳江市</option>
                            <option value="清远市">清远市</option>
                            <option value="潮州市">潮州市</option>
                            <option value="揭阳市">揭阳市</option>
                            <option value="云浮市">云浮市</option>
                            <option value="东莞市">东莞市</option>
                            <option value="中山市">中山市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state11" class="panel_state" data-label="广西省" style="display:none; visibility: hidden;">
                      <div id="u9179_state11_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9191" class="ax_default _下拉列表框">
                          <select id="u9191_input">
                            <option selected value="全部">全部</option>
                            <option value="南宁市">南宁市</option>
                            <option value="柳州市">柳州市</option>
                            <option value="桂林市">桂林市</option>
                            <option value="梧州市">梧州市</option>
                            <option value="北海市">北海市</option>
                            <option value="防城港市">防城港市</option>
                            <option value="钦州市">钦州市</option>
                            <option value="贵港市">贵港市</option>
                            <option value="玉林市">玉林市</option>
                            <option value="崇左市">崇左市</option>
                            <option value="来宾市">来宾市</option>
                            <option value="贺州市">贺州市</option>
                            <option value="百色市">百色市</option>
                            <option value="河池市">河池市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state12" class="panel_state" data-label="贵州省" style="display:none; visibility: hidden;">
                      <div id="u9179_state12_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9192" class="ax_default _下拉列表框">
                          <select id="u9192_input">
                            <option selected value="全部">全部</option>
                            <option value="贵阳市">贵阳市</option>
                            <option value="六盘水市">六盘水市</option>
                            <option value="遵义市">遵义市</option>
                            <option value="铜仁地区">铜仁地区</option>
                            <option value="黔西南布依族苗族自治州">黔西南布依族苗族自治州</option>
                            <option value="毕节地区">毕节地区</option>
                            <option value="安顺地区">安顺地区</option>
                            <option value="黔东南苗族侗族自治州">黔东南苗族侗族自治州</option>
                            <option value="黔南布依族苗族自治州">黔南布依族苗族自治州</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state13" class="panel_state" data-label="海南省" style="display:none; visibility: hidden;">
                      <div id="u9179_state13_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9193" class="ax_default _下拉列表框">
                          <select id="u9193_input">
                            <option selected value="全部">全部</option>
                            <option value="海口市">海口市</option>
                            <option value="三亚市">三亚市</option>
                            <option value="文昌市">文昌市</option>
                            <option value="万宁市">万宁市</option>
                            <option value="东方市">东方市</option>
                            <option value="定安县">定安县</option>
                            <option value="屯昌县">屯昌县</option>
                            <option value="澄迈县">澄迈县</option>
                            <option value="临高县">临高县</option>
                            <option value="白沙黎族自治县">白沙黎族自治县</option>
                            <option value="昌江黎族自治县">昌江黎族自治县</option>
                            <option value="乐东黎族自治县">乐东黎族自治县</option>
                            <option value="陵水黎族自治县">陵水黎族自治县</option>
                            <option value="保亭黎族苗族自治县">保亭黎族苗族自治县</option>
                            <option value="琼中黎族苗族自治县">琼中黎族苗族自治县</option>
                            <option value="西南中沙群岛办事处">西南中沙群岛办事处</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state14" class="panel_state" data-label="河北省" style="display:none; visibility: hidden;">
                      <div id="u9179_state14_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9194" class="ax_default _下拉列表框">
                          <select id="u9194_input">
                            <option selected value="全部">全部</option>
                            <option value="石家庄市">石家庄市</option>
                            <option value="唐山市">唐山市</option>
                            <option value="秦皇岛市">秦皇岛市</option>
                            <option value="邯郸市">邯郸市</option>
                            <option value="邢台市">邢台市</option>
                            <option value="保定市">保定市</option>
                            <option value="张家口市">张家口市</option>
                            <option value="承德市">承德市</option>
                            <option value="沧州市">沧州市</option>
                            <option value="廊坊市">廊坊市</option>
                            <option value="衡水市">衡水市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state15" class="panel_state" data-label="河南省" style="display:none; visibility: hidden;">
                      <div id="u9179_state15_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9195" class="ax_default _下拉列表框">
                          <select id="u9195_input">
                            <option selected value="全部">全部</option>
                            <option value="郑州市">郑州市</option>
                            <option value="开封市">开封市</option>
                            <option value="洛阳市">洛阳市</option>
                            <option value="平顶山市">平顶山市</option>
                            <option value="安阳市">安阳市</option>
                            <option value="鹤壁市">鹤壁市</option>
                            <option value="新乡市">新乡市</option>
                            <option value="焦作市">焦作市</option>
                            <option value="濮阳市">濮阳市</option>
                            <option value="许昌市">许昌市</option>
                            <option value="漯河市">漯河市</option>
                            <option value="三门峡市">三门峡市</option>
                            <option value="南阳市">南阳市</option>
                            <option value="商丘市">商丘市</option>
                            <option value="信阳市">信阳市</option>
                            <option value="周口市">周口市</option>
                            <option value="济源市">济源市</option>
                            <option value="驻马店地区">驻马店地区</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state16" class="panel_state" data-label="黑龙江" style="display:none; visibility: hidden;">
                      <div id="u9179_state16_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9196" class="ax_default _下拉列表框">
                          <select id="u9196_input">
                            <option selected value="全部">全部</option>
                            <option value="哈尔滨市">哈尔滨市</option>
                            <option value="齐齐哈尔市">齐齐哈尔市</option>
                            <option value="鸡西市">鸡西市</option>
                            <option value="鹤岗市">鹤岗市</option>
                            <option value="双鸭山市">双鸭山市</option>
                            <option value="大庆市">大庆市</option>
                            <option value="伊春市">伊春市</option>
                            <option value="七台河市">七台河市</option>
                            <option value="牡丹江市">牡丹江市</option>
                            <option value="黑河市">黑河市</option>
                            <option value="绥化市">绥化市</option>
                            <option value="大兴安岭地区">大兴安岭地区</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state17" class="panel_state" data-label="湖北省" style="display:none; visibility: hidden;">
                      <div id="u9179_state17_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9197" class="ax_default _下拉列表框">
                          <select id="u9197_input">
                            <option selected value="全部">全部</option>
                            <option value="武汉市">武汉市</option>
                            <option value="黄石市">黄石市</option>
                            <option value="十堰市">十堰市</option>
                            <option value="宜昌市">宜昌市</option>
                            <option value="襄樊市">襄樊市</option>
                            <option value="鄂州市">鄂州市</option>
                            <option value="荆门市">荆门市</option>
                            <option value="孝感市">孝感市</option>
                            <option value="荆州市">荆州市</option>
                            <option value="黄冈市">黄冈市</option>
                            <option value="咸宁市">咸宁市</option>
                            <option value="恩施土家族苗族自治州">恩施土家族苗族自治州</option>
                            <option value="仙桃市">仙桃市</option>
                            <option value="潜江市">潜江市</option>
                            <option value="天门市">天门市</option>
                            <option value="神农架林区">神农架林区</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state18" class="panel_state" data-label="湖南省" style="display:none; visibility: hidden;">
                      <div id="u9179_state18_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9198" class="ax_default _下拉列表框">
                          <select id="u9198_input">
                            <option selected value="全部">全部</option>
                            <option value="长沙市">长沙市</option>
                            <option value="株洲市">株洲市</option>
                            <option value="湘潭市">湘潭市</option>
                            <option value="衡阳市">衡阳市</option>
                            <option value="邵阳市">邵阳市</option>
                            <option value="岳阳市">岳阳市</option>
                            <option value="常德市">常德市</option>
                            <option value="张家界市">张家界市</option>
                            <option value="益阳市">益阳市</option>
                            <option value="郴州市">郴州市</option>
                            <option value="永州市">永州市</option>
                            <option value="怀化市">怀化市</option>
                            <option value="娄底地区">娄底地区</option>
                            <option value="湘西土家族苗族自治州">湘西土家族苗族自治州</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state19" class="panel_state" data-label="吉林省" style="display:none; visibility: hidden;">
                      <div id="u9179_state19_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9199" class="ax_default _下拉列表框">
                          <select id="u9199_input">
                            <option selected value="全部">全部</option>
                            <option value="长春市">长春市</option>
                            <option value="吉林市">吉林市</option>
                            <option value="四平市">四平市</option>
                            <option value="辽源市">辽源市</option>
                            <option value="通化市">通化市</option>
                            <option value="白山市">白山市</option>
                            <option value="松原市">松原市</option>
                            <option value="白城市">白城市</option>
                            <option value="延边朝鲜族自治州">延边朝鲜族自治州</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state20" class="panel_state" data-label="江苏省" style="display:none; visibility: hidden;">
                      <div id="u9179_state20_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9200" class="ax_default _下拉列表框">
                          <select id="u9200_input">
                            <option selected value="全部">全部</option>
                            <option value="南京市">南京市</option>
                            <option value="无锡市">无锡市</option>
                            <option value="徐州市">徐州市</option>
                            <option value="常州市">常州市</option>
                            <option value="苏州市">苏州市</option>
                            <option value="南通市">南通市</option>
                            <option value="连云港市">连云港市</option>
                            <option value="淮阴市">淮阴市</option>
                            <option value="盐城市">盐城市</option>
                            <option value="扬州市">扬州市</option>
                            <option value="镇江市">镇江市</option>
                            <option value="泰州市">泰州市</option>
                            <option value="宿迁市">宿迁市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state21" class="panel_state" data-label="江西省" style="display:none; visibility: hidden;">
                      <div id="u9179_state21_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9201" class="ax_default _下拉列表框">
                          <select id="u9201_input">
                            <option selected value="全部">全部</option>
                            <option value="南昌市">南昌市</option>
                            <option value="景德镇市">景德镇市</option>
                            <option value="萍乡市">萍乡市</option>
                            <option value="九江市">九江市</option>
                            <option value="新余市">新余市</option>
                            <option value="鹰潭市">鹰潭市</option>
                            <option value="赣州市">赣州市</option>
                            <option value="宜春市">宜春市</option>
                            <option value="上饶市">上饶市</option>
                            <option value="吉安市">吉安市</option>
                            <option value="抚州市">抚州市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state22" class="panel_state" data-label="辽宁省" style="display:none; visibility: hidden;">
                      <div id="u9179_state22_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9202" class="ax_default _下拉列表框">
                          <select id="u9202_input">
                            <option selected value="全部">全部</option>
                            <option value="大连市">大连市</option>
                            <option value="鞍山市">鞍山市</option>
                            <option value="抚顺市">抚顺市</option>
                            <option value="本溪市">本溪市</option>
                            <option value="丹东市">丹东市</option>
                            <option value="锦州市">锦州市</option>
                            <option value="营口市">营口市</option>
                            <option value="阜新市">阜新市</option>
                            <option value="辽阳市">辽阳市</option>
                            <option value="盘锦市">盘锦市</option>
                            <option value="铁岭市">铁岭市</option>
                            <option value="朝阳市">朝阳市</option>
                            <option value="葫芦岛市">葫芦岛市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state23" class="panel_state" data-label="青海省" style="display:none; visibility: hidden;">
                      <div id="u9179_state23_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9203" class="ax_default _下拉列表框">
                          <select id="u9203_input">
                            <option selected value="全部">全部</option>
                            <option value="西宁市">西宁市</option>
                            <option value="海东地区">海东地区</option>
                            <option value="海北藏族自治州">海北藏族自治州</option>
                            <option value="黄南藏族自治州">黄南藏族自治州</option>
                            <option value="海南藏族自治州">海南藏族自治州</option>
                            <option value="果洛藏族自治州">果洛藏族自治州</option>
                            <option value="玉树藏族自治州">玉树藏族自治州</option>
                            <option value="海西蒙古族藏族自治州">海西蒙古族藏族自治州</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state24" class="panel_state" data-label="山东省" style="display:none; visibility: hidden;">
                      <div id="u9179_state24_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9204" class="ax_default _下拉列表框">
                          <select id="u9204_input">
                            <option selected value="全部">全部</option>
                            <option value="济南市">济南市</option>
                            <option value="青岛市">青岛市</option>
                            <option value="淄博市">淄博市</option>
                            <option value="枣庄市">枣庄市</option>
                            <option value="东营市">东营市</option>
                            <option value="烟台市">烟台市</option>
                            <option value="潍坊市">潍坊市</option>
                            <option value="济宁市">济宁市</option>
                            <option value="泰安市">泰安市</option>
                            <option value="威海市">威海市</option>
                            <option value="日照市">日照市</option>
                            <option value="莱芜市">莱芜市</option>
                            <option value="临沂市">临沂市</option>
                            <option value="德州市">德州市</option>
                            <option value="聊城市">聊城市</option>
                            <option value="滨州市">滨州市</option>
                            <option value="菏泽市">菏泽市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state25" class="panel_state" data-label="山西省" style="display:none; visibility: hidden;">
                      <div id="u9179_state25_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9205" class="ax_default _下拉列表框">
                          <select id="u9205_input">
                            <option selected value="全部">全部</option>
                            <option value="太原市">太原市</option>
                            <option value="大同市">大同市</option>
                            <option value="阳泉市">阳泉市</option>
                            <option value="长治市">长治市</option>
                            <option value="晋城市">晋城市</option>
                            <option value="朔州市">朔州市</option>
                            <option value="忻州市">忻州市</option>
                            <option value="吕梁市">吕梁市</option>
                            <option value="晋中市">晋中市</option>
                            <option value="临汾市">临汾市</option>
                            <option value="运城市">运城市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state26" class="panel_state" data-label="陕西省" style="display:none; visibility: hidden;">
                      <div id="u9179_state26_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9206" class="ax_default _下拉列表框">
                          <select id="u9206_input">
                            <option selected value="全部">全部</option>
                            <option value="西安市">西安市</option>
                            <option value="铜川市">铜川市</option>
                            <option value="宝鸡市">宝鸡市</option>
                            <option value="咸阳市">咸阳市</option>
                            <option value="渭南市">渭南市</option>
                            <option value="延安市">延安市</option>
                            <option value="汉中市">汉中市</option>
                            <option value="安康地区">安康地区</option>
                            <option value="商洛地区">商洛地区</option>
                            <option value="榆林地区">榆林地区</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state27" class="panel_state" data-label="四川省" style="display:none; visibility: hidden;">
                      <div id="u9179_state27_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9207" class="ax_default _下拉列表框">
                          <select id="u9207_input">
                            <option selected value="全部">全部</option>
                            <option value="成都市">成都市</option>
                            <option value="自贡市">自贡市</option>
                            <option value="攀枝花市">攀枝花市</option>
                            <option value="泸州市">泸州市</option>
                            <option value="德阳市">德阳市</option>
                            <option value="绵阳市">绵阳市</option>
                            <option value="广元市">广元市</option>
                            <option value="遂宁市">遂宁市</option>
                            <option value="内江市">内江市</option>
                            <option value="乐山市">乐山市</option>
                            <option value="南充市">南充市</option>
                            <option value="宜宾市">宜宾市</option>
                            <option value="广安市">广安市</option>
                            <option value="达川地区">达川地区</option>
                            <option value="雅安地区">雅安地区</option>
                            <option value="阿坝藏族羌族自治州">阿坝藏族羌族自治州</option>
                            <option value="甘孜藏族自治州">甘孜藏族自治州</option>
                            <option value="凉山彝族自治州">凉山彝族自治州</option>
                            <option value="巴中地区">巴中地区</option>
                            <option value="眉山地区">眉山地区</option>
                            <option value="资阳地区">资阳地区</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state28" class="panel_state" data-label="云南省" style="display:none; visibility: hidden;">
                      <div id="u9179_state28_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9208" class="ax_default _下拉列表框">
                          <select id="u9208_input">
                            <option selected value="全部">全部</option>
                            <option value="昆明市">昆明市</option>
                            <option value="曲靖市">曲靖市</option>
                            <option value="玉溪市">玉溪市</option>
                            <option value="昭通地区">昭通地区</option>
                            <option value="楚雄彝族自治州">楚雄彝族自治州</option>
                            <option value="红河哈尼族彝族自治州">红河哈尼族彝族自治州</option>
                            <option value="文山壮族苗族自治州">文山壮族苗族自治州</option>
                            <option value="思茅市">思茅市</option>
                            <option value="西双版纳傣族自治州">西双版纳傣族自治州</option>
                            <option value="大理白族自治州">大理白族自治州</option>
                            <option value="保山地区">保山地区</option>
                            <option value="德宏傣族景颇族自治州">德宏傣族景颇族自治州</option>
                            <option value="丽江地区">丽江地区</option>
                            <option value="怒江傈僳族自治州">怒江傈僳族自治州</option>
                            <option value="迪庆藏族自治州">迪庆藏族自治州</option>
                            <option value="临沧地区">临沧地区</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state29" class="panel_state" data-label="浙江省" style="display:none; visibility: hidden;">
                      <div id="u9179_state29_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9209" class="ax_default _下拉列表框">
                          <select id="u9209_input">
                            <option selected value="全部">全部</option>
                            <option value="杭州市">杭州市</option>
                            <option value="宁波市">宁波市</option>
                            <option value="温州市">温州市</option>
                            <option value="嘉兴市">嘉兴市</option>
                            <option value="湖州市">湖州市</option>
                            <option value="绍兴市">绍兴市</option>
                            <option value="金华市">金华市</option>
                            <option value="衢州市">衢州市</option>
                            <option value="舟山市">舟山市</option>
                            <option value="台州市">台州市</option>
                            <option value="丽水市">丽水市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state30" class="panel_state" data-label="西藏" style="display:none; visibility: hidden;">
                      <div id="u9179_state30_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9210" class="ax_default _下拉列表框">
                          <select id="u9210_input">
                            <option selected value="全部">全部</option>
                            <option value="拉萨市">拉萨市</option>
                            <option value="昌都地区">昌都地区</option>
                            <option value="山南地区">山南地区</option>
                            <option value="日喀则地区">日喀则地区</option>
                            <option value="那曲地区">那曲地区</option>
                            <option value="阿里地区">阿里地区</option>
                            <option value="林芝地区">林芝地区</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state31" class="panel_state" data-label="新疆" style="display:none; visibility: hidden;">
                      <div id="u9179_state31_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9211" class="ax_default _下拉列表框">
                          <select id="u9211_input">
                            <option selected value="全部">全部</option>
                            <option value="乌鲁木齐市">乌鲁木齐市</option>
                            <option value="克拉玛依市">克拉玛依市</option>
                            <option value="吐鲁番地区">吐鲁番地区</option>
                            <option value="哈密地区">哈密地区</option>
                            <option value="昌吉回族自治州">昌吉回族自治州</option>
                            <option value="博尔塔拉蒙古自治州">博尔塔拉蒙古自治州</option>
                            <option value="巴音郭楞蒙古自治州">巴音郭楞蒙古自治州</option>
                            <option value="阿克苏地区">阿克苏地区</option>
                            <option value="克孜勒苏柯尔克孜自治州">克孜勒苏柯尔克孜自治州</option>
                            <option value="喀什地区">喀什地区</option>
                            <option value="和田地区">和田地区</option>
                            <option value="伊犁哈萨克自治州">伊犁哈萨克自治州</option>
                            <option value="塔城地区">塔城地区</option>
                            <option value="阿勒泰地区">阿勒泰地区</option>
                            <option value="石河子市">石河子市</option>
                            <option value="阿拉尔市">阿拉尔市</option>
                            <option value="图木舒克市">图木舒克市</option>
                            <option value="五家渠市">五家渠市</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div id="u9179_state32" class="panel_state" data-label="港澳台" style="display:none; visibility: hidden;">
                      <div id="u9179_state32_content" class="panel_state_content">

                        <!-- Unnamed (Droplist) -->
                        <div id="u9212" class="ax_default _下拉列表框">
                          <select id="u9212_input">
                            <option selected value="全部">全部</option>
                            <option value="香港">香港</option>
                            <option value="台湾">台湾</option>
                            <option value="澳门">澳门</option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Unnamed (Group) -->
                <div id="u9213" class="ax_default" data-width="270" data-height="25">

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9214" class="ax_default button selected" selectiongroup="Type">
                    <div id="u9214_div" class="selected"></div>
                    <!-- Unnamed () -->
                    <div id="u9215" class="text">
                      <p><span>类别</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9216" class="ax_default button" selectiongroup="Type">
                    <div id="u9216_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9217" class="text">
                      <p><span>类别1</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9218" class="ax_default button" selectiongroup="Type">
                    <div id="u9218_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9219" class="text">
                      <p><span>类别2</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9220" class="ax_default button" selectiongroup="Type">
                    <div id="u9220_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9221" class="text">
                      <p><span>类别3</span></p>
                    </div>
                  </div>
                </div>

                <!-- Unnamed (Group) -->
                <div id="u9222" class="ax_default" data-width="270" data-height="25">

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9223" class="ax_default button selected" selectiongroup="Type">
                    <div id="u9223_div" class="selected"></div>
                    <!-- Unnamed () -->
                    <div id="u9224" class="text">
                      <p><span>组</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9225" class="ax_default button" selectiongroup="Type">
                    <div id="u9225_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9226" class="text">
                      <p><span>组1</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9227" class="ax_default button" selectiongroup="Type">
                    <div id="u9227_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9228" class="text">
                      <p><span>组2</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9229" class="ax_default button" selectiongroup="Type">
                    <div id="u9229_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9230" class="text">
                      <p><span>组3</span></p>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Rectangle) -->
              <div id="u9231" class="ax_default box_2">
                <div id="u9231_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u9232" class="text">
                  <p><span>基本信息</span></p>
                </div>
              </div>

              <!-- Unnamed (Radio Button) -->
              <div id="u9233" class="ax_default radio_button">
                <label for="u9233_input">
                  <!-- Unnamed () -->
                  <div id="u9234" class="text">
                    <p><span>&nbsp;是</span></p>
                  </div>
                </label>
                <input id="u9233_input" type="radio" value="radio" name="u9233"/>
              </div>

              <!-- Unnamed (Radio Button) -->
              <div id="u9235" class="ax_default radio_button">
                <label for="u9235_input">
                  <!-- Unnamed () -->
                  <div id="u9236" class="text">
                    <p><span>&nbsp;否</span></p>
                  </div>
                </label>
                <input id="u9235_input" type="radio" value="radio" name="u9235"/>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9237" class="ax_default" data-width="249" data-height="30">

                <!-- SelectItemGroup (Group) -->
                <div id="u9238" class="ax_default ax_default_hidden" data-label="SelectItemGroup" style="display:none; visibility: hidden" data-width="0" data-height="0">

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9239" class="ax_default box_2">
                    <div id="u9239_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9240" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Shape) -->
                  <div id="u9241" class="ax_default icon">
                    <img id="u9241_img" class="img " src="images/地块添加/u2277.png"/>
                    <!-- Unnamed () -->
                    <div id="u9242" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9243" class="ax_default label">
                    <div id="u9243_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9244" class="text">
                      <p><span>2016年6月</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Shape) -->
                  <div id="u9245" class="ax_default icon">
                    <img id="u9245_img" class="img " src="images/地块添加/u2281.png"/>
                    <!-- Unnamed () -->
                    <div id="u9246" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9247" class="ax_default label">
                    <div id="u9247_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9248" class="text">
                      <p><span>一</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9249" class="ax_default label">
                    <div id="u9249_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9250" class="text">
                      <p><span>二</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9251" class="ax_default label">
                    <div id="u9251_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9252" class="text">
                      <p><span>三</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9253" class="ax_default label">
                    <div id="u9253_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9254" class="text">
                      <p><span>四</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9255" class="ax_default label">
                    <div id="u9255_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9256" class="text">
                      <p><span>五</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9257" class="ax_default label">
                    <div id="u9257_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9258" class="text">
                      <p><span>六</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9259" class="ax_default label">
                    <div id="u9259_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9260" class="text">
                      <p><span>日</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9261" class="ax_default box_2 selected" selectiongroup="DateValue">
                    <div id="u9261_div" class="selected"></div>
                    <!-- Unnamed () -->
                    <div id="u9262" class="text">
                      <p><span>1</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9263" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9263_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9264" class="text">
                      <p><span>5</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9265" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9265_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9266" class="text">
                      <p><span>2</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9267" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9267_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9268" class="text">
                      <p><span>3</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9269" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9269_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9270" class="text">
                      <p><span>4</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9271" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9271_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9272" class="text">
                      <p><span>8</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9273" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9273_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9274" class="text">
                      <p><span>12</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9275" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9275_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9276" class="text">
                      <p><span>9</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9277" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9277_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9278" class="text">
                      <p><span>10</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9279" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9279_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9280" class="text">
                      <p><span>11</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9281" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9281_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9282" class="text">
                      <p><span>15</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9283" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9283_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9284" class="text">
                      <p><span>19</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9285" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9285_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9286" class="text">
                      <p><span>16</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9287" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9287_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9288" class="text">
                      <p><span>17</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9289" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9289_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9290" class="text">
                      <p><span>18</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9291" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9291_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9292" class="text">
                      <p><span>22</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9293" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9293_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9294" class="text">
                      <p><span>26</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9295" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9295_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9296" class="text">
                      <p><span>23</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9297" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9297_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9298" class="text">
                      <p><span>24</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9299" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9299_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9300" class="text">
                      <p><span>25</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9301" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9301_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9302" class="text">
                      <p><span>7</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9303" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9303_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9304" class="text">
                      <p><span>6</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9305" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9305_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9306" class="text">
                      <p><span>14</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9307" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9307_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9308" class="text">
                      <p><span>13</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9309" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9309_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9310" class="text">
                      <p><span>21</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9311" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9311_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9312" class="text">
                      <p><span>20</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9313" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9313_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9314" class="text">
                      <p><span>29</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9315" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9315_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9316" class="text">
                      <p><span>30</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9317" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9317_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9318" class="text">
                      <p><span>28</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9319" class="ax_default box_2" selectiongroup="DateValue">
                    <div id="u9319_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9320" class="text">
                      <p><span>27</span></p>
                    </div>
                  </div>
                </div>

                <!-- FromGroup (Group) -->
                <div id="u9321" class="ax_default" data-label="FromGroup" data-width="249" data-height="30">

                  <!-- SelectBox (Rectangle) -->
                  <div id="u9322" class="ax_default box_2" data-label="SelectBox">
                    <div id="u9322_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9323" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- DateText (Paragraph) -->
                  <div id="u9324" class="ax_default _文本段落" data-label="DateText">
                    <img id="u9324_img" class="img " src="images/地块添加/datetext_u2360.png"/>
                    <!-- Unnamed () -->
                    <div id="u9325" class="text">
                      <p><span>成交时间</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Shape) -->
                  <div id="u9326" class="ax_default icon">
                    <img id="u9326_img" class="img " src="images/地块添加/u2362.png"/>
                    <!-- Unnamed () -->
                    <div id="u9327" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Rectangle) -->
              <div id="u9328" class="ax_default box_2">
                <div id="u9328_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u9329" class="text">
                  <p><span>扩展信息</span></p>
                </div>
              </div>

              <!-- Unnamed (Table) -->
              <div id="u9330" class="ax_default">

                <!-- Unnamed (Table Cell) -->
                <div id="u9331" class="ax_default table_cell">
                  <img id="u9331_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9332" class="text">
                    <p><span>民族</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9333" class="ax_default table_cell">
                  <img id="u9333_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9334" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9335" class="ax_default table_cell">
                  <img id="u9335_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9336" class="text">
                    <p><span>学历</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9337" class="ax_default table_cell">
                  <img id="u9337_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9338" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9339" class="ax_default table_cell">
                  <img id="u9339_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9340" class="text">
                    <p><span>婚姻</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9341" class="ax_default table_cell">
                  <img id="u9341_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9342" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9343" class="ax_default table_cell">
                  <img id="u9343_img" class="img " src="images/会员添加/u8004.png"/>
                  <!-- Unnamed () -->
                  <div id="u9344" class="text">
                    <p><span>关系圈</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9345" class="ax_default table_cell">
                  <img id="u9345_img" class="img " src="images/会员添加/u8006.png"/>
                  <!-- Unnamed () -->
                  <div id="u9346" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9347" class="ax_default" data-width="348" data-height="18">

                <!-- Unnamed (Radio Button) -->
                <div id="u9348" class="ax_default radio_button">
                  <label for="u9348_input">
                    <!-- Unnamed () -->
                    <div id="u9349" class="text">
                      <p><span>&nbsp;未婚</span></p>
                    </div>
                  </label>
                  <input id="u9348_input" type="radio" value="radio" name="u9348"/>
                </div>

                <!-- Unnamed (Radio Button) -->
                <div id="u9350" class="ax_default radio_button">
                  <label for="u9350_input">
                    <!-- Unnamed () -->
                    <div id="u9351" class="text">
                      <p><span>&nbsp;已婚</span></p>
                    </div>
                  </label>
                  <input id="u9350_input" type="radio" value="radio" name="u9350"/>
                </div>

                <!-- Unnamed (Radio Button) -->
                <div id="u9352" class="ax_default radio_button">
                  <label for="u9352_input">
                    <!-- Unnamed () -->
                    <div id="u9353" class="text">
                      <p><span>&nbsp;离异</span></p>
                    </div>
                  </label>
                  <input id="u9352_input" type="radio" value="radio" name="u9352"/>
                </div>

                <!-- Unnamed (Radio Button) -->
                <div id="u9354" class="ax_default radio_button">
                  <label for="u9354_input">
                    <!-- Unnamed () -->
                    <div id="u9355" class="text">
                      <p><span>&nbsp;丧偶</span></p>
                    </div>
                  </label>
                  <input id="u9354_input" type="radio" value="radio" name="u9354"/>
                </div>

                <!-- Unnamed (Radio Button) -->
                <div id="u9356" class="ax_default radio_button">
                  <label for="u9356_input">
                    <!-- Unnamed () -->
                    <div id="u9357" class="text">
                      <p><span>&nbsp;再婚</span></p>
                    </div>
                  </label>
                  <input id="u9356_input" type="radio" value="radio" name="u9356"/>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9358" class="ax_default" data-width="606" data-height="117">

                <!-- Unnamed (Group) -->
                <div id="u9359" class="ax_default" data-width="500" data-height="30">

                  <!-- Unnamed (Group) -->
                  <div id="u9360" class="ax_default" data-width="183" data-height="30">

                    <!-- Unnamed (Rectangle) -->
                    <div id="u9361" class="ax_default box_2">
                      <div id="u9361_div" class=""></div>
                      <!-- Unnamed () -->
                      <div id="u9362" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Text Field) -->
                    <div id="u9363" class="ax_default text_field">
                      <input id="u9363_input" type="text" value=""/>
                    </div>
                  </div>

                  <!-- Unnamed (Group) -->
                  <div id="u9364" class="ax_default" data-width="183" data-height="30">

                    <!-- Unnamed (Rectangle) -->
                    <div id="u9365" class="ax_default box_2">
                      <div id="u9365_div" class=""></div>
                      <!-- Unnamed () -->
                      <div id="u9366" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Text Field) -->
                    <div id="u9367" class="ax_default text_field">
                      <input id="u9367_input" type="text" value=""/>
                    </div>
                  </div>

                  <!-- Unnamed (Group) -->
                  <div id="u9368" class="ax_default" data-width="111" data-height="30">

                    <!-- SelectItemGroup (Group) -->
                    <div id="u9369" class="ax_default ax_default_hidden" data-label="SelectItemGroup" style="display:none; visibility: hidden" data-width="0" data-height="0">

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9370" class="ax_default box_2">
                        <div id="u9370_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9371" class="text" style="display:none; visibility: hidden">
                          <p><span></span></p>
                        </div>
                      </div>

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9372" class="ax_default box_2" selectiongroup="SelectItem">
                        <div id="u9372_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9373" class="text">
                          <p><span>父母</span></p>
                        </div>
                      </div>

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9374" class="ax_default box_2" selectiongroup="SelectItem">
                        <div id="u9374_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9375" class="text">
                          <p><span>兄弟</span></p>
                        </div>
                      </div>

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9376" class="ax_default box_2" selectiongroup="SelectItem">
                        <div id="u9376_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9377" class="text">
                          <p><span>……</span></p>
                        </div>
                      </div>
                    </div>

                    <!-- SelectBoxGroup (Group) -->
                    <div id="u9378" class="ax_default" data-label="SelectBoxGroup" data-width="111" data-height="30">

                      <!-- SelectBox (Rectangle) -->
                      <div id="u9379" class="ax_default box_2" data-label="SelectBox">
                        <div id="u9379_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9380" class="text">
                          <p><span>请选择...</span></p>
                        </div>
                      </div>

                      <!-- ArrowDown (Shape) -->
                      <div id="u9381" class="ax_default icon1" data-label="ArrowDown">
                        <img id="u9381_img" class="img " src="images/地区编辑_添加/arrowdown_u1037.png"/>
                        <!-- Unnamed () -->
                        <div id="u9382" class="text" style="display:none; visibility: hidden">
                          <p><span></span></p>
                        </div>
                      </div>

                      <!-- ArrowUp (Shape) -->
                      <div id="u9383" class="ax_default icon1 ax_default_hidden" data-label="ArrowUp" style="display:none; visibility: hidden">
                        <img id="u9383_img" class="img " src="images/地区编辑_添加/arrowup_u661.png"/>
                        <!-- Unnamed () -->
                        <div id="u9384" class="text" style="display:none; visibility: hidden">
                          <p><span></span></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Unnamed (Rectangle) -->
                <div id="u9385" class="ax_default primary_button">
                  <div id="u9385_div" class=""></div>
                  <!-- Unnamed () -->
                  <div id="u9386" class="text">
                    <p><span>+ 添加一项</span></p>
                  </div>
                </div>

                <!-- Unnamed (Group) -->
                <div id="u9387" class="ax_default" data-width="500" data-height="30">

                  <!-- Unnamed (Group) -->
                  <div id="u9388" class="ax_default" data-width="183" data-height="30">

                    <!-- Unnamed (Rectangle) -->
                    <div id="u9389" class="ax_default box_2">
                      <div id="u9389_div" class=""></div>
                      <!-- Unnamed () -->
                      <div id="u9390" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Text Field) -->
                    <div id="u9391" class="ax_default text_field">
                      <input id="u9391_input" type="text" value=""/>
                    </div>
                  </div>

                  <!-- Unnamed (Group) -->
                  <div id="u9392" class="ax_default" data-width="183" data-height="30">

                    <!-- Unnamed (Rectangle) -->
                    <div id="u9393" class="ax_default box_2">
                      <div id="u9393_div" class=""></div>
                      <!-- Unnamed () -->
                      <div id="u9394" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Text Field) -->
                    <div id="u9395" class="ax_default text_field">
                      <input id="u9395_input" type="text" value=""/>
                    </div>
                  </div>

                  <!-- Unnamed (Group) -->
                  <div id="u9396" class="ax_default" data-width="111" data-height="30">

                    <!-- SelectItemGroup (Group) -->
                    <div id="u9397" class="ax_default ax_default_hidden" data-label="SelectItemGroup" style="display:none; visibility: hidden" data-width="0" data-height="0">

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9398" class="ax_default box_2">
                        <div id="u9398_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9399" class="text" style="display:none; visibility: hidden">
                          <p><span></span></p>
                        </div>
                      </div>

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9400" class="ax_default box_2" selectiongroup="SelectItem">
                        <div id="u9400_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9401" class="text">
                          <p><span>父母</span></p>
                        </div>
                      </div>

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9402" class="ax_default box_2" selectiongroup="SelectItem">
                        <div id="u9402_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9403" class="text">
                          <p><span>兄弟</span></p>
                        </div>
                      </div>

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9404" class="ax_default box_2" selectiongroup="SelectItem">
                        <div id="u9404_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9405" class="text">
                          <p><span>……</span></p>
                        </div>
                      </div>
                    </div>

                    <!-- SelectBoxGroup (Group) -->
                    <div id="u9406" class="ax_default" data-label="SelectBoxGroup" data-width="111" data-height="30">

                      <!-- SelectBox (Rectangle) -->
                      <div id="u9407" class="ax_default box_2" data-label="SelectBox">
                        <div id="u9407_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9408" class="text">
                          <p><span>请选择...</span></p>
                        </div>
                      </div>

                      <!-- ArrowDown (Shape) -->
                      <div id="u9409" class="ax_default icon1" data-label="ArrowDown">
                        <img id="u9409_img" class="img " src="images/地区编辑_添加/arrowdown_u1037.png"/>
                        <!-- Unnamed () -->
                        <div id="u9410" class="text" style="display:none; visibility: hidden">
                          <p><span></span></p>
                        </div>
                      </div>

                      <!-- ArrowUp (Shape) -->
                      <div id="u9411" class="ax_default icon1 ax_default_hidden" data-label="ArrowUp" style="display:none; visibility: hidden">
                        <img id="u9411_img" class="img " src="images/地区编辑_添加/arrowup_u661.png"/>
                        <!-- Unnamed () -->
                        <div id="u9412" class="text" style="display:none; visibility: hidden">
                          <p><span></span></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Unnamed (Group) -->
                <div id="u9413" class="ax_default" data-width="500" data-height="30">

                  <!-- Unnamed (Group) -->
                  <div id="u9414" class="ax_default" data-width="183" data-height="30">

                    <!-- Unnamed (Rectangle) -->
                    <div id="u9415" class="ax_default box_2">
                      <div id="u9415_div" class=""></div>
                      <!-- Unnamed () -->
                      <div id="u9416" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Text Field) -->
                    <div id="u9417" class="ax_default text_field">
                      <input id="u9417_input" type="text" value=""/>
                    </div>
                  </div>

                  <!-- Unnamed (Group) -->
                  <div id="u9418" class="ax_default" data-width="183" data-height="30">

                    <!-- Unnamed (Rectangle) -->
                    <div id="u9419" class="ax_default box_2">
                      <div id="u9419_div" class=""></div>
                      <!-- Unnamed () -->
                      <div id="u9420" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Text Field) -->
                    <div id="u9421" class="ax_default text_field">
                      <input id="u9421_input" type="text" value=""/>
                    </div>
                  </div>

                  <!-- Unnamed (Group) -->
                  <div id="u9422" class="ax_default" data-width="111" data-height="30">

                    <!-- SelectItemGroup (Group) -->
                    <div id="u9423" class="ax_default ax_default_hidden" data-label="SelectItemGroup" style="display:none; visibility: hidden" data-width="0" data-height="0">

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9424" class="ax_default box_2">
                        <div id="u9424_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9425" class="text" style="display:none; visibility: hidden">
                          <p><span></span></p>
                        </div>
                      </div>

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9426" class="ax_default box_2" selectiongroup="SelectItem">
                        <div id="u9426_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9427" class="text">
                          <p><span>父母</span></p>
                        </div>
                      </div>

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9428" class="ax_default box_2" selectiongroup="SelectItem">
                        <div id="u9428_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9429" class="text">
                          <p><span>兄弟</span></p>
                        </div>
                      </div>

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9430" class="ax_default box_2" selectiongroup="SelectItem">
                        <div id="u9430_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9431" class="text">
                          <p><span>……</span></p>
                        </div>
                      </div>
                    </div>

                    <!-- SelectBoxGroup (Group) -->
                    <div id="u9432" class="ax_default" data-label="SelectBoxGroup" data-width="111" data-height="30">

                      <!-- SelectBox (Rectangle) -->
                      <div id="u9433" class="ax_default box_2" data-label="SelectBox">
                        <div id="u9433_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9434" class="text">
                          <p><span>请选择...</span></p>
                        </div>
                      </div>

                      <!-- ArrowDown (Shape) -->
                      <div id="u9435" class="ax_default icon1" data-label="ArrowDown">
                        <img id="u9435_img" class="img " src="images/地区编辑_添加/arrowdown_u1037.png"/>
                        <!-- Unnamed () -->
                        <div id="u9436" class="text" style="display:none; visibility: hidden">
                          <p><span></span></p>
                        </div>
                      </div>

                      <!-- ArrowUp (Shape) -->
                      <div id="u9437" class="ax_default icon1 ax_default_hidden" data-label="ArrowUp" style="display:none; visibility: hidden">
                        <img id="u9437_img" class="img " src="images/地区编辑_添加/arrowup_u661.png"/>
                        <!-- Unnamed () -->
                        <div id="u9438" class="text" style="display:none; visibility: hidden">
                          <p><span></span></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9439" class="ax_default" data-width="241" data-height="30">

                <!-- SelectItemGroup (Group) -->
                <div id="u9440" class="ax_default ax_default_hidden" data-label="SelectItemGroup" style="display:none; visibility: hidden" data-width="0" data-height="0">

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9441" class="ax_default box_2">
                    <div id="u9441_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9442" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9443" class="ax_default box_2" selectiongroup="SelectItem">
                    <div id="u9443_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9444" class="text">
                      <p><span>博士</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9445" class="ax_default box_2" selectiongroup="SelectItem">
                    <div id="u9445_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9446" class="text">
                      <p><span>研究生</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9447" class="ax_default box_2" selectiongroup="SelectItem">
                    <div id="u9447_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9448" class="text">
                      <p><span>……</span></p>
                    </div>
                  </div>
                </div>

                <!-- SelectBoxGroup (Group) -->
                <div id="u9449" class="ax_default" data-label="SelectBoxGroup" data-width="241" data-height="30">

                  <!-- SelectBox (Rectangle) -->
                  <div id="u9450" class="ax_default box_2" data-label="SelectBox">
                    <div id="u9450_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9451" class="text">
                      <p><span>请选择...</span></p>
                    </div>
                  </div>

                  <!-- ArrowDown (Shape) -->
                  <div id="u9452" class="ax_default icon" data-label="ArrowDown">
                    <img id="u9452_img" class="img " src="images/地块添加/arrowdown_u2189.png"/>
                    <!-- Unnamed () -->
                    <div id="u9453" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- ArrowUp (Shape) -->
                  <div id="u9454" class="ax_default icon ax_default_hidden" data-label="ArrowUp" style="display:none; visibility: hidden">
                    <img id="u9454_img" class="img " src="images/地块添加/arrowup_u2191.png"/>
                    <!-- Unnamed () -->
                    <div id="u9455" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9456" class="ax_default" data-width="1680" data-height="530">

                <!-- Unnamed (Rectangle) -->
                <div id="u9457" class="ax_default box_2">
                  <div id="u9457_div" class=""></div>
                  <!-- Unnamed () -->
                  <div id="u9458" class="text">
                    <p><span>公司信息</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table) -->
                <div id="u9459" class="ax_default">

                  <!-- Unnamed (Table Cell) -->
                  <div id="u9460" class="ax_default table_cell">
                    <img id="u9460_img" class="img " src="images/地区编辑_添加/u470.png"/>
                    <!-- Unnamed () -->
                    <div id="u9461" class="text">
                      <p><span>公司名称</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Table Cell) -->
                  <div id="u9462" class="ax_default table_cell">
                    <img id="u9462_img" class="img " src="images/地区编辑_添加/u472.png"/>
                    <!-- Unnamed () -->
                    <div id="u9463" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Table Cell) -->
                  <div id="u9464" class="ax_default table_cell">
                    <img id="u9464_img" class="img " src="images/地区编辑_添加/u470.png"/>
                    <!-- Unnamed () -->
                    <div id="u9465" class="text">
                      <p><span>所属行业</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Table Cell) -->
                  <div id="u9466" class="ax_default table_cell">
                    <img id="u9466_img" class="img " src="images/地区编辑_添加/u472.png"/>
                    <!-- Unnamed () -->
                    <div id="u9467" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Table Cell) -->
                  <div id="u9468" class="ax_default table_cell">
                    <img id="u9468_img" class="img " src="images/地区编辑_添加/u470.png"/>
                    <!-- Unnamed () -->
                    <div id="u9469" class="text">
                      <p><span>所在地</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Table Cell) -->
                  <div id="u9470" class="ax_default table_cell">
                    <img id="u9470_img" class="img " src="images/地区编辑_添加/u472.png"/>
                    <!-- Unnamed () -->
                    <div id="u9471" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Table Cell) -->
                  <div id="u9472" class="ax_default table_cell">
                    <img id="u9472_img" class="img " src="images/地区编辑_添加/u470.png"/>
                    <!-- Unnamed () -->
                    <div id="u9473" class="text">
                      <p><span>职务</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Table Cell) -->
                  <div id="u9474" class="ax_default table_cell">
                    <img id="u9474_img" class="img " src="images/地区编辑_添加/u472.png"/>
                    <!-- Unnamed () -->
                    <div id="u9475" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Table Cell) -->
                  <div id="u9476" class="ax_default table_cell">
                    <img id="u9476_img" class="img " src="images/会员添加/u8137.png"/>
                    <!-- Unnamed () -->
                    <div id="u9477" class="text">
                      <p><span>公司简介</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Table Cell) -->
                  <div id="u9478" class="ax_default table_cell">
                    <img id="u9478_img" class="img " src="images/会员添加/u8139.png"/>
                    <!-- Unnamed () -->
                    <div id="u9479" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>
                </div>

                <!-- Unnamed (Group) -->
                <div id="u9480" class="ax_default" data-width="500" data-height="30">

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9481" class="ax_default box_2">
                    <div id="u9481_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9482" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Text Field) -->
                  <div id="u9483" class="ax_default text_field">
                    <input id="u9483_input" type="text" value=""/>
                  </div>
                </div>

                <!-- ProvinceList (Droplist) -->
                <div id="u9484" class="ax_default _下拉列表框" data-label="ProvinceList">
                  <select id="u9484_input">
                    <option selected value="请选择省市">请选择省市</option>
                    <option value="北京市">北京市</option>
                    <option value="上海市">上海市</option>
                    <option value="天津市">天津市</option>
                    <option value="重庆市">重庆市</option>
                    <option value="宁夏">宁夏</option>
                    <option value="内蒙古">内蒙古</option>
                    <option value="安徽省">安徽省</option>
                    <option value="福建省">福建省</option>
                    <option value="甘肃省">甘肃省</option>
                    <option value="广东省">广东省</option>
                    <option value="广西省">广西省</option>
                    <option value="贵州省">贵州省</option>
                    <option value="海南省">海南省</option>
                    <option value="河北省">河北省</option>
                    <option value="河南省">河南省</option>
                    <option value="黑龙江">黑龙江</option>
                    <option value="湖北省">湖北省</option>
                    <option value="湖南省">湖南省</option>
                    <option value="吉林省">吉林省</option>
                    <option value="江苏省">江苏省</option>
                    <option value="江西省">江西省</option>
                    <option value="辽宁省">辽宁省</option>
                    <option value="青海省">青海省</option>
                    <option value="山东省">山东省</option>
                    <option value="山西省">山西省</option>
                    <option value="陕西省">陕西省</option>
                    <option value="四川省">四川省</option>
                    <option value="云南省">云南省</option>
                    <option value="浙江省">浙江省</option>
                    <option value="西藏">西藏</option>
                    <option value="新疆">新疆</option>
                    <option value="港澳台">港澳台</option>
                  </select>
                </div>

                <!-- CityPanel (Dynamic Panel) -->
                <div id="u9485" class="ax_default" data-label="CityPanel">
                  <div id="u9485_state0" class="panel_state" data-label="请选择省份">
                    <div id="u9485_state0_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9486" class="ax_default _下拉列表框">
                        <select id="u9486_input">
                          <option selected value="全部">全部</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state1" class="panel_state" data-label="北京市" style="display:none; visibility: hidden;">
                    <div id="u9485_state1_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9487" class="ax_default _下拉列表框">
                        <select id="u9487_input">
                          <option selected value="全部">全部</option>
                          <option value="东城区">东城区</option>
                          <option value="西城区">西城区</option>
                          <option value="崇文区">崇文区</option>
                          <option value="宣武区">宣武区</option>
                          <option value="朝阳区">朝阳区</option>
                          <option value="丰台区">丰台区</option>
                          <option value="石景山区">石景山区</option>
                          <option value="海淀区">海淀区</option>
                          <option value="门头沟区">门头沟区</option>
                          <option value="房山区">房山区</option>
                          <option value="通州区">通州区</option>
                          <option value="顺义区">顺义区</option>
                          <option value="昌平区">昌平区</option>
                          <option value="大兴区">大兴区</option>
                          <option value="平谷区">平谷区</option>
                          <option value="怀柔区">怀柔区</option>
                          <option value="密云县">密云县</option>
                          <option value="延庆县">延庆县</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state2" class="panel_state" data-label="上海市" style="display:none; visibility: hidden;">
                    <div id="u9485_state2_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9488" class="ax_default _下拉列表框">
                        <select id="u9488_input">
                          <option selected value="全部">全部</option>
                          <option value="浦东新区">浦东新区</option>
                          <option value="徐汇区">徐汇区</option>
                          <option value="黄浦区">黄浦区</option>
                          <option value="杨浦区">杨浦区</option>
                          <option value="虹口区">虹口区</option>
                          <option value="闵行区">闵行区</option>
                          <option value="长宁区">长宁区</option>
                          <option value="普陀区">普陀区</option>
                          <option value="宝山区">宝山区</option>
                          <option value="静安区">静安区</option>
                          <option value="闸北区">闸北区</option>
                          <option value="卢湾区">卢湾区</option>
                          <option value="松江区">松江区</option>
                          <option value="嘉定区">嘉定区</option>
                          <option value="南汇区">南汇区</option>
                          <option value="金山区">金山区</option>
                          <option value="青浦区">青浦区</option>
                          <option value="奉贤区">奉贤区</option>
                          <option value="崇明县">崇明县</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state3" class="panel_state" data-label="天津市" style="display:none; visibility: hidden;">
                    <div id="u9485_state3_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9489" class="ax_default _下拉列表框">
                        <select id="u9489_input">
                          <option selected value="全部">全部</option>
                          <option value="和平区">和平区</option>
                          <option value="河东区">河东区</option>
                          <option value="河西区">河西区</option>
                          <option value="南开区">南开区</option>
                          <option value="河北区">河北区</option>
                          <option value="红桥区">红桥区</option>
                          <option value="塘沽区">塘沽区</option>
                          <option value="汉沽区">汉沽区</option>
                          <option value="大港区">大港区</option>
                          <option value="东丽区">东丽区</option>
                          <option value="西青区">西青区</option>
                          <option value="津南区">津南区</option>
                          <option value="北辰区">北辰区</option>
                          <option value="武清区">武清区</option>
                          <option value="宝坻区">宝坻区</option>
                          <option value="宁河县">宁河县</option>
                          <option value="静海县">静海县</option>
                          <option value="蓟县">蓟县</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state4" class="panel_state" data-label="重庆市" style="display:none; visibility: hidden;">
                    <div id="u9485_state4_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9490" class="ax_default _下拉列表框">
                        <select id="u9490_input">
                          <option selected value="全部">全部</option>
                          <option value="万州区">万州区</option>
                          <option value="涪陵区">涪陵区</option>
                          <option value="渝中区">渝中区</option>
                          <option value="大渡口区">大渡口区</option>
                          <option value="江北区">江北区</option>
                          <option value="沙坪坝区">沙坪坝区</option>
                          <option value="九龙坡区">九龙坡区</option>
                          <option value="南岸区">南岸区</option>
                          <option value="北碚区">北碚区</option>
                          <option value="万盛区">万盛区</option>
                          <option value="双桥区">双桥区</option>
                          <option value="渝北区">渝北区</option>
                          <option value="巴南区">巴南区</option>
                          <option value="长寿县">长寿县</option>
                          <option value="綦江县">綦江县</option>
                          <option value="潼南县">潼南县</option>
                          <option value="铜梁县">铜梁县</option>
                          <option value="大足县">大足县</option>
                          <option value="荣昌县">荣昌县</option>
                          <option value="璧山县">璧山县</option>
                          <option value="梁平县">梁平县</option>
                          <option value="城口县">城口县</option>
                          <option value="丰都县">丰都县</option>
                          <option value="垫江县">垫江县</option>
                          <option value="武隆县">武隆县</option>
                          <option value="忠县">忠县</option>
                          <option value="开县">开县</option>
                          <option value="云阳县">云阳县</option>
                          <option value="奉节县">奉节县</option>
                          <option value="巫山县">巫山县</option>
                          <option value="巫溪县">巫溪县</option>
                          <option value="黔江土家族苗族自治县">黔江土家族苗族自治县</option>
                          <option value="石柱土家族自治县">石柱土家族自治县</option>
                          <option value="秀山土家族苗族自治县">秀山土家族苗族自治县</option>
                          <option value="酉阳土家族苗族自治县">酉阳土家族苗族自治县</option>
                          <option value="彭水苗族土家族自治县">彭水苗族土家族自治县</option>
                          <option value="江津市">江津市</option>
                          <option value="合川市">合川市</option>
                          <option value="永川市">永川市</option>
                          <option value="南川市">南川市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state5" class="panel_state" data-label="宁夏" style="display:none; visibility: hidden;">
                    <div id="u9485_state5_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9491" class="ax_default _下拉列表框">
                        <select id="u9491_input">
                          <option selected value="全部">全部</option>
                          <option value="银川市">银川市</option>
                          <option value="石嘴山市">石嘴山市</option>
                          <option value="吴忠市">吴忠市</option>
                          <option value="固原地区">固原地区</option>
                          <option value="中卫市">中卫市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state6" class="panel_state" data-label="内蒙古" style="display:none; visibility: hidden;">
                    <div id="u9485_state6_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9492" class="ax_default _下拉列表框">
                        <select id="u9492_input">
                          <option selected value="全部">全部</option>
                          <option value="呼和浩特市">呼和浩特市</option>
                          <option value="包头市">包头市</option>
                          <option value="乌海市">乌海市</option>
                          <option value="赤峰市">赤峰市</option>
                          <option value="呼伦贝尔市">呼伦贝尔市</option>
                          <option value="兴安盟">兴安盟</option>
                          <option value="通辽市">通辽市</option>
                          <option value="锡林郭勒盟">锡林郭勒盟</option>
                          <option value="乌兰察布盟">乌兰察布盟</option>
                          <option value="伊克昭盟">伊克昭盟</option>
                          <option value="巴彦淖尔盟">巴彦淖尔盟</option>
                          <option value="阿拉善盟">阿拉善盟</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state7" class="panel_state" data-label="安徽省" style="display:none; visibility: hidden;">
                    <div id="u9485_state7_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9493" class="ax_default _下拉列表框">
                        <select id="u9493_input">
                          <option selected value="全部">全部</option>
                          <option value="合肥市">合肥市</option>
                          <option value="芜湖市">芜湖市</option>
                          <option value="蚌埠市">蚌埠市</option>
                          <option value="淮南市">淮南市</option>
                          <option value="马鞍山市">马鞍山市</option>
                          <option value="淮北市">淮北市</option>
                          <option value="铜陵市">铜陵市</option>
                          <option value="安庆市">安庆市</option>
                          <option value="黄山市">黄山市</option>
                          <option value="滁州市">滁州市</option>
                          <option value="阜阳市">阜阳市</option>
                          <option value="宿州市">宿州市</option>
                          <option value="六安市">六安市</option>
                          <option value="宣城市">宣城市</option>
                          <option value="巢湖市">巢湖市</option>
                          <option value="池州市">池州市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state8" class="panel_state" data-label="福建省" style="display:none; visibility: hidden;">
                    <div id="u9485_state8_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9494" class="ax_default _下拉列表框">
                        <select id="u9494_input">
                          <option selected value="全部">全部</option>
                          <option value="福州市">福州市</option>
                          <option value="厦门市">厦门市</option>
                          <option value="宁德市">宁德市</option>
                          <option value="莆田市">莆田市</option>
                          <option value="泉州市">泉州市</option>
                          <option value="漳州市">漳州市</option>
                          <option value="龙岩">龙岩</option>
                          <option value="三明市">三明市</option>
                          <option value="南平市">南平市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state9" class="panel_state" data-label="甘肃省" style="display:none; visibility: hidden;">
                    <div id="u9485_state9_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9495" class="ax_default _下拉列表框">
                        <select id="u9495_input">
                          <option selected value="全部">全部</option>
                          <option value="兰州市">兰州市</option>
                          <option value="嘉峪关市">嘉峪关市</option>
                          <option value="金昌市">金昌市</option>
                          <option value="白银市">白银市</option>
                          <option value="天水市">天水市</option>
                          <option value="酒泉地区">酒泉地区</option>
                          <option value="张掖地区">张掖地区</option>
                          <option value="武威地区">武威地区</option>
                          <option value="定西地区">定西地区</option>
                          <option value="陇南地区">陇南地区</option>
                          <option value="平凉地区">平凉地区</option>
                          <option value="庆阳地区">庆阳地区</option>
                          <option value="临夏回族自治州">临夏回族自治州</option>
                          <option value="甘南藏族自治州">甘南藏族自治州</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state10" class="panel_state" data-label="广东省" style="display:none; visibility: hidden;">
                    <div id="u9485_state10_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9496" class="ax_default _下拉列表框">
                        <select id="u9496_input">
                          <option selected value="全部">全部</option>
                          <option value="广州市">广州市</option>
                          <option value="韶关市">韶关市</option>
                          <option value="深圳市">深圳市</option>
                          <option value="珠海市">珠海市</option>
                          <option value="汕头市">汕头市</option>
                          <option value="佛山市">佛山市</option>
                          <option value="江门市">江门市</option>
                          <option value="湛江市">湛江市</option>
                          <option value="茂名市">茂名市</option>
                          <option value="肇庆市">肇庆市</option>
                          <option value="惠州市">惠州市</option>
                          <option value="梅州市">梅州市</option>
                          <option value="汕尾市">汕尾市</option>
                          <option value="河源市">河源市</option>
                          <option value="阳江市">阳江市</option>
                          <option value="清远市">清远市</option>
                          <option value="潮州市">潮州市</option>
                          <option value="揭阳市">揭阳市</option>
                          <option value="云浮市">云浮市</option>
                          <option value="东莞市">东莞市</option>
                          <option value="中山市">中山市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state11" class="panel_state" data-label="广西省" style="display:none; visibility: hidden;">
                    <div id="u9485_state11_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9497" class="ax_default _下拉列表框">
                        <select id="u9497_input">
                          <option selected value="全部">全部</option>
                          <option value="南宁市">南宁市</option>
                          <option value="柳州市">柳州市</option>
                          <option value="桂林市">桂林市</option>
                          <option value="梧州市">梧州市</option>
                          <option value="北海市">北海市</option>
                          <option value="防城港市">防城港市</option>
                          <option value="钦州市">钦州市</option>
                          <option value="贵港市">贵港市</option>
                          <option value="玉林市">玉林市</option>
                          <option value="崇左市">崇左市</option>
                          <option value="来宾市">来宾市</option>
                          <option value="贺州市">贺州市</option>
                          <option value="百色市">百色市</option>
                          <option value="河池市">河池市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state12" class="panel_state" data-label="贵州省" style="display:none; visibility: hidden;">
                    <div id="u9485_state12_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9498" class="ax_default _下拉列表框">
                        <select id="u9498_input">
                          <option selected value="全部">全部</option>
                          <option value="贵阳市">贵阳市</option>
                          <option value="六盘水市">六盘水市</option>
                          <option value="遵义市">遵义市</option>
                          <option value="铜仁地区">铜仁地区</option>
                          <option value="黔西南布依族苗族自治州">黔西南布依族苗族自治州</option>
                          <option value="毕节地区">毕节地区</option>
                          <option value="安顺地区">安顺地区</option>
                          <option value="黔东南苗族侗族自治州">黔东南苗族侗族自治州</option>
                          <option value="黔南布依族苗族自治州">黔南布依族苗族自治州</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state13" class="panel_state" data-label="海南省" style="display:none; visibility: hidden;">
                    <div id="u9485_state13_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9499" class="ax_default _下拉列表框">
                        <select id="u9499_input">
                          <option selected value="全部">全部</option>
                          <option value="海口市">海口市</option>
                          <option value="三亚市">三亚市</option>
                          <option value="文昌市">文昌市</option>
                          <option value="万宁市">万宁市</option>
                          <option value="东方市">东方市</option>
                          <option value="定安县">定安县</option>
                          <option value="屯昌县">屯昌县</option>
                          <option value="澄迈县">澄迈县</option>
                          <option value="临高县">临高县</option>
                          <option value="白沙黎族自治县">白沙黎族自治县</option>
                          <option value="昌江黎族自治县">昌江黎族自治县</option>
                          <option value="乐东黎族自治县">乐东黎族自治县</option>
                          <option value="陵水黎族自治县">陵水黎族自治县</option>
                          <option value="保亭黎族苗族自治县">保亭黎族苗族自治县</option>
                          <option value="琼中黎族苗族自治县">琼中黎族苗族自治县</option>
                          <option value="西南中沙群岛办事处">西南中沙群岛办事处</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state14" class="panel_state" data-label="河北省" style="display:none; visibility: hidden;">
                    <div id="u9485_state14_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9500" class="ax_default _下拉列表框">
                        <select id="u9500_input">
                          <option selected value="全部">全部</option>
                          <option value="石家庄市">石家庄市</option>
                          <option value="唐山市">唐山市</option>
                          <option value="秦皇岛市">秦皇岛市</option>
                          <option value="邯郸市">邯郸市</option>
                          <option value="邢台市">邢台市</option>
                          <option value="保定市">保定市</option>
                          <option value="张家口市">张家口市</option>
                          <option value="承德市">承德市</option>
                          <option value="沧州市">沧州市</option>
                          <option value="廊坊市">廊坊市</option>
                          <option value="衡水市">衡水市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state15" class="panel_state" data-label="河南省" style="display:none; visibility: hidden;">
                    <div id="u9485_state15_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9501" class="ax_default _下拉列表框">
                        <select id="u9501_input">
                          <option selected value="全部">全部</option>
                          <option value="郑州市">郑州市</option>
                          <option value="开封市">开封市</option>
                          <option value="洛阳市">洛阳市</option>
                          <option value="平顶山市">平顶山市</option>
                          <option value="安阳市">安阳市</option>
                          <option value="鹤壁市">鹤壁市</option>
                          <option value="新乡市">新乡市</option>
                          <option value="焦作市">焦作市</option>
                          <option value="濮阳市">濮阳市</option>
                          <option value="许昌市">许昌市</option>
                          <option value="漯河市">漯河市</option>
                          <option value="三门峡市">三门峡市</option>
                          <option value="南阳市">南阳市</option>
                          <option value="商丘市">商丘市</option>
                          <option value="信阳市">信阳市</option>
                          <option value="周口市">周口市</option>
                          <option value="济源市">济源市</option>
                          <option value="驻马店地区">驻马店地区</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state16" class="panel_state" data-label="黑龙江" style="display:none; visibility: hidden;">
                    <div id="u9485_state16_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9502" class="ax_default _下拉列表框">
                        <select id="u9502_input">
                          <option selected value="全部">全部</option>
                          <option value="哈尔滨市">哈尔滨市</option>
                          <option value="齐齐哈尔市">齐齐哈尔市</option>
                          <option value="鸡西市">鸡西市</option>
                          <option value="鹤岗市">鹤岗市</option>
                          <option value="双鸭山市">双鸭山市</option>
                          <option value="大庆市">大庆市</option>
                          <option value="伊春市">伊春市</option>
                          <option value="七台河市">七台河市</option>
                          <option value="牡丹江市">牡丹江市</option>
                          <option value="黑河市">黑河市</option>
                          <option value="绥化市">绥化市</option>
                          <option value="大兴安岭地区">大兴安岭地区</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state17" class="panel_state" data-label="湖北省" style="display:none; visibility: hidden;">
                    <div id="u9485_state17_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9503" class="ax_default _下拉列表框">
                        <select id="u9503_input">
                          <option selected value="全部">全部</option>
                          <option value="武汉市">武汉市</option>
                          <option value="黄石市">黄石市</option>
                          <option value="十堰市">十堰市</option>
                          <option value="宜昌市">宜昌市</option>
                          <option value="襄樊市">襄樊市</option>
                          <option value="鄂州市">鄂州市</option>
                          <option value="荆门市">荆门市</option>
                          <option value="孝感市">孝感市</option>
                          <option value="荆州市">荆州市</option>
                          <option value="黄冈市">黄冈市</option>
                          <option value="咸宁市">咸宁市</option>
                          <option value="恩施土家族苗族自治州">恩施土家族苗族自治州</option>
                          <option value="仙桃市">仙桃市</option>
                          <option value="潜江市">潜江市</option>
                          <option value="天门市">天门市</option>
                          <option value="神农架林区">神农架林区</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state18" class="panel_state" data-label="湖南省" style="display:none; visibility: hidden;">
                    <div id="u9485_state18_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9504" class="ax_default _下拉列表框">
                        <select id="u9504_input">
                          <option selected value="全部">全部</option>
                          <option value="长沙市">长沙市</option>
                          <option value="株洲市">株洲市</option>
                          <option value="湘潭市">湘潭市</option>
                          <option value="衡阳市">衡阳市</option>
                          <option value="邵阳市">邵阳市</option>
                          <option value="岳阳市">岳阳市</option>
                          <option value="常德市">常德市</option>
                          <option value="张家界市">张家界市</option>
                          <option value="益阳市">益阳市</option>
                          <option value="郴州市">郴州市</option>
                          <option value="永州市">永州市</option>
                          <option value="怀化市">怀化市</option>
                          <option value="娄底地区">娄底地区</option>
                          <option value="湘西土家族苗族自治州">湘西土家族苗族自治州</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state19" class="panel_state" data-label="吉林省" style="display:none; visibility: hidden;">
                    <div id="u9485_state19_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9505" class="ax_default _下拉列表框">
                        <select id="u9505_input">
                          <option selected value="全部">全部</option>
                          <option value="长春市">长春市</option>
                          <option value="吉林市">吉林市</option>
                          <option value="四平市">四平市</option>
                          <option value="辽源市">辽源市</option>
                          <option value="通化市">通化市</option>
                          <option value="白山市">白山市</option>
                          <option value="松原市">松原市</option>
                          <option value="白城市">白城市</option>
                          <option value="延边朝鲜族自治州">延边朝鲜族自治州</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state20" class="panel_state" data-label="江苏省" style="display:none; visibility: hidden;">
                    <div id="u9485_state20_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9506" class="ax_default _下拉列表框">
                        <select id="u9506_input">
                          <option selected value="全部">全部</option>
                          <option value="南京市">南京市</option>
                          <option value="无锡市">无锡市</option>
                          <option value="徐州市">徐州市</option>
                          <option value="常州市">常州市</option>
                          <option value="苏州市">苏州市</option>
                          <option value="南通市">南通市</option>
                          <option value="连云港市">连云港市</option>
                          <option value="淮阴市">淮阴市</option>
                          <option value="盐城市">盐城市</option>
                          <option value="扬州市">扬州市</option>
                          <option value="镇江市">镇江市</option>
                          <option value="泰州市">泰州市</option>
                          <option value="宿迁市">宿迁市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state21" class="panel_state" data-label="江西省" style="display:none; visibility: hidden;">
                    <div id="u9485_state21_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9507" class="ax_default _下拉列表框">
                        <select id="u9507_input">
                          <option selected value="全部">全部</option>
                          <option value="南昌市">南昌市</option>
                          <option value="景德镇市">景德镇市</option>
                          <option value="萍乡市">萍乡市</option>
                          <option value="九江市">九江市</option>
                          <option value="新余市">新余市</option>
                          <option value="鹰潭市">鹰潭市</option>
                          <option value="赣州市">赣州市</option>
                          <option value="宜春市">宜春市</option>
                          <option value="上饶市">上饶市</option>
                          <option value="吉安市">吉安市</option>
                          <option value="抚州市">抚州市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state22" class="panel_state" data-label="辽宁省" style="display:none; visibility: hidden;">
                    <div id="u9485_state22_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9508" class="ax_default _下拉列表框">
                        <select id="u9508_input">
                          <option selected value="全部">全部</option>
                          <option value="大连市">大连市</option>
                          <option value="鞍山市">鞍山市</option>
                          <option value="抚顺市">抚顺市</option>
                          <option value="本溪市">本溪市</option>
                          <option value="丹东市">丹东市</option>
                          <option value="锦州市">锦州市</option>
                          <option value="营口市">营口市</option>
                          <option value="阜新市">阜新市</option>
                          <option value="辽阳市">辽阳市</option>
                          <option value="盘锦市">盘锦市</option>
                          <option value="铁岭市">铁岭市</option>
                          <option value="朝阳市">朝阳市</option>
                          <option value="葫芦岛市">葫芦岛市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state23" class="panel_state" data-label="青海省" style="display:none; visibility: hidden;">
                    <div id="u9485_state23_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9509" class="ax_default _下拉列表框">
                        <select id="u9509_input">
                          <option selected value="全部">全部</option>
                          <option value="西宁市">西宁市</option>
                          <option value="海东地区">海东地区</option>
                          <option value="海北藏族自治州">海北藏族自治州</option>
                          <option value="黄南藏族自治州">黄南藏族自治州</option>
                          <option value="海南藏族自治州">海南藏族自治州</option>
                          <option value="果洛藏族自治州">果洛藏族自治州</option>
                          <option value="玉树藏族自治州">玉树藏族自治州</option>
                          <option value="海西蒙古族藏族自治州">海西蒙古族藏族自治州</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state24" class="panel_state" data-label="山东省" style="display:none; visibility: hidden;">
                    <div id="u9485_state24_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9510" class="ax_default _下拉列表框">
                        <select id="u9510_input">
                          <option selected value="全部">全部</option>
                          <option value="济南市">济南市</option>
                          <option value="青岛市">青岛市</option>
                          <option value="淄博市">淄博市</option>
                          <option value="枣庄市">枣庄市</option>
                          <option value="东营市">东营市</option>
                          <option value="烟台市">烟台市</option>
                          <option value="潍坊市">潍坊市</option>
                          <option value="济宁市">济宁市</option>
                          <option value="泰安市">泰安市</option>
                          <option value="威海市">威海市</option>
                          <option value="日照市">日照市</option>
                          <option value="莱芜市">莱芜市</option>
                          <option value="临沂市">临沂市</option>
                          <option value="德州市">德州市</option>
                          <option value="聊城市">聊城市</option>
                          <option value="滨州市">滨州市</option>
                          <option value="菏泽市">菏泽市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state25" class="panel_state" data-label="山西省" style="display:none; visibility: hidden;">
                    <div id="u9485_state25_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9511" class="ax_default _下拉列表框">
                        <select id="u9511_input">
                          <option selected value="全部">全部</option>
                          <option value="太原市">太原市</option>
                          <option value="大同市">大同市</option>
                          <option value="阳泉市">阳泉市</option>
                          <option value="长治市">长治市</option>
                          <option value="晋城市">晋城市</option>
                          <option value="朔州市">朔州市</option>
                          <option value="忻州市">忻州市</option>
                          <option value="吕梁市">吕梁市</option>
                          <option value="晋中市">晋中市</option>
                          <option value="临汾市">临汾市</option>
                          <option value="运城市">运城市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state26" class="panel_state" data-label="陕西省" style="display:none; visibility: hidden;">
                    <div id="u9485_state26_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9512" class="ax_default _下拉列表框">
                        <select id="u9512_input">
                          <option selected value="全部">全部</option>
                          <option value="西安市">西安市</option>
                          <option value="铜川市">铜川市</option>
                          <option value="宝鸡市">宝鸡市</option>
                          <option value="咸阳市">咸阳市</option>
                          <option value="渭南市">渭南市</option>
                          <option value="延安市">延安市</option>
                          <option value="汉中市">汉中市</option>
                          <option value="安康地区">安康地区</option>
                          <option value="商洛地区">商洛地区</option>
                          <option value="榆林地区">榆林地区</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state27" class="panel_state" data-label="四川省" style="display:none; visibility: hidden;">
                    <div id="u9485_state27_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9513" class="ax_default _下拉列表框">
                        <select id="u9513_input">
                          <option selected value="全部">全部</option>
                          <option value="成都市">成都市</option>
                          <option value="自贡市">自贡市</option>
                          <option value="攀枝花市">攀枝花市</option>
                          <option value="泸州市">泸州市</option>
                          <option value="德阳市">德阳市</option>
                          <option value="绵阳市">绵阳市</option>
                          <option value="广元市">广元市</option>
                          <option value="遂宁市">遂宁市</option>
                          <option value="内江市">内江市</option>
                          <option value="乐山市">乐山市</option>
                          <option value="南充市">南充市</option>
                          <option value="宜宾市">宜宾市</option>
                          <option value="广安市">广安市</option>
                          <option value="达川地区">达川地区</option>
                          <option value="雅安地区">雅安地区</option>
                          <option value="阿坝藏族羌族自治州">阿坝藏族羌族自治州</option>
                          <option value="甘孜藏族自治州">甘孜藏族自治州</option>
                          <option value="凉山彝族自治州">凉山彝族自治州</option>
                          <option value="巴中地区">巴中地区</option>
                          <option value="眉山地区">眉山地区</option>
                          <option value="资阳地区">资阳地区</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state28" class="panel_state" data-label="云南省" style="display:none; visibility: hidden;">
                    <div id="u9485_state28_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9514" class="ax_default _下拉列表框">
                        <select id="u9514_input">
                          <option selected value="全部">全部</option>
                          <option value="昆明市">昆明市</option>
                          <option value="曲靖市">曲靖市</option>
                          <option value="玉溪市">玉溪市</option>
                          <option value="昭通地区">昭通地区</option>
                          <option value="楚雄彝族自治州">楚雄彝族自治州</option>
                          <option value="红河哈尼族彝族自治州">红河哈尼族彝族自治州</option>
                          <option value="文山壮族苗族自治州">文山壮族苗族自治州</option>
                          <option value="思茅市">思茅市</option>
                          <option value="西双版纳傣族自治州">西双版纳傣族自治州</option>
                          <option value="大理白族自治州">大理白族自治州</option>
                          <option value="保山地区">保山地区</option>
                          <option value="德宏傣族景颇族自治州">德宏傣族景颇族自治州</option>
                          <option value="丽江地区">丽江地区</option>
                          <option value="怒江傈僳族自治州">怒江傈僳族自治州</option>
                          <option value="迪庆藏族自治州">迪庆藏族自治州</option>
                          <option value="临沧地区">临沧地区</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state29" class="panel_state" data-label="浙江省" style="display:none; visibility: hidden;">
                    <div id="u9485_state29_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9515" class="ax_default _下拉列表框">
                        <select id="u9515_input">
                          <option selected value="全部">全部</option>
                          <option value="杭州市">杭州市</option>
                          <option value="宁波市">宁波市</option>
                          <option value="温州市">温州市</option>
                          <option value="嘉兴市">嘉兴市</option>
                          <option value="湖州市">湖州市</option>
                          <option value="绍兴市">绍兴市</option>
                          <option value="金华市">金华市</option>
                          <option value="衢州市">衢州市</option>
                          <option value="舟山市">舟山市</option>
                          <option value="台州市">台州市</option>
                          <option value="丽水市">丽水市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state30" class="panel_state" data-label="西藏" style="display:none; visibility: hidden;">
                    <div id="u9485_state30_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9516" class="ax_default _下拉列表框">
                        <select id="u9516_input">
                          <option selected value="全部">全部</option>
                          <option value="拉萨市">拉萨市</option>
                          <option value="昌都地区">昌都地区</option>
                          <option value="山南地区">山南地区</option>
                          <option value="日喀则地区">日喀则地区</option>
                          <option value="那曲地区">那曲地区</option>
                          <option value="阿里地区">阿里地区</option>
                          <option value="林芝地区">林芝地区</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state31" class="panel_state" data-label="新疆" style="display:none; visibility: hidden;">
                    <div id="u9485_state31_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9517" class="ax_default _下拉列表框">
                        <select id="u9517_input">
                          <option selected value="全部">全部</option>
                          <option value="乌鲁木齐市">乌鲁木齐市</option>
                          <option value="克拉玛依市">克拉玛依市</option>
                          <option value="吐鲁番地区">吐鲁番地区</option>
                          <option value="哈密地区">哈密地区</option>
                          <option value="昌吉回族自治州">昌吉回族自治州</option>
                          <option value="博尔塔拉蒙古自治州">博尔塔拉蒙古自治州</option>
                          <option value="巴音郭楞蒙古自治州">巴音郭楞蒙古自治州</option>
                          <option value="阿克苏地区">阿克苏地区</option>
                          <option value="克孜勒苏柯尔克孜自治州">克孜勒苏柯尔克孜自治州</option>
                          <option value="喀什地区">喀什地区</option>
                          <option value="和田地区">和田地区</option>
                          <option value="伊犁哈萨克自治州">伊犁哈萨克自治州</option>
                          <option value="塔城地区">塔城地区</option>
                          <option value="阿勒泰地区">阿勒泰地区</option>
                          <option value="石河子市">石河子市</option>
                          <option value="阿拉尔市">阿拉尔市</option>
                          <option value="图木舒克市">图木舒克市</option>
                          <option value="五家渠市">五家渠市</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div id="u9485_state32" class="panel_state" data-label="港澳台" style="display:none; visibility: hidden;">
                    <div id="u9485_state32_content" class="panel_state_content">

                      <!-- Unnamed (Droplist) -->
                      <div id="u9518" class="ax_default _下拉列表框">
                        <select id="u9518_input">
                          <option selected value="全部">全部</option>
                          <option value="香港">香港</option>
                          <option value="台湾">台湾</option>
                          <option value="澳门">澳门</option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Unnamed (Group) -->
                <div id="u9519" class="ax_default" data-width="246" data-height="30">

                  <!-- Unnamed (Group) -->
                  <div id="u9520" class="ax_default" data-width="246" data-height="30">

                    <!-- SelectItemGroup (Group) -->
                    <div id="u9521" class="ax_default ax_default_hidden" data-label="SelectItemGroup" style="display:none; visibility: hidden" data-width="0" data-height="0">

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9522" class="ax_default box_2">
                        <div id="u9522_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9523" class="text" style="display:none; visibility: hidden">
                          <p><span></span></p>
                        </div>
                      </div>

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9524" class="ax_default box_2" selectiongroup="SelectItem">
                        <div id="u9524_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9525" class="text">
                          <p><span>农林牧渔</span></p>
                        </div>
                      </div>

                      <!-- Unnamed (Rectangle) -->
                      <div id="u9526" class="ax_default box_2" selectiongroup="SelectItem">
                        <div id="u9526_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9527" class="text">
                          <p><span>……</span></p>
                        </div>
                      </div>
                    </div>

                    <!-- SelectBoxGroup (Group) -->
                    <div id="u9528" class="ax_default" data-label="SelectBoxGroup" data-width="246" data-height="30">

                      <!-- SelectBox (Rectangle) -->
                      <div id="u9529" class="ax_default box_2" data-label="SelectBox">
                        <div id="u9529_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u9530" class="text">
                          <p><span>公司所在行业</span></p>
                        </div>
                      </div>

                      <!-- ArrowDown (Shape) -->
                      <div id="u9531" class="ax_default icon" data-label="ArrowDown">
                        <img id="u9531_img" class="img " src="images/地块添加/arrowdown_u2189.png"/>
                        <!-- Unnamed () -->
                        <div id="u9532" class="text" style="display:none; visibility: hidden">
                          <p><span></span></p>
                        </div>
                      </div>

                      <!-- ArrowUp (Shape) -->
                      <div id="u9533" class="ax_default icon ax_default_hidden" data-label="ArrowUp" style="display:none; visibility: hidden">
                        <img id="u9533_img" class="img " src="images/地块添加/arrowup_u2191.png"/>
                        <!-- Unnamed () -->
                        <div id="u9534" class="text" style="display:none; visibility: hidden">
                          <p><span></span></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Unnamed (Group) -->
                <div id="u9535" class="ax_default" data-width="527" data-height="18">

                  <!-- Unnamed (Checkbox) -->
                  <div id="u9536" class="ax_default checkbox">
                    <label for="u9536_input">
                      <!-- Unnamed () -->
                      <div id="u9537" class="text">
                        <p><span>&nbsp;法人</span></p>
                      </div>
                    </label>
                    <input id="u9536_input" type="checkbox" value="checkbox"/>
                  </div>

                  <!-- Unnamed (Checkbox) -->
                  <div id="u9538" class="ax_default checkbox">
                    <label for="u9538_input">
                      <!-- Unnamed () -->
                      <div id="u9539" class="text">
                        <p><span>&nbsp;股东</span></p>
                      </div>
                    </label>
                    <input id="u9538_input" type="checkbox" value="checkbox"/>
                  </div>

                  <!-- Unnamed (Checkbox) -->
                  <div id="u9540" class="ax_default checkbox">
                    <label for="u9540_input">
                      <!-- Unnamed () -->
                      <div id="u9541" class="text">
                        <p><span>&nbsp;合伙人</span></p>
                      </div>
                    </label>
                    <input id="u9540_input" type="checkbox" value="checkbox"/>
                  </div>

                  <!-- Unnamed (Checkbox) -->
                  <div id="u9542" class="ax_default checkbox">
                    <label for="u9542_input">
                      <!-- Unnamed () -->
                      <div id="u9543" class="text">
                        <p><span>&nbsp;投资人</span></p>
                      </div>
                    </label>
                    <input id="u9542_input" type="checkbox" value="checkbox"/>
                  </div>

                  <!-- Unnamed (Checkbox) -->
                  <div id="u9544" class="ax_default checkbox">
                    <label for="u9544_input">
                      <!-- Unnamed () -->
                      <div id="u9545" class="text">
                        <p><span>&nbsp;职业经理人</span></p>
                      </div>
                    </label>
                    <input id="u9544_input" type="checkbox" value="checkbox"/>
                  </div>

                  <!-- Unnamed (Checkbox) -->
                  <div id="u9546" class="ax_default checkbox">
                    <label for="u9546_input">
                      <!-- Unnamed () -->
                      <div id="u9547" class="text">
                        <p><span>&nbsp;普通职员</span></p>
                      </div>
                    </label>
                    <input id="u9546_input" type="checkbox" value="checkbox"/>
                  </div>
                </div>

                <!-- Unnamed (Group) -->
                <div id="u9548" class="ax_default" data-width="1446" data-height="264">

                  <!-- Unnamed (Group) -->
                  <div id="u9549" class="ax_default" data-width="1446" data-height="264">

                    <!-- Unnamed (Rectangle) -->
                    <div id="u9550" class="ax_default _形状">
                      <div id="u9550_div" class=""></div>
                      <!-- Unnamed () -->
                      <div id="u9551" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9552" class="ax_default _图片1">
                      <img id="u9552_img" class="img " src="images/地区编辑_添加/u916.png"/>
                      <!-- Unnamed () -->
                      <div id="u9553" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9554" class="ax_default _图片1">
                      <img id="u9554_img" class="img " src="images/地区编辑_添加/u918.png"/>
                      <!-- Unnamed () -->
                      <div id="u9555" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9556" class="ax_default _图片1">
                      <img id="u9556_img" class="img " src="images/地区编辑_添加/u920.png"/>
                      <!-- Unnamed () -->
                      <div id="u9557" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9558" class="ax_default _图片1">
                      <img id="u9558_img" class="img " src="images/地区编辑_添加/u922.png"/>
                      <!-- Unnamed () -->
                      <div id="u9559" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9560" class="ax_default _图片1">
                      <img id="u9560_img" class="img " src="images/地区编辑_添加/u924.png"/>
                      <!-- Unnamed () -->
                      <div id="u9561" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9562" class="ax_default _图片1">
                      <img id="u9562_img" class="img " src="images/地区编辑_添加/u926.png"/>
                      <!-- Unnamed () -->
                      <div id="u9563" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9564" class="ax_default _图片1">
                      <img id="u9564_img" class="img " src="images/地区编辑_添加/u928.png"/>
                      <!-- Unnamed () -->
                      <div id="u9565" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9566" class="ax_default _图片1">
                      <img id="u9566_img" class="img " src="images/地区编辑_添加/u930.png"/>
                      <!-- Unnamed () -->
                      <div id="u9567" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9568" class="ax_default _图片1">
                      <img id="u9568_img" class="img " src="images/地区编辑_添加/u932.png"/>
                      <!-- Unnamed () -->
                      <div id="u9569" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9570" class="ax_default _图片1">
                      <img id="u9570_img" class="img " src="images/地区编辑_添加/u934.png"/>
                      <!-- Unnamed () -->
                      <div id="u9571" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9572" class="ax_default _图片1">
                      <img id="u9572_img" class="img " src="images/地区编辑_添加/u936.png"/>
                      <!-- Unnamed () -->
                      <div id="u9573" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9574" class="ax_default _图片1">
                      <img id="u9574_img" class="img " src="images/地区编辑_添加/u938.png"/>
                      <!-- Unnamed () -->
                      <div id="u9575" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Image) -->
                    <div id="u9576" class="ax_default _图片1">
                      <img id="u9576_img" class="img " src="images/地区编辑_添加/u940.png"/>
                      <!-- Unnamed () -->
                      <div id="u9577" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Droplist) -->
                    <div id="u9578" class="ax_default _下拉列表框">
                      <select id="u9578_input">
                        <option selected value="宋体">宋体</option>
                        <option value="微软雅黑">微软雅黑</option>
                        <option value="楷体">楷体</option>
                        <option value="隶书">隶书</option>
                        <option value="仿宋体">仿宋体</option>
                      </select>
                    </div>

                    <!-- Unnamed (Droplist) -->
                    <div id="u9579" class="ax_default _下拉列表框">
                      <select id="u9579_input">
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="12">12</option>
                        <option selected value="14">14</option>
                        <option value="16">16</option>
                        <option value="18">18</option>
                        <option value="20">20</option>
                        <option value="24">24</option>
                        <option value="32">32</option>
                        <option value="48">48</option>
                        <option value="72">72</option>
                      </select>
                    </div>

                    <!-- text (Text Area) -->
                    <div id="u9580" class="ax_default _多行文本框" data-label="text">
                      <textarea id="u9580_input">趣闻 1947 年，时装设计师 Elsa Schiaparelli 将“艳粉色”引入西方时尚圈。 桃色可以营造亲密氛围，减少攻击性和敌意。 由于听说粉色有一种镇定效果，有些球队会把客队的休息室漆成粉色。 对于粉色的研究发现，男性举重运动员在粉色房间内似乎感到力不从心，而女性举重运动员面对这种颜色反而会有变强的倾向。 糕点从粉色盒子里取出或盛在粉色盘子里时，尝起来会更美味（这种情况仅适用于甜点），因为粉色令我们渴望糖份。</textarea>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Rectangle) -->
              <div id="u9581" class="ax_default box_2">
                <div id="u9581_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u9582" class="text">
                  <p><span>联系信息</span></p>
                </div>
              </div>

              <!-- Unnamed (Table) -->
              <div id="u9583" class="ax_default">

                <!-- Unnamed (Table Cell) -->
                <div id="u9584" class="ax_default table_cell">
                  <img id="u9584_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9585" class="text">
                    <p><span>联系电话</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9586" class="ax_default table_cell">
                  <img id="u9586_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9587" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9588" class="ax_default table_cell">
                  <img id="u9588_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9589" class="text">
                    <p><span>QQ</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9590" class="ax_default table_cell">
                  <img id="u9590_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9591" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9592" class="ax_default table_cell">
                  <img id="u9592_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9593" class="text">
                    <p><span>微信</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9594" class="ax_default table_cell">
                  <img id="u9594_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9595" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9596" class="ax_default table_cell">
                  <img id="u9596_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9597" class="text">
                    <p><span>邮箱</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9598" class="ax_default table_cell">
                  <img id="u9598_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9599" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9600" class="ax_default table_cell">
                  <img id="u9600_img" class="img " src="images/地区编辑_添加/u470.png"/>
                  <!-- Unnamed () -->
                  <div id="u9601" class="text">
                    <p><span>地址</span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9602" class="ax_default table_cell">
                  <img id="u9602_img" class="img " src="images/地区编辑_添加/u472.png"/>
                  <!-- Unnamed () -->
                  <div id="u9603" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9604" class="ax_default table_cell">
                  <img id="u9604_img" class="img " src="images/地区编辑_添加/u534.png"/>
                  <!-- Unnamed () -->
                  <div id="u9605" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Table Cell) -->
                <div id="u9606" class="ax_default table_cell">
                  <img id="u9606_img" class="img " src="images/地区编辑_添加/u536.png"/>
                  <!-- Unnamed () -->
                  <div id="u9607" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Rectangle) -->
              <div id="u9608" class="ax_default box_3">
                <div id="u9608_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u9609" class="text">
                  <p><span>提交保存</span></p>
                </div>
              </div>

              <!-- Unnamed (Droplist) -->
              <div id="u9610" class="ax_default _下拉列表框">
                <select id="u9610_input">
                  <option value="汉族">汉族</option>
                  <option value="壮族">壮族</option>
                  <option value="回族">回族</option>
                  <option value="满族">满族</option>
                  <option value="维吾尔族">维吾尔族</option>
                  <option value="苗族">苗族</option>
                  <option value="彝族">彝族</option>
                  <option value="土家族">土家族</option>
                  <option value="藏族">藏族</option>
                  <option value="蒙古族">蒙古族</option>
                  <option value="侗族">侗族</option>
                  <option value="布依族">布依族</option>
                  <option value="瑶族">瑶族</option>
                  <option value="白族">白族</option>
                  <option value="朝鲜族">朝鲜族</option>
                  <option value="哈尼族">哈尼族</option>
                  <option value="黎族">黎族</option>
                  <option value="哈萨克族">哈萨克族</option>
                  <option value="傣族">傣族</option>
                  <option value="畲族">畲族</option>
                  <option value="傈僳族">傈僳族</option>
                  <option value="东乡族">东乡族</option>
                  <option value="仡佬族">仡佬族</option>
                  <option value="拉祜族">拉祜族</option>
                  <option value="佤族">佤族</option>
                  <option value="水族">水族</option>
                  <option value="纳西族">纳西族</option>
                  <option value="羌族">羌族</option>
                  <option value="土族">土族</option>
                  <option value="仫佬族">仫佬族</option>
                  <option value="锡伯族">锡伯族</option>
                  <option value="柯尔克孜族">柯尔克孜族</option>
                  <option value="景颇族">景颇族</option>
                  <option value="达斡尔族">达斡尔族</option>
                  <option value="撒拉族">撒拉族</option>
                  <option value="布朗族">布朗族</option>
                  <option value="毛南族">毛南族</option>
                  <option value="塔吉克族">塔吉克族</option>
                  <option value="普米族">普米族</option>
                  <option value="阿昌族">阿昌族</option>
                  <option value="怒族">怒族</option>
                  <option value="鄂温克族">鄂温克族</option>
                  <option value="京族">京族</option>
                  <option value="基诺族">基诺族</option>
                  <option value="德昂族">德昂族</option>
                  <option value="保安族">保安族</option>
                  <option value="俄罗斯族">俄罗斯族</option>
                  <option value="裕固族">裕固族</option>
                  <option value="乌孜别克族">乌孜别克族</option>
                  <option value="门巴族">门巴族</option>
                  <option value="鄂伦春族">鄂伦春族</option>
                  <option value="独龙族">独龙族</option>
                  <option value="赫哲族">赫哲族</option>
                  <option value="高山族">高山族</option>
                  <option value="珞巴族">珞巴族</option>
                  <option value="塔塔尔族">塔塔尔族</option>
                </select>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9611" class="ax_default" data-width="249" data-height="30">

                <!-- Unnamed (Group) -->
                <div id="u9612" class="ax_default" data-width="249" data-height="30">

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9613" class="ax_default box_2">
                    <div id="u9613_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9614" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Text Field) -->
                  <div id="u9615" class="ax_default text_field">
                    <input id="u9615_input" type="text" value=""/>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9616" class="ax_default" data-width="249" data-height="30">

                <!-- Unnamed (Group) -->
                <div id="u9617" class="ax_default" data-width="249" data-height="30">

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9618" class="ax_default box_2">
                    <div id="u9618_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9619" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Text Field) -->
                  <div id="u9620" class="ax_default text_field">
                    <input id="u9620_input" type="text" value=""/>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9621" class="ax_default" data-width="249" data-height="30">

                <!-- Unnamed (Group) -->
                <div id="u9622" class="ax_default" data-width="249" data-height="30">

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9623" class="ax_default box_2">
                    <div id="u9623_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9624" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Text Field) -->
                  <div id="u9625" class="ax_default text_field">
                    <input id="u9625_input" type="text" value=""/>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9626" class="ax_default" data-width="249" data-height="30">

                <!-- Unnamed (Group) -->
                <div id="u9627" class="ax_default" data-width="249" data-height="30">

                  <!-- Unnamed (Rectangle) -->
                  <div id="u9628" class="ax_default box_2">
                    <div id="u9628_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9629" class="text" style="display:none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (Text Field) -->
                  <div id="u9630" class="ax_default text_field">
                    <input id="u9630_input" type="text" value=""/>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u9631" class="ax_default" data-width="500" data-height="30">

                <!-- Unnamed (Rectangle) -->
                <div id="u9632" class="ax_default box_2">
                  <div id="u9632_div" class=""></div>
                  <!-- Unnamed () -->
                  <div id="u9633" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                  </div>
                </div>

                <!-- Unnamed (Text Field) -->
                <div id="u9634" class="ax_default text_field">
                  <input id="u9634_input" type="text" value=""/>
                </div>
              </div>
            </div>
          </div>
        </div>
  </body>
</html>
