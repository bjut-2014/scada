<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
<head>
<title>My JSP 'user.jsp' starting page</title>
<link rel="stylesheet" type="text/css"
	href="Styles/bootstrap-new.min.css" />
<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
<style type="text/css">
	.goToUserTightList h2{
		display: inline-block;
		margin-left: 5px;
	}
	.goToUserTightList a{
		display: inline-block;
		float: right;
		font-size: 18px;
		margin-right: 5px;
		margin-top: 5px;
	}
</style>
</head>

<body>
	<div class="goToUserTightList">
		<h2>
			用户列表
		</h2>
		<a  href="userRightAction_list.action">显示权限列表</a>
	</div>
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>姓名</th>
				<th>性别</th>
				<th>出生日期</th>
				<th>家庭住址</th>
				<th>联系电话</th>
				<th>电子邮件</th>
				<th>是否在职</th>
				<th>入职时间</th>
				<th>备注</th>
				<th>权限等级</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="#request.userList" var="userList">
			<tr>
				<td><s:property value="#userList.username" /> </td>
				<td><s:property value="#userList.sex" /> </td>
				<td><s:property value="#userList.birthday" /> </td>
				<td><s:property value="#userList.address" /> </td>
				<td><s:property value="#userList.contactTel" /> </td>
				<td><s:property value="#userList.email" /> </td>
				<td><s:property value="#userList.isDuty" /> </td>
				<td><s:date name="#userList.onDutyDate" format="yyyy-MM-dd" /> </td>
				<td><s:property value="#userList.remark" /> </td>
				<td><s:property value="#userList.rightsId" /> </td>
			</tr>
			</s:iterator>
		</tbody>
	</table>
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalAdd">添加新的用户</button>
	
	<!-- 添加新的用的弹出框 -->
	<div class="modal fade" id="myModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	          <h4 class="modal-title" id="myModalLabel">添加新的用户</h4>
	        </div>
	        <form action="userAction_add.action" method="post">
		        <div class="modal-body clearfix">
		        	<div class="modal-body-left" style="float: left;width: 190px;">
		        		<div>&nbsp;&nbsp;&nbsp;&nbsp;员工姓名：<input name="user.username" type="text" class="form-control"></div>
		        		<div>初始登录账号：<input name="user.loginName"  type="text" class="form-control"></div>
		        		<div>联系电话：<input name="user.contactTel" type="text" class="form-control"></div>
		        		<div>出生日期：<input name="user.birthday"  type="text" class="form-control"></div>
		        		<div>权限等级：<select name="userRightsId" class="form-control">
		        			<s:iterator value="#request.userRightIDs" var="userRightIDs">
		        				<option><s:property value="#userRightIDs" /></option>
		        			</s:iterator>
		        		</select></div>
		        	</div>
		        	<div class="modal-body-right" style="float: right;;width: 190px;">
		        		<div>性别：<input name="user.sex" type="text" class="form-control"></div>
		        		<div>初始登录密码：<input name="user.loginPwd" type="text" class="form-control"></div>
		        		<div>联系地址：<input name="user.address" type="text" class="form-control"></div>
		        		<div>电子邮件：<input name="user.email" type="text" class="form-control"></div>
		        		<div>备注：<input name="user.remark" type="text" class="form-control"></div>
		        	</div>
		        </div>
		        <div class="modal-footer">
		          <input type="button" class="btn btn-primary" data-dismiss="modal" style="margin-top: 10px" value="关闭" />
		          <input type="submit" class="btn btn-primary" value="添加" />
		        </div>
	        </form>
	      </div>
	    </div>
	  </div>
</body>
</html>
