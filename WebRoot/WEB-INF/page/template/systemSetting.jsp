<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title></title>
  <link rel="stylesheet" type="text/css" href="Styles/bootstrap-new.min.css" />
  <script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
  <style>
    .tip {
      height: 0;
      margin: 0 8px;
      border: 4px solid transparent;
      border-left-color: #000;
      display: inline-block;
    }
  </style>
</head>
<body>
  <!-- <div class="alert alert-info">当前位置<b class="tip"></b>业务运营管理系统<b class="tip"></b>系统设置管理</div> -->
  <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading1">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="true" aria-controls="collapse1">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;系统设置管理
          </a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading1">
        <div class="panel-body">
          
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th>城区名称</th>
                <th>负责人</th>
                <th>设备编号</th>
                <th>设备状态</th>
                <th>备注</th>
              </tr>
            </thead>
            <tbody>
              <s:iterator value="#request.systemSettings">
              <tr>
              	<td>${area}</td>
              	<td>${chief}</td>
              	<td>${num}</td>
              	<td>${state}</td>
              	<td>${remark}</td>
              </tr>
              </s:iterator>
            </tbody>
          </table>
          <nav style="float: right">
            <ul class="pagination">
              <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
              <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>
        </div>
      </div>
       <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading3">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;添加设备
          </a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading3">
        <div class="panel-body">
          <table class="table table-striped">
   	<div>
     <form action="systemSettingAction_save.action" method="post">     
       <table align="center" border="1">
			<tr align="center">
				<td align="right">所属区域:</td>
				<td align="left"><input type="text" name="area" /></td>
			</tr>
			<tr align="center">
				<td align="right">区域负责人:</td>
				<td align="left"><input type="text" name="chief" /></td>
			</tr>
			<tr align="center">
				<td align="right">设备编号:</td>
				<td align="left"><input type="text" name="num" /></td>
			</tr>
			<tr align="center">
				<td align="right">设备设置:</td>
				<td align="left"><input type="text" name="state" /></td>
			</tr>
			<tr align="center">
				<td align="right">备注:</td>
				<td align="left"><input type="text" name="remark" /></td>
			
			</tr>
			<tr align="center">
				<td colspan="2">
				
				<input type="submit" value="提交" />&nbsp;&nbsp; <input type="reset" value="取消"/></td>
			</tr>
		</table>
		</form>
     	</div>
</body>

</html>