<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'journal.jsp' starting page</title>
<link rel="stylesheet" type="text/css"
	href="Styles/bootstrap-new.min.css" />
<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
<style type="text/css">
#sysLogDiv {
	width: 700px;
	margin: 0 auto;
}

#sysLogDivTitle h2 {
	text-align: center
}

.fl{
	float: left;
}

.fr{
	float: right;
}

.mt{
		margin-top: -15px;
	}

.mr{
		margin-right: 15px;
	}
</style>
</head>

<body>
	<div id="sysLogDiv">
		<div id="sysLogDivTitle">
			<h2>系统日志列表</h2>
		</div>
	</div>
	<a class="fr mt" href="sysLogAction_sysStart.action">显示系统启动日志</a>
	<hr>
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>用户名</th>
				<th>时间</th>
				<th>行为</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="#request.sysLogList" var="sysLogList" status="st">
			<tr>
				<td><input type="checkbox"></td>
				<td><s:property value="#sysLogList.username" /></td>
				<td><s:date name="#sysLogList.createTime" format="yyyy-MM-dd HH:mm:ss" /></td>
				<td><s:property value="#sysLogList.didWhat" /></td>
				<td><a href="sysLogAction_delete.action?sysLogId=<s:property value='#sysLogList.id'/>"><button type="button" class="btn btn-info btn-sm">删除</button></a></td>
			</tr>
			</s:iterator>
		</tbody>
	</table>
	<hr>
	<a href="javascript:void(0)" onclick="deleteAll()"><button type="button" class="btn btn-info btn-sm">删除</button></a>
	<script type="text/javascript">
		function deleteAll(){
			if(confirm("是否删除这些日志记录？该操作不可恢复！")){
				this.location.href = "sysLogAction_deleteAll.action";
				return true;
			}
		}
	</script>
	
	<!-- 分页 -->
	<ul class="pagination fr mr">
		<li><a href="sysLogAction_show.action?pageNo=1">首页</a></li>
		<!-- 上一页 -->
		<s:if test="#request.pageNo == 1">
		<li class="disabled"><a href="#">&laquo;</a></li>
		</s:if>
		<s:else>
		<li><a href="sysLogAction_show.action?pageNo=<%=Integer.parseInt(request.getParameter("pageNo"))-1%>">&laquo;</a></li>
		</s:else>
		
		<!-- 页码 -->
		<s:iterator  value="#request.pagesWide" var="pw">
		<s:if test="#pw==#request.pageNo">
		<li class="active"><a href="sysLogAction_show.action?pageNo=<s:property value='#pw' />"><s:property value="#pw" /></a></li>
		</s:if>
		<s:else>
		<li><a href="sysLogAction_show.action?pageNo=<s:property value='#pw' />"><s:property value="#pw" /></a></li>
		</s:else>
		</s:iterator>
		
		<!-- 下一页 -->
		<s:if test="#request.pageNo == #request.pageTotal">
		<li class="disabled"><a href="#">&raquo;</a></li>
		</s:if>
		<s:else>
		<li><a href="sysLogAction_show.action?pageNo=<%=Integer.parseInt(request.getParameter("pageNo"))+1%>">&raquo;</a></li>
		</s:else>
		<li><a href="sysLogAction_show.action?pageNo=<s:property value='#request.pageTotal'/>">尾页</a></li>
	</ul>
</body>
</html>
