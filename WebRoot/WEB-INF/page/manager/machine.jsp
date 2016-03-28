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
  <!-- <div class="alert alert-info">当前位置<b class="tip"></b>应用展示<b class="tip"></b>资产管理</div> -->
  <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading1">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="true" aria-controls="collapse1">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;机房列表
          </a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading1">
        <div class="panel-body">
          <div class="form-group">
            <label>字段类型：</label>
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
            <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;字段名称：</label>
            <input type="text" class="form-control" style="display: inline; width: 200px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" class="btn btn-primary" style="margin-top: 8px">搜索</button>
          </div>
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th>机房编号</th>
                <th>机房名称</th>
                <th>机房位置</th>
                <th>备注</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <s:iterator value="#request.machineRooms">
              <tr>
              	<td>${id}</td>
              	<td>${name}</td>
              	<td>${position}</td>
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
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading2">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse2">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;机柜列表
          </a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
        <div class="panel-body">
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th>机柜编号</th>
                <th>机柜名称</th>
                <th>型号规格</th>
                <th>生产厂家</th>
                <th>出厂日期</th>
                <th>备注</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>1</td>
                <td>2</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading3">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;服务器列表
          </a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading3">
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>机房名称</th>
                <th>机房位置</th>
                <th>机房编号</th>
                <th>机房XX</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading4">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="false" aria-controls="collapse4">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;网络设备列表
          </a>
        </h4>
      </div>
      <div id="collapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading4">
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>机房名称</th>
                <th>机房位置</th>
                <th>机房编号</th>
                <th>机房XX</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading5">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse5" aria-expanded="false" aria-controls="collapse5">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;ODF设备列表
          </a>
        </h4>
      </div>
      <div id="collapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading5">
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>机房名称</th>
                <th>机房位置</th>
                <th>机房编号</th>
                <th>机房XX</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading6">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse6" aria-expanded="false" aria-controls="collapse6">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;DDF设备列表
          </a>
        </h4>
      </div>
      <div id="collapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading6">
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>机房名称</th>
                <th>机房位置</th>
                <th>机房编号</th>
                <th>机房XX</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading7">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse7" aria-expanded="false" aria-controls="collapse7">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;PCM设备列表
          </a>
        </h4>
      </div>
      <div id="collapse7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading7">
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>机房名称</th>
                <th>机房位置</th>
                <th>机房编号</th>
                <th>机房XX</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading8">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse8" aria-expanded="false" aria-controls="collapse8">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;存储设备列表
          </a>
        </h4>
      </div>
      <div id="collapse8" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading8">
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>机房名称</th>
                <th>机房位置</th>
                <th>机房编号</th>
                <th>机房XX</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading9">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse9" aria-expanded="false" aria-controls="collapse9">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;刀笼设备列表
          </a>
        </h4>
      </div>
      <div id="collapse9" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading9">
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>机房名称</th>
                <th>机房位置</th>
                <th>机房编号</th>
                <th>机房XX</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading10">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse10" aria-expanded="false" aria-controls="collapse10">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;刀片设备列表
          </a>
        </h4>
      </div>
      <div id="collapse10" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading10">
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>机房名称</th>
                <th>机房位置</th>
                <th>机房编号</th>
                <th>机房XX</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading11">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse11" aria-expanded="false" aria-controls="collapse11">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;虚拟机列表
          </a>
        </h4>
      </div>
      <div id="collapse11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading11">
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>机房名称</th>
                <th>机房位置</th>
                <th>机房编号</th>
                <th>机房XX</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading12">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse12" aria-expanded="false" aria-controls="collapse12">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;配线架列表
          </a>
        </h4>
      </div>
      <div id="collapse12" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading12">
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>机房名称</th>
                <th>机房位置</th>
                <th>机房编号</th>
                <th>机房XX</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading13">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse13" aria-expanded="false" aria-controls="collapse13">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;其他设备列表
          </a>
        </h4>
      </div>
      <div id="collapse13" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading13">
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>机房名称</th>
                <th>机房位置</th>
                <th>机房编号</th>
                <th>机房XX</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</body>
</html>