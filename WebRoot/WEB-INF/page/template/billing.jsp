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
  <!-- <div class="alert alert-info">当前位置<b class="tip"></b>业务运营管理系统<b class="tip"></b>计费管理</div> -->
  <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading1">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="true" aria-controls="collapse1">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;计费管理
          </a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading1">
        <div class="panel-body">
          <div class="form-group">
            <label>用户类型：</label>
            <select class="form-control" style="display: inline; width: 200px">
              <option value="">企业</option>
              <option value="">居民</option>
            </select>
            
          </div>
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th>公司名称/用户编号</th>
                <th>用户姓名</th>
                <th>总计缴费</th>
                <th>本月缴费</th>
                <th>账户余额</th>
                <th>所属区域</th>
              </tr>
            </thead>
            <tbody>
              <s:iterator value="#request.billings">
              <tr>
              	<td>${name}</td>
              	<td>${ownername}</td>
              	<td>${total}</td>
              	<td>${presentmonth}</td>
              	<td>${balance}</td>
              	<td>${area}</td>
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
</body>
</html>