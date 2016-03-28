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
    <s:form action="PublishAction_update.action" method="post" cssClass="form-horizontal" onsubmit="return check();" role="form" value="#request.Publish">
    	<s:hidden name = "publish.id" value = "%{#request.Publish.id}" theme="simple"></s:hidden>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="消息标题"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="publish.title" cssClass="form-control"  theme="simple" value = "%{#request.Publish.title}" ></s:textfield>
    		</div>
    	</div>
      	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="类         型"></s:label>
    		<div class="col-sm-10">
    			<s:select name="publish.type"  cssClass="form-control" list="{'党群工作','行政管理','经营管理','生产技术管理','财务审计','人事劳资'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="消息内容 "></s:label>
    		<div class="col-sm-10">
    			<s:textarea name="publish.context" theme="simple" cssClass="form-control" cols="100" rows="10" value ="%{#request.Publish.context}"/>
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
