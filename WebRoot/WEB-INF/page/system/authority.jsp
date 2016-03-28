<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css"
	href="Styles/bootstrap-new.min.css" />
<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
<style type="text/css">
#addRights {
	display: none;
	background-color: #e7e7e7;
	border: 5px solid silver;
	position: absolute;
	top: 200px;
	left: 50px;
	padding: 10px;
	border-radius: 10px;
	z-index: 99999;
}

#addRights div {
	width: inherit;
}

#addRights div span {
	display: block;
	font-size: 18px;
	color: #575757;
	font-weight: bold;
	width: inherit;
	padding-bottom: 5px;
	border-bottom: 1px solid #000;
}

#addRights div span button {
	display: inline-block;
	width: 20px;
	height: 20px;
	background: url("img/glyphicons-halflings.png") no-repeat -311px 0;
	float: right;
}

#userRightForm {
	margin-top: 10px;
	font-size: 20px;
	font-weight: bold;
}

#userRightForm select {
	margin: 10px;
}

#userRightForm input {
	font-size: 20px;
}

.rightsDialogButton {
	border: 1px solid #999999;
	border-radius: 5px;
	box-shadow: 4px 4px 3px #999999;
	float: right;
	margin: 10px;
}

#userRightsMasklayer {
	display: none;
	position: absolute;
	background-color: #ccc;
	width: 100%;
	height: 100%;
	z-index: 9999;
	filter: alpha(opacity = 50); /*ie滤镜，透明度50%*/
	-moz-opacity: 0.5; /*Firefox私有，透明度50%*/
	opacity: 0.5; /*其他，透明度50%*/
}

#close_right_user {
	display: inline-block;
	width: 20px;
	height: 20px;
	float: right;
}

#close_right_user a {
	width: 15px;
	height: 15px;
	display: inline-block;
	background: url("img/glyphicons-halflings.png") no-repeat -311px 0;
}

.goToUserList h2 {
	display: inline-block;
	margin-left: 5px;
}

.goToUserList a {
	display: inline-block;
	float: right;
	font-size: 18px;
	margin-right: 5px;
	margin-top: 5px;
}
</style>

</head>
<body>

	<!-- 遮罩层 -->
	<div id="userRightsMasklayer"></div>

	<div class="goToUserList">
		<h2>权限列表</h2>
		<a href="userAction_list.action">显示用户列表</a>
	</div>

	<!-- 显示已有的权限 -->
	<s:iterator value="#request.userList" var="userRights">
		<div class="panel panel-default">
			<div class="panel-heading">
				权限等级
				<s:property value="#userRights.rightId" />
				<div id="close_right_user">
					<a
						href="userRightAction_delete.action?id=<s:property value='#userRights.id'/>&rightId=<s:property  value='#userRights.rightId'/>"
						title="delete"></a>
				</div>
			</div>

			<div class="panel-body">
				<div class="checkbox">
					<s:if test="#userRights.dataAcquisition==1">
						<label> <input type="checkbox" checked>
							数据采集分析处理&nbsp;&nbsp;
						</label>
					</s:if>
					<s:else>
						<label> <input type="checkbox">
							数据采集分析处理&nbsp;&nbsp;
						</label>
					</s:else>
					<s:if test="#userRights.coordinatedDispatch==1">
						<label> <input type="checkbox" checked>
							协调调度&nbsp;&nbsp;
						</label>
					</s:if>
					<s:else>
						<label> <input type="checkbox"> 协调调度&nbsp;&nbsp;
						</label>
					</s:else>
					<s:if test="#userRights.unifiedDatabase==1">
						<label> <input type="checkbox" checked>
							统一信息库&nbsp;&nbsp;
						</label>
					</s:if>
					<s:else>
						<label> <input type="checkbox"> 统一信息库&nbsp;&nbsp;
						</label>
					</s:else>
					<s:if test="#userRights.applicationShow==1">
						<label> <input type="checkbox" checked>
							应用展示&nbsp;&nbsp;
						</label>
					</s:if>
					<s:else>
						<label> <input type="checkbox"> 应用展示&nbsp;&nbsp;
						</label>
					</s:else>
					<s:if test="#userRights.serviceOperation==1">
						<label> <input type="checkbox" checked>
							业务运营&nbsp;&nbsp;
						</label>
					</s:if>
					<s:else>
						<label> <input type="checkbox"> 业务运营&nbsp;&nbsp;
						</label>
					</s:else>
					<s:if test="#userRights.customerService==1">
						<label> <input type="checkbox" checked>
							客户服务系&nbsp;&nbsp;
						</label>
					</s:if>
					<s:else>
						<label> <input type="checkbox"> 客户服务系&nbsp;&nbsp;
						</label>
					</s:else>
					<s:if test="#userRights.comprehensiveOffice==1">
						<label> <input type="checkbox" checked>
							综合办公&nbsp;&nbsp;
						</label>
					</s:if>
					<s:else>
						<label> <input type="checkbox"> 综合办公&nbsp;&nbsp;
						</label>
					</s:else>
					<s:if test="#userRights.wanSystem==1">
						<label> <input type="checkbox" checked>
							广域网管理&nbsp;&nbsp;
						</label>
					</s:if>
					<s:else>
						<label> <input type="checkbox"> 广域网管理&nbsp;&nbsp;
						</label>
					</s:else>
					<s:if test="#userRights.websiteSystem==1">
						<label> <input type="checkbox" checked>
							网站系统管理&nbsp;&nbsp;
						</label>
					</s:if>
					<s:else>
						<label> <input type="checkbox"> 网站系统管理&nbsp;&nbsp;
						</label>
					</s:else>
					<s:if test="#userRights.mailSystem==1">
						<label> <input type="checkbox" checked>
							邮件系统管理&nbsp;&nbsp;
						</label>
					</s:if>
					<s:else>
						<label> <input type="checkbox"> 邮件系统管理&nbsp;&nbsp;
						</label>
					</s:else>
				</div>
			</div>
		</div>
	</s:iterator>
	<script type="text/javascript">
		var checkboxes = document.getElementsByTagName("input");
		for (var i = 0; i < checkboxes.length; i++) {
			checkboxes[i].disabled = true;
		}
	</script>
	<button type="button" class="btn btn-primary btn-sm"
		style="float: left; margin-top: -5px;" onclick="openRightAddDialog()">添加新的权限</button>



	<!-- dialog框 默认为隐藏，单击button按钮后弹出 -->
	<div id="addRights">
		<div>
			<span>添加新的权限
				<button onclick="closeRightAddDialog()"></button>
			</span>
		</div>
		<form id="userRightForm" action="userRightAction_add.action"
			method="post" onsubmit="return checkSubmit();">
			权限等级: <select name="rightId">
				<s:iterator value="#request.userRightNotUse" var="rightsId">
					<option><s:property value="#rightsId" /></option>
				</s:iterator>

			</select> <br /> <label> <input type="checkbox"
				name="dataAcquisition"> 数据采集分析处理&nbsp;&nbsp;
			</label> <label> <input type="checkbox" name="coordinatedDispatch">
				协调调度 &nbsp;&nbsp;
			</label> <label> <input type="checkbox" name="unifiedDatabase">
				统一信息库&nbsp;&nbsp;
			</label> <label> <input type="checkbox" name="applicationShow">
				应用展示&nbsp;&nbsp;
			</label> <label> <input type="checkbox" name="serviceOperation">
				业务运营&nbsp;&nbsp;
			</label> <label> <input type="checkbox" name="customerService">
				客户服务系&nbsp;&nbsp;
			</label> <label> <input type="checkbox" name="comprehensiveOffice">
				综合办公&nbsp;&nbsp;
			</label> <label> <input type="checkbox" name="wanSystem">
				广域网管理&nbsp;&nbsp;
			</label> <label> <input type="checkbox" name="websiteSystem">
				网站系统管理&nbsp;&nbsp;
			</label> <label> <input type="checkbox" name="mailSystem">
				邮件系统管理&nbsp;&nbsp;
			</label> <br> <input type="reset" value="重置" class="rightsDialogButton" />
			<input type="submit" value="添加" class="rightsDialogButton" />
		</form>
	</div>
	<!-- 添加权限的脚本 -->
	<script type="text/javascript">
		function closeRightAddDialog() {
			document.getElementById("userRightsMasklayer").style.display = "none";
			$("#addRights").fadeOut(1000);
			setTimeout(function() {
				document.getElementById("addRights").style.display = "none";
			}, 1000);
		}
		function openRightAddDialog() {
			document.getElementById("userRightsMasklayer").style.display = "block";
			$("#addRights").fadeIn(1000);
			document.getElementById("addRights").style.display = "block";
		}
	</script>
</body>
</html>