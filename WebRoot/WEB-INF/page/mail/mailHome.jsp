<%@page import="javax.mail.Multipart"%>
<%@page import="javax.mail.internet.MimeMultipart"%>
<%@page import="javax.mail.Part"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page
	import="com.scada.utils.MailUtils,javax.mail.Message,javax.mail.internet.MimeMessage"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'mailHome.jsp' starting page</title>
<link rel="stylesheet" type="text/css"
	href="Styles/bootstrap-new.min.css" />
<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
<style type="text/css">
.mr {
	margin-right: 10px;
}

.ml {
	margin-left: 10px;
}

.mt {
	margin-top: 10px;
}

</style>
<script type="text/javascript">
    	function showMailMessage(i){
    		self.location("mailMessgaeShow.action?id="+i);
    	}
    </script>
</head>

<body>
	<ul id="myTab" class="nav nav-tabs">
	   <li class="active">
	      <a href="#mailBox" data-toggle="tab">收件箱</a>
	   </li>
	   <!-- <li><a href="#mailGroup" data-toggle="tab">群邮件</a></li> -->
	   <li><a href="#mailSend" data-toggle="tab">已发送</a></li>
	   <li><a href="#mailDelete" data-toggle="tab">垃圾箱</a></li>
	</ul>
	
	<%
		Message[] messages = (Message[]) request
				.getAttribute("mailMessages");
	%>
	<div class="tab-content mt">
		<div id="mailBox" class="tab-pane fade in active mt" >
			<table class="table  table-hover  mt">
				<thead>
			      <tr>
			         <th>发件人</th>
			         <th>主题</th>
			         <th>时间</th>
			         <th>操作</th>
			      </tr>
			   </thead>
			   <tbody>
				<%
					for (int i = 0, count = messages.length; i < count; i++) {
						MimeMessage msg = (MimeMessage) messages[i];
				%>
				<tr onclick="showMailMessage(<%=i%>)">
					<td>
						<%
							out.print(msg.getFrom()[0].toString());
						%>
					</td>
					<td>
						<%
							out.print(msg.getSubject());
						%>
					</td>
					<td>
						<%
							out.print(new SimpleDateFormat("yyyy年MM月dd日 E HH:mm")
										.format(msg.getSentDate()));
						%>
					</td>
					<td>
						删除
					</td>
				</tr>
				<%
					}
				%>
				</tbody>
			</table>
		</div>
		<div class="tab-pane fade" id="mailSend">
	      
	   </div>
	   <div class="tab-pane fade" id="mailDelete">
	   
	   </div>
	</div>
</body>
</html>
