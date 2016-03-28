<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<<struts:actionerror/>
<struts:form action="upload" method="post" enctype="multipart/form-data">
    　<struts:file name = "upload" label = "file:"></struts:file>
	<struts:submit value="submit"></struts:submit>
</struts:form>