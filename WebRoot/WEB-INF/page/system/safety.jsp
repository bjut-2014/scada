<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'safety.jsp' starting page</title>
<link rel="stylesheet" type="text/css"
	href="Styles/bootstrap-new.min.css" />
<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
<style type="text/css">
.fs{
	font-size: 20px;
}

.mr {
	margin-right: 10px;
}

.ml{
	margin-left: 10px;
}

.mt {
	margin-top: 10px;
}
.gray{
	background-color: gray;
}
</style>

</head>

<body>

	<div class="panel panel-primary mr">
		<div class="panel-heading">
			<h3 class="panel-title">基本安全信息设置</h3>
		</div>
		<div class="panel-body">
			<form class="bs-example bs-example-form" action="sysSafetyAction_save.action">
				<!-- 
				<div class="input-group">
					<span class="input-group-addon">网站安全密钥</span> <input type="text"
						class="form-control" placeholder="网站安全密钥">
				</div>
 				-->
				<div class="form-control mt">
					<label class="control-label">是否启用后台日志</label>
					<s:if test="#request.sysSafetyInfo.isEnableLog==0">
						<label class="checkbox-inline">
							<input type="radio" name="isEnableLog" value="0" checked>是
						</label> 
						<label class="checkbox-inline"> 
							<input type="radio" name="isEnableLog" value="1">否
						</label>
					</s:if>
					<s:else>
						<label class="checkbox-inline">
							<input type="radio" name="isEnableLog" value="0">是
						</label> 
						<label class="checkbox-inline"> 
							<input type="radio" name="isEnableLog" value="1" checked>否
						</label>
					</s:else>
				</div>

				<div class="input-group mt">
					<span class="input-group-addon">后台最大登录失败次数</span> <input
						type="text" class="form-control" name="loginFailureCount" 
						placeholder="登录失败次数超过系统将自动锁定该IP，0表示不限制次数；现在的限制次数为：<s:property value="#request.sysSafetyInfo.loginFailureCount"/>">
				</div>

				<div class="input-group mt">
					<span class="input-group-addon">IP锁定时间</span> <input type="text" name="ipLockTime"
						class="form-control" placeholder="超过该时间后，该IP自动解锁；现在的锁定时间为：<s:property value="#request.sysSafetyInfo.ipLockTime"/>">
				</div>

				<div class="form-control mt">
					<s:if test="#request.sysSafetyInfo.isIPAccessProhibited==0">
						<label class="control-label">IP访问禁止</label> <label
							class="checkbox-inline"> <input type="radio" 
							name="isIPAccessProhibited" value="0" checked>启用
						</label> <label class="checkbox-inline"> <input type="radio"
							name="isIPAccessProhibited" value="1">禁用
						</label>
					</s:if>
					<s:else>
						<label class="control-label">IP访问禁止</label> <label
							class="checkbox-inline"> <input type="radio"
							name="isIPAccessProhibited" value="0">启用
						</label> <label class="checkbox-inline"> <input type="radio"
							name="isIPAccessProhibited" value="1" checked>禁用
						</label>
					</s:else>
				</div>
				
				<input type="submit" class="btn btn-primary mt" value="保存" />
			</form>
		</div>
	</div>

	<s:if  test="#request.sysSafetyInfo.isIPAccessProhibited==0">
		<div class="panel panel-default mr">
		   <div class="panel-heading">允许访问后台的IP列表（列表为空，表示所有IP均可访问）</div>
		   <table class="table">
		   	  <tr>
			      <th>IP</th>
			      <th>添加时间 </th>
			      <th>操作</th>
		      </tr>
		      <tr>
		      	<td>111.111.111.111</td>
		      	<td>2015/1/1</td>
		      	<td><a href="#"><button type="button" class="btn btn-info btn-sm">删除</button></a></td>
		      	</tr>
		      <tr>
		      	<td>222.222.222.222</td>
		      	<td>2015/1/1</td>
		      	<td><a href="#"><button type="button" class="btn btn-info btn-sm">删除</button></a></td>
		      </tr>
		   </table>
		   <form action=""  class="form-inline" method="post">
		   		<label class="control-label ml">IP地址：</label>
		   		<input type="text" name="" placeholder="添加新的IP地址"  class="form-control" />
				<input type="submit" class="btn btn-default mt" value="提交">
		   </form>
		</div>
	</s:if>


</body>
</html>
