<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'fault.jsp' starting page</title>
    <link rel="stylesheet" type="text/css"
	href="Styles/bootstrap-new.min.css" />
	<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    
    
  </head>
  
  <body>
  	<table class="table table-striped table-hover">
  		<thead>
	  		<tr>
	  			<th>设备编号</th>
	  			<th>设备类型</th>
	  			<th>设备故障时间</th>
	  			<th>设备故障原因</th>
	  			<th>设备修理内容</th>
	  			<th>设备负责人</th>
	  			<th>设备故障维修人员</th>
	  			<th>设备修理完成时间</th>
	  			<th>设备修理次数</th>
	  			<th>备注</th>
	  		</tr>
  		</thead>
  		<s:iterator value="#request.sysFaultList" var="sysFaultList" status="st">
  		<tr>
  			<td><s:property value="#sysFaultList.equipmentId" /></td>
  			<td><s:property value="#sysFaultList.equipmentType" /></td>
  			<td><s:date name="#sysFaultList.equipmentFailureTime"  format="yyyy-MM-dd HH:mm:ss"/></td>
  			<td><s:property value="#sysFaultList.equipmentFailureReason" /></td>
  			<td><s:property value="#sysFaultList.equipmentRepairContent" /></td>
  			<td><s:property value="#sysFaultList.equipmentPersonInCharge" /></td>
  			<td><s:property value="#sysFaultList.equipmentMaintenance" /></td>
  			<td><s:date name="#sysFaultList.equipmentRepairTime"  format="yyyy-MM-dd HH:mm:ss"/></td>
  			<td><s:property value="#sysFaultList.eqequipmentRepairCounts" /></td>
  			<td><s:property value="#sysFaultList.equipmentRemark" /></td>
  		</tr>
  		</s:iterator>
  	</table>
  	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalAdd" >添加</button>
  	<!-- 遮罩层 -->
	<div id="sysFaultMasklayer"></div>
  	<div class="modal fade" id="myModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  		
  		<div class="modal-dialog" role="document">
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	          <h4 class="modal-title" id="myModalLabel">添加新的用户</h4>
	        </div>
	        <form action="sysFaultAction_add.action" method="post">
		        <div class="modal-body clearfix">
		        	<div class="modal-body-left" style="float: left;width: 190px;">
		        		<div>&nbsp;&nbsp;&nbsp;&nbsp;编号：<input name="equipmentId" type="text" class="form-control"></div>
		        		<div>类型：<input name="equipmentType"  type="text" class="form-control"></div>
		        		<div>故障原因：<input name="equipmentFailureReason" type="text" class="form-control"></div>
		        		<div>修理内容：<input name="equipmentRepairContent"  type="text" class="form-control"></div>
		        	</div>
		        	<div class="modal-body-right" style="float: right;;width: 190px;">
		        		<div>故障维修人员：<input name="equipmentMaintenance" type="text" class="form-control"></div>
		        		<div>修理次数：<input name="eqequipmentRepairCounts" type="text" class="form-control"></div>
		        		<div>负责人：<input name="equipmentPersonInCharge"  type="text" class="form-control"></div>
		        		<div>备注：<input name="equipmentRemark" type="text" class="form-control"></div>
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
