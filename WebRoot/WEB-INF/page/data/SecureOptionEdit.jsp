<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <meta charset="utf-8" />
    <title>性能采集</title>
   	<link rel="stylesheet" type="text/css" href="Styles/bootstrap-new.min.css" />
  	<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
  	<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>

</head>
  <body>
    <s:form action="WarningAction_secureupdate.action" method="post" cssClass="form-horizontal" onsubmit="return check();" role="form" value="#request.warning">
    	<s:hidden name = "warning.id" value = "%{#request.warning.id}" theme="simple"></s:hidden>
    	<s:hidden name = "warning.warning_time" value = "%{#request.warning.warning_time}" theme="simple"></s:hidden>
    	<s:hidden name = "type" id="type" value = "secure" theme="simple"></s:hidden>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="时间"></s:label>
    		<div class="col-sm-10">
    			<s:label name="warning.warning_time" cssClass="form-control"  theme="simple" value ="%{#request.warning.warning_time}" ></s:label>
    		</div>
    	</div>
    		<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="类型"></s:label>
    		<div class="col-sm-10">
    			<s:select name="warning.warning_type" cssClass="form-control"  list="{'人工类告警','工况类告警','其他类告警'}" theme="simple"></s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="子类型"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="warning.warning_subtype" cssClass="form-control"  theme="simple" value = "%{#request.warning.warning_subtype}" ></s:textfield>
      		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="告警等级"></s:label>
    		<div class="col-sm-10">
    			<s:select name="warning.warning_level"  cssClass="form-control" list="{'重要','次要','一般'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="厂站名"></s:label>
    		<div class="col-sm-10">
    			<s:select name="warning.station"  cssClass="form-control" list="{'测试厂站01','测试厂站02','测试厂站03','测试厂站04','测试厂站05','测试厂站06','测试厂站07','测试厂站08','测试厂站09','测试厂站10','测试厂站11','测试厂站12'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="装置名"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="warning.device" cssClass="form-control"  theme="simple" value = "%{#request.warning.device}" ></s:textfield>
    			
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="对象名"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="warning.warning_obj" cssClass="form-control"  theme="simple" value = "%{#request.warning.warning_obj}" ></s:textfield> 		
   		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="告警信息"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="warning.warning_info" cssClass="form-control"  theme="simple" value = "%{#request.warning.warning_info}" ></s:textfield> 	
    		</div>
    	</div>
    	<div class="form-group">
      		<div class="col-sm-offset-2 col-sm-10">
      			<s:submit cssClass="btn btn-default" value="修改" theme="simple"/>
      		</div>
   		</div>     	
      	
    </s:form>
     <script type="text/javascript">
	    function check(){
	        if(confirm("你确定修改吗？")){
	            return true;
	        }
	        return false;
	     }
	</script>
  </body>
</html>
