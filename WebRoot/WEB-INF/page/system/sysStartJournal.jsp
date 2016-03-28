<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'sysStartJournal.jsp' starting page</title>
    <link rel="stylesheet" type="text/css"
	href="Styles/bootstrap-new.min.css" />
<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
<style type="text/css">
	.fl{
		float: right;	
	}
	.mt{
		margin-top: -15px;
	}
	.ta{
		text-align: center;
	}
	.ff{
		font-family: Arial;
		padding: 10px;
	}
</style>
  </head>
  
  <body>
  	<h2 class="ta">系统启动日志信息</h2>
  		<a class="fl mt" href="sysLogAction_show.action?pageNo=1">显示用户日志信息</a>
  	<hr>
  	<div class="ff">
    <%
    	try{
    		File file = new File("D:\\apache-tomcat-7.0.62\\webapps\\scada\\upload\\logs.log");
        	String encoding = "GBK";
        	if(file.isFile()&&file.exists()){
        		InputStreamReader read = new InputStreamReader(new FileInputStream(file),encoding);
        		BufferedReader bufferReader = new BufferedReader(read);
        		String lineText = null;
        		while((lineText = bufferReader.readLine())!=null){
        			out.println(lineText+"<br>");
        		}
        		read.close();
        	}else{
        		out.println("找不到指定的文件！");
        	}
    	}catch(Exception e){
    		out.println("读取文件内容出错！");
    	}
    %>
    </div>
  </body>
</html>
