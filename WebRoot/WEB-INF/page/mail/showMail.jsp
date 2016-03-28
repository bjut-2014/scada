<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.mail.Multipart"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="com.scada.utils.MailUtils"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Part"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'showMail.jsp' starting page</title>
    <style type="text/css">
    	#mailContent{
    		padding:10px 8px;
    	}
    	#mailHead span{
    		font: bold 14px "lucida Grande",Verdana,"Microsoft YaHei";
    	}
    	#mailHead p{
    		font: normal 12px "lucida Grande",Verdana,"Microsoft YaHei";
  			color: #7f7f7f;
    	}
    </style>
  </head>
  
  <body>
  	<%
    Message message = (Message)request.getAttribute("message");
    MimeMessage msg = (MimeMessage) message;
    %>
  	<div id="mailHead">
  		<span><%=msg.getSubject() %></span>
  		<p>发件人：<%=msg.getFrom()[0] %></p>
  		<p>时间：<%=new SimpleDateFormat("yyyy年MM月dd日 E HH:mm").format(msg.getSentDate()) %></p>
  		<p>收件人：<%=MailUtils.getReceiveAddress(msg, null) %></p>
  	</div>
  	<hr>
  	<div id="mailContent">
  		<%
	    /*StringBuffer content = new StringBuffer(30); 
	    MailUtils.getMailTextContent(msg, content); 
	    out.print(content);*/
	    Part part = msg;
	  	//out.print("邮件类型："+part.getContentType());
	  	Multipart multipart = (Multipart) part.getContent();
	  	//out.print("<br>");
	  	out.print(multipart.getBodyPart(1).getContent());
	  	//out.print("<hr>");
	    %>
  	</div>
    
    
  </body>
</html>
