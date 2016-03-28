<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>邮箱登陆</title>
    <link href="Styles/bootstrap-new.min.css" rel="stylesheet">
    <link href="Styles/login.css" rel="stylesheet">
    <style type="text/css">
    .errorMessage{
    	list-style: none;
    	color: red;
    	font-size: 20px;
    }
    </style>
  </head>
  
  <body>
    <div class="container">
      <form class="form-signin" action="mailLogin.action">
        <h2 class="form-signin-heading">邮箱登陆</h2><br>
        <!-- <select name="host">
        	<option>pop3.sina.com</option>
        	<option>pop3.bjut.edu.cn</option>
        	<option>pop3.163.com</option>
        	<option>pop3.scada.com</option>
        </select> -->
        <label for="inputEmail" class="sr-only">邮箱账号</label>
        <input type="text" id="inputEmail" name="username" class="form-control" placeholder="用户名" required autofocus><br>
        <label for="inputPassword" class="sr-only">邮箱密码</label>
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="密码" required>
      	<s:fielderror name="error" />
        <input type="submit" value="登陆" class="btn btn-lg btn-primary btn-block">
      </form>
    </div>
  </body>
</html>
