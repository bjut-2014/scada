<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'sysManage.jsp' starting page</title>
<link rel="stylesheet" type="text/css"
	href="Styles/bootstrap-new.min.css" />
<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
<script type="text/javascript">
</script>
<style type="text/css">
	.mt{
		margin-top: 8px;
	}
</style>
</head>

<body>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">分页设置</h3>
		</div>
		<div class="panel-body">
			<h4>
				<span class="label label-default">当前每页显示的信息个数：</span>
				<span class="label label-primary"><s:property value="#request.pageSize" /></span>
				<span class="label label-default">当前每页的页码显示个数：</span>
				<span class="label label-primary"><s:property value="#request.pageWidth" /></span>
			</h4>
			<form class="form-inline" action="sysManageAction_page.action">
				<input type="text" class="form-control" name="pageSize" placeholder="页面中的信息个数"/>
				<input type="text" class="form-control" name="pageWidth" placeholder="页面中页码的个数"/>
			   	<input type="submit" class="btn btn-default mt" value="保存" />
			</form>
		</div>
	</div>

	<div class="panel panel-info">
		<div class="panel-heading">
			<h3 class="panel-title">session设置</h3>
		</div>
		<div class="panel-body">
			<h4>
				<span class="label label-default">当前session的有效时间：</span>
				<span class="label label-primary"><s:property value="#request.sessionValidTime" /></span>
			</h4>
			<form class="form-inline" action="sysManageAction_sessionTime.action">
			   <input type="text" class="form-control" name="sessionTime" placeholder="请输入session的有效时间"/>
			   <input type="submit" class="btn btn-default mt" value="保存" />
			</form>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title">数据备份</h3>
		</div>
		<div class="panel-body">
			<form class="form-inline" action="sysManageAction_dataBackup.action">
				<input type="text" class="form-control" name="databaseFilePath" value="<%=request.getSession().getServletContext().getRealPath("/")%>upload\" readonly="readonly"/>
				<input type="submit" class="btn btn-default mt" onclick="alert('已导出到当前项目的upload路径下')" value="备份" />
			</form>
		</div>
	</div>
	
	<div class="panel panel-warning">
	   <div class="panel-heading">
	      <h3 class="panel-title">日志备份</h3>
	   </div>
	   <div class="panel-body">
	      <a href="sysLogAction_show.action?pageNo=1">日志信息可以在系统日志管理模块查看</a>
	      <button class="btn btn-default" onclick="alert('已导出到当前项目的upload路径下')">导出</button>
	   </div>
	</div>
	
	<!-- 
	<div class="panel panel-danger">
	   <div class="panel-heading">
	      <h3 class="panel-title">面板标题</h3>
	   </div>
	   <div class="panel-body">
	      这是一个基本的面板
	   </div>
	</div>
	 -->
</body>
</html>
