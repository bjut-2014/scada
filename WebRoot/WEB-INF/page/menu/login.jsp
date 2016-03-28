<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>登录</title>
<link href="Styles/bootstrap-new.min.css" rel="stylesheet">
<!-- <link href="Styles/login.css" rel="stylesheet"> -->
<style type="text/css">
body{
	background: -webkit-linear-gradient(180deg, #7b8aa1 , #586683); /* Safari 5.1 - 6.0 */
	background: -o-linear-gradient(180deg, #7b8aa1, #586683); /* Opera 11.1 - 12.0 */
	background: -moz-linear-gradient(180deg, #7b8aa1, #586683); /* Firefox 3.6 - 15 */
	background: linear-gradient(180deg, #7b8aa1 , #586683) no-repeat; /* 标准的语法 */
	width: 100%;
	height: 100%;
	background-attachment: fixed;
}
#linearDiv{
	height:800px;
}
#loginbg{
	margin:250px auto;
	width:664px;
	height:358px;
	background: url("img/login/loginbg3.png") no-repeat;
}
.logintitle{
	margin-left:12px;
	padding-top:50px;
	margin-bottom:30px;
	font-size: 35px;
	
}
.errorMessage {
	list-style: none;
	color: red;
	font-size: 20px;
}
.tbl{
	width: 100%;
	height: 100%;
}
.wd{
	margin-left:12px;
	width:300px;
}
.mt{
	margin-top: 10px;
}
.footer{
	background: url("img/login/loginbg4.png") repeat-x;
	position: absolute;
    bottom: 0;
    width: 100%;
    height:130px;
    text-align: center;
    color: #999;
    padding: 18px 0;
}
</style>
</head>

<body>
	<div id="container">
		<form action="loginAction_loginValidate" method="post">
			<div id="loginbg">
				<div class="logintitle">
					电力云安全监控平台
				</div>
				<div class="wd">
					<label for="inputEmail" class="sr-only">用户名</label>  
			        <input name="username" type="text" id="inputEmail" class="form-control" placeholder="用户名" required><br>
		       	</div>
		       	<div class="wd">
			        <label for="inputPassword" class="sr-only">密码</label>
			        <input name="password" type="password" id="inputPassword" class="form-control" placeholder="密码" required>
				</div>
				<s:fielderror name="error" />
				<div class="wd mt">
		        	<input type="submit" value="登录"  class="btn btn-lg btn-primary btn-block" />
				</div>
			</div>
		</form>
	</div>
	<div class="footer">
		Copyright © 14级项目小组
	</div>
	<!--  
    <div class="container">
      <form class="form-signin" action="loginAction_loginValidate" method="post">
        <h2 class="form-signin-heading" >电力云安全监控平台</h2><br>
        <label for="inputEmail" class="sr-only">用户名</label>  
        <input name="username" type="text" id="inputEmail" class="form-control" placeholder="用户名" required><br>
        <label for="inputPassword" class="sr-only">密码</label>
        <input name="password" type="password" id="inputPassword" class="form-control" placeholder="密码" required>
        <s:fielderror name="error" />
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住密码
          </label>
        </div>
        <input type="submit" value="登录"  class="btn btn-lg btn-primary btn-block" />
      </form>
    </div>
    -->
	<!--
	<form action="loginAction_loginValidate" method="post">
		<table class="tbl">
			<tr>
				<td>
					<table class="tbl">
						<tr>
							<td height="561" style="background:url(img/login/lbg.gif)">
								<table width="940" border="0" align="center" >
									<tr>
										<td height="238" style="background:url(img/login/login01.jpg)">
											<img style="margin-left: 270px;margin-bottom: 20px" alt="系统logo图表" src="sysConf/logo.png">
										</td>
									</tr>
									<tr>
										<td height="190">
											<table width="100%">
												<tr>
													<td width="208" height="190" style="background:url(img/login/login02.jpg)">&nbsp;</td>
													<td width="518" style="background:url(img/login/login03.jpg)">
														<table width="320" align="center">
															<tr>
																<td width="40" height="50"><img
																	src="img/login/user.gif" width="30" height="30"></td>
																<td width="38" height="50"></td>
																<td width="242" height="50"><input type="text"
																	name="username" id="inputEmail" placeholder="用户名" class="form-control"
																	style=" background:url(img/login/inputbg.gif) repeat-x; "></td>
															</tr>
															<tr>
																<td height="50"><img src="img/login/password.gif"
																	width="28" height="32"></td>
																<td height="50"></td>
																<td height="50"><input type="password"
																	name="password" id="inputPassword" placeholder="密码" class="form-control"
																	style=" background:url(img/login/inputbg.gif) repeat-x; "></td>
															</tr>
															<tr>
																<td height="40">&nbsp;</td>
																<td height="40">&nbsp;</td>
																<td height="60"><input type="submit" value="登录"  class="btn btn-lg btn-primary btn-block" /></td>
															</tr>
														</table>
													</td>
													<td width="214" style="background:url(img/login/login04.jpg)">&nbsp;</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td height="133" style="background:url(img/login/login05.jpg)">&nbsp;</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
      </form>
      -->
      
    <!-- 
    <form action="loginAction_loginValidate" method="post">
	<table class="tbl">
		<tr>
			<td>
				<table class="tbl">
					<tr>
						<td height="561" style="background:url(img/login/lbg.gif)">
							<table width="940" border="0" align="center" >
								<tr>
									<td height="238" style="background:url(img/login/login01.jpg)">
										<img style="margin-left: 270px;margin-bottom: 20px" alt="logo" src="sysConf/logo.png">
									</td>
								</tr>
								<tr>
									<td height="190">
										<table width="100%">
											<tr>
												<td width="208" height="190" style="background:url(img/login/login02.jpg)">&nbsp;</td>
												<td width="518" style="background:url(img/login/login03.jpg)">
													<table width="320" align="center">
														<tr>
															<td width="40" height="50"><img
																src="img/login/user.gif" width="30" height="30"></td>
															<td width="38" height="50"></td>
															<td width="242" height="50"><input type="text"
																name="username" id="inputEmail" placeholder="用户名" class="form-control"
																style=" background:url(img/login/inputbg.gif) repeat-x; "></td>
														</tr>
														<tr>
															<td height="50"><img src="img/login/password.gif"
																width="28" height="32"></td>
															<td height="50"></td>
															<td height="50"><input type="password"
																name="password" id="inputPassword" placeholder="密码" class="form-control"
																style=" background:url(img/login/inputbg.gif) repeat-x; "></td>
														</tr>
														<tr>
															<td height="40">&nbsp;</td>
															<td height="40">&nbsp;</td>
															<td height="60"><input type="submit" value="登录"  class="btn btn-lg btn-primary btn-block" /></td>
														</tr>
													</table>
												</td>
												<td width="214" style="background:url(img/login/login04.jpg)">&nbsp;</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="133" style="background:url(img/login/login05.jpg)">&nbsp;</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	</form>
     --> 
</body>
</html>
