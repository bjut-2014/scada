<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'spamIdentify.jsp' starting page</title>
<link rel="stylesheet" type="text/css"
	href="Styles/bootstrap-new.min.css" />
<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
<style type="text/css">
.spam {
	border: 1px solid #ccc;
	padding: 10px;
	margin: 10px;
	border-radius: 5px;
}

.spamIdentifyWorld {
	display: inline-block;
	font-size: 18px;
	font-family: "Arial", "Microsoft YaHei", "黑体", "宋体", sans-serif;
	border: 1px solid silver;
	padding: 10px;
	margin: 10px;
	border-radius: 3px;
	cursor: pointer;
	position: relative;
}

.spamIdentifyWorld:hover {
	background: #eee;
}

.spamIdentifyWorld a {
	position: absolute;
	display: none;
	background: #eee url("img/glyphicons-halflings.png") no-repeat -312px 0;
	width: 15px;
	height: 15px;
	right: 0;
	top: 0;
}
</style>
</head>

<body>
	<div class="spam">
		<div>
			<span>添加敏感词：</span><br>
			<form   class="form-inline" action="spamIdentifyAction_save.action" method="post">
				<input  class="form-control" type="text" name="sensitiveWord" /> 
				<input type="submit" class="btn btn-default" style="margin-top: 8px" value="提交"/>
			</form>
		</div>
		<div>
			<!--<span>已有的敏感词：</span>-->
			<s:iterator value="#request.spamIdentify">
				<span onmouseout="hideDelete(this)"
					onmouseover="displayDelete(this)" class="spamIdentifyWorld">
					${field} <a
					href="spamIdentifyAction_delete.action?spamIdentifyId=${id}"></a>
				</span>
			</s:iterator>
		</div>
	</div>
	<script type="text/javascript">
		function displayDelete(span) {
			var a = span.getElementsByTagName("a")[0];
			a.style.display = "block";
		}
		function hideDelete(span) {
			var a = span.getElementsByTagName("a")[0];
			a.style.display = "none";
		}
	</script>

	<div class="spam">
		<div>
			<span>添加至黑名单：</span><br>
			<form action="mailBlacklistAction_save.action"  class="form-inline" method="post">
				名称：<input type="text" name="mailName"  class="form-control" />&nbsp;&nbsp;&nbsp; 
				地址：<input type="text" name="mailAddress"  class="form-control" />&nbsp; 
				<input type="submit" class="btn btn-default" style="margin-top: 8px" value="提交">
			</form>
		</div>
		<div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>名称</th>
						<th>地址</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="#request.mailBlacklist" var="mailBlacklist">
						<tr>
							<td><s:property value="#mailBlacklist.mailName" /></td>
							<td><s:property value="#mailBlacklist.mailAddress" /></td>
							<td><a
								href="mailBlacklistAction_delete.action?id=<s:property value='#mailBlacklist.id'/>"><button
										type="button" class="btn btn-info btn-sm">删除</button></a></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>
