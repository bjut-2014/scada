<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'sysConfigure.jsp' starting page</title>
<link rel="stylesheet" type="text/css"
	href="Styles/bootstrap-new.min.css" />
<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
<style type="text/css">
.mr {
	margin-right: 10px;
}

.ml{
	margin-left: 10px;
}

.mt {
	margin-top: 10px;
}
</style>
</head>

<body>
	<form class="form-horizontal" action="sysConfigureAction_save.action" enctype="multipart/form-data">
		<div class="input-group mt">
			<span class="input-group-addon">系统名称</span> 
			<input type="text" name="sysConfig.sysName" class="form-control" placeholder="系统名称" value="<s:property value="#request.sysConfigInfo.sysName"/>">
		</div>
		<div class="input-group mt">
			<span class="input-group-addon">系统标题</span> 
			<input type="text" name="sysConfig.sysTitle" class="form-control" placeholder="系统标题" value="<s:property value="#request.sysConfigInfo.sysTitle"/>">
		</div>
		
		<div class="input-group mt">
			<span class="input-group-addon">logo地址</span> 
			<input name="sysConfig.sysLogoAddr" type="file" class="form-control" value="<s:property value='#request.sysConfigInfo.sysLogoAddr'/>"/>
		</div>
		
		<div class="input-group mt">
			<span class="input-group-addon">版权信息<br>(支持html)</span> 
			<textarea name="sysConfig.sysBottomMsg" class="form-control" rows="3" placeholder="系统底部信息"><s:property value="#request.sysConfigInfo.sysBottomMsg"/></textarea>
		</div>
		
		<input type="submit" class="btn btn-primary mt" value="保存" />
		
	</form>
	 <!-- 
	 <s:form action="sysConfigureAction_save.action" method="post" enctype="multipart/form-data" >
		<s:textfield name="sysConfig.sysName" label="系统名称" size="20"/>
		<s:file name="upload" label="形象" size="20"/>
		<s:textfield name="sysConfig.sysTitle" label="系统标题" size="20"/>
		<s:textfield name="sysConfig.sysBottomMsg" label="版权信息<br>(支持html)" size="20" />
		<s:submit value="确定录入" align="center" />
	</s:form> 
	-->
</body>
</html>
