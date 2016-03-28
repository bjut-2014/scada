<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'sessionout.jsp' starting page</title>
  	<link rel="stylesheet" type="text/css"
	href="Styles/bootstrap-new.min.css" />
	<style type="text/css">
		.mr{
			margin-right: 10px;
		}
	</style>
  	<script type="text/javascript">
  	setTimeout(function() {
  		// IE
  		if(document.all) {
  			document.getElementById("tz").click();
  		}
  		// 其它浏览器
  		else {
  			var e = document.createEvent("MouseEvents");
  			e.initEvent("click", true, true);
  			document.getElementById("tz").dispatchEvent(e);
  		}
  	}, 2000);
  	</script>
  </head>
  
  <body>
	  <div class="jumbotron mr">
	  	<div class="container">
	  		<h1>SESSION失效了</h1>
	      	<p>请重新登录，2秒后会自动跳转到登录页面</p>
	      	<p>
	      		<a class="btn btn-primary btn-lg" id="tz" target="_top" href="index.jsp">重新登录</a>
	      	</p>
	   	</div>
	  </div>
  </body>
</html>
