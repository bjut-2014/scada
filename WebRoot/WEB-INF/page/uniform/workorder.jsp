<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE>
<html>
<head>
  <meta charset="UTF-8">
  <title></title>
  <link rel="stylesheet" type="text/css" href="Styles/bootstrap-new.min.css" />
  <script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
  <style type="text/css">
	.btn {
		margin-bottom: 0;
	}
	.modal-body input {
		display: inline;
		width: 100px;
		margin-bottom: 10px;
	}
  </style>
</head>
<body>
	<div class="form-group">
	  <label>工单编号：</label>
	  <select class="form-control" style="display: inline; width: 200px">
	    <option value="">1</option>
	    <option value="">2</option>
	    <option value="">3</option>
	    <option value="">4</option>
	    <option value="">5</option>
	    <option value="">6</option>
	    <option value="">7</option>
	    <option value="">8</option>
	    <option value="">9</option>
	  </select>
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <button type="button" class="btn btn-primary">搜索</button>&nbsp;&nbsp;
	  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalAdd">添加</button>
	  <div class="modal fade" id="myModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	          <h4 class="modal-title" id="myModalLabel">添加工单数据</h4>
	        </div>
	        <form action="workOrderAction_add.action" method="post">
		        <div class="modal-body clearfix">
		        	<div class="modal-body-left" style="float: left;width: 190px;">
		        		<div>&nbsp;&nbsp;&nbsp;&nbsp;工单编号：<input name="workOrderId" type="text" class="form-control"></div>
		        		<div>工单处理人：<input name="workOrderDeal"  type="text" class="form-control"></div>
		        		<div>工单验收人：<input name="workOrderAcceptance" type="text" class="form-control"></div>
		        	</div>
		        	<div class="modal-body-right" style="float: right;;width: 190px;">
		        		<div>工单申请人：<input name="workOrderApplicant" type="text" class="form-control"></div>
		        		<div>工单签发人：<input name="workOrderIssuer" type="text" class="form-control"></div>
		        		<div>工单审批人：<input name="workOrderApproval" type="text" class="form-control"></div>
		        	</div>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		          <input type="submit" class="btn btn-primary" value="添加" />
		        </div>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
	<table class="table table-striped table-hover">
	  <thead>
	    <tr>
	      <th>工单编号</th>
	      <th>工单申请人</th>
	      <th>工单处理人</th>
	      <th>工单签发人</th>
	      <th>工单验收人</th>
	      <th>工单审批人</th>
	      <th>操作</th>
	    </tr>
	  </thead>
	  <tbody>
	    <s:iterator value="#request.workOrderList" var="workOrderList">
	    <tr>
	      <td ><s:property value="#workOrderList.workOrderId" /></td>
	      <td><s:property value="#workOrderList.workOrderApplicant" /></td>
	      <td><s:property value="#workOrderList.workOrderDeal" /></td>
	      <td><s:property value="#workOrderList.workOrderIssuer" /></td>
	      <td><s:property value="#workOrderList.workOrderAcceptance" /></td>
	      <td><s:property value="#workOrderList.workOrderApproval" /></td>
	      <td>
	      	<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModalModify">编辑</button>
	      	<a href="workOrderAction_delete.action?id=<s:property value='#workOrderList.id'/>">删除<a>
	      </td>
	    </tr>
	    </s:iterator>
	  </tbody>
	</table>
	<div class="modal fade" id="myModalModify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	          <h4 class="modal-title" id="myModalLabel">编辑工单数据</h4>
	        </div>
	        <div class="modal-body clearfix">
	        	<div class="modal-body-left" style="float: left;width: 190px;">
	        		<div>&nbsp;&nbsp;&nbsp;&nbsp;工单编号：<input type="text" class="form-control" value="1"></div>
	        		<div>工单处理人：<input type="text" class="form-control" value="1"></div>
	        		<div>工单验收人：<input type="text" class="form-control" value="1"></div>
	        	</div>
	        	<div class="modal-body-right" style="float: right;;width: 190px;">
	        		<div>工单申请人：<input type="text" class="form-control" value="1"></div>
	        		<div>工单签发人：<input type="text" class="form-control" value="1"></div>
	        		<div>工单审批人：<input type="text" class="form-control" value="1"></div>
	        	</div>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	          <button type="button" class="btn btn-primary" data-dismiss="modal">添加</button>
	        </div>
	      </div>
	    </div>
	</div>
	<div class="modal fade" id="myModalDel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	          <h4 class="modal-title" id="myModalLabel">确认删除工单数据吗？</h4>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	          <button type="button" class="btn btn-primary"  data-dismiss="modal">确认</button>
	        </div>
	      </div>
	    </div>
	  </div>
</body>
</html>
