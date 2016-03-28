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
   <s:form action="CaseAction_update.action" method="post" cssClass="form-horizontal" onsubmit="return check();" role="form" value="#request.elecase">
    	<s:hidden name = "elecase.id" value = "%{#request.elecase.id}" theme="simple"></s:hidden>
    	<s:hidden name = "elecase.type" value = "%{#request.elecase.type}" theme="simple"></s:hidden>
    	<s:hidden name = "elecase.time" value = "%{#request.elecase.time}" theme="simple"></s:hidden>
    	<s:hidden name = "elecase.user" value = "%{#request.elecase.user}" theme="simple"></s:hidden>
    	<s:hidden name = "elecase.action" value = "%{#request.elecase.action}" theme="simple"></s:hidden>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="时间"></s:label>
    		<div class="col-sm-10">
    			<s:label name="elecase.time" cssClass="form-control"  theme="simple" value ="%{#request.elecase.time}" ></s:label>
    		</div>
    	</div>
    		<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="操作者"></s:label>
    		<div class="col-sm-10">
    			<s:label name="elecase.user" cssClass="form-control"  theme="simple" value ="%{#request.elecase.user}" ></s:label>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="操作"></s:label>
    		<div class="col-sm-10">
    			<s:label name="elecase.action" autosize="true" cssClass="form-control"  theme="simple" value ="%{#request.elecase.action}" ></s:label>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="说明"></s:label>
    		<div class="col-sm-10">
    			<s:textarea name="elecase.info" cssClass="form-control"  theme="simple" value = "%{#request.elecase.info}" ></s:textarea>
    		</div>   		
    	</div>
    	<div class="form-group">
      		<div class="col-sm-offset-2 col-sm-10">
      			<s:submit cssClass="btn btn-default" value="添加" theme="simple"/>
      		</div>
   		</div>     	
      	
    </s:form>
     <script type="text/javascript">
	    function check(){
	        if(confirm("你确定添加吗？")){
	            return true;
	        }
	        return false;
	     }
	</script>
  </body>
</html>
