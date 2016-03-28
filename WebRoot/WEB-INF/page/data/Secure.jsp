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
    table{  
   			width:100px;  
    		table-layout:fixed;/* 只有定义了表格的布局算法为fixed，下面td的定义才能起作用。 */  
		}  
		td{  
    		width:100%;  
    		word-break:keep-all;/* 不换行 */  
    		white-space:nowrap;/* 不换行 */  
    		overflow:hidden;/* 内容超出宽度时隐藏超出部分的内容 */  
    		text-overflow:ellipsis;/* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用*/  
		}  
  </style>
</head>
<body>
  <!-- <div class="alert alert-info">当前位置<b class="tip"></b>应用展示<b class="tip"></b>资产管理</div> -->
  <form  action="#" method="post" >
  		<select class="form-control" style="display: inline; width: 200px" name="station" id="station">			
				<option value ="测试厂站01">测试厂站01</option> 
				<option value ="测试厂站02">测试厂站02</option>
				<option value ="测试厂站03">测试厂站03</option>	
				<option value ="测试厂站04">测试厂站04</option> 
				<option value ="测试厂站05">测试厂站05</option>
				<option value ="测试厂站06">测试厂站06</option>	
				<option value ="测试厂站07">测试厂站07</option> 
				<option value ="测试厂站08">测试厂站08</option>
				<option value ="测试厂站09">测试厂站09</option>	
				<option value ="测试厂站10">测试厂站10</option> 
				<option value ="测试厂站11">测试厂站11</option>
				<option value ="测试厂站12">测试厂站12</option>		
			</select>          		
			
			<select class="form-control" style="display: inline; width: 200px" id="state"  name="state">
				<option value ="null">告警等级</option>
				<option value ="重要">重要</option> 
				<option value ="次要">次要</option>			
				<option value ="一般">一般</option>
				
			</select>				
 			<input  type="button" class="btn btn-primary" value="搜索"  style="margin-top: 8px"  />
</form>
  <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading1">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="true" aria-controls="collapse1">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;测试厂站01
          </a>
        </h4>
      </div>
     
      <div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading1">
        <div class="panel-body">
          <div class="form-group">
           
          </div>
<div id="测试厂站01">
   <table  id="showTable" class="table table-striped table-hover">
	<tr>
		<th>时间</th>
		<th>类型</th>
		<th>子类型</th>
		<th>告警等级</th>
		<th>厂站名</th>
		<th>装置名</th>
		<th>对象名</th>
		<th>告警信息</th>
	</tr>
	 <s:iterator value="#request.WarningSecures">
              <tr>
              	
              	<td>${warning_time}</td>
              	<td>${warning_type}</td>
              	<td>${warning_subtype}</td>
              	<td>${warning_level}</td>
              	<td>${station}</td>
              	<td>${device}</td>
              	<td>${warning_obj}</td>
              	<td>${warning_info}</td>   
              </tr>
	</s:iterator>
</table>
</div>
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
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;测试厂站02
          </a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
        <div class="panel-body">
          <div class="form-group">
          </div>
<div id="测试厂站02">
   <table cellspacing="1"  class="table table-striped table-hover">
	<tr>
		<th>时间</th>
		<th>类型</th>
		<th>子类型</th>
		<th>告警等级</th>
		<th>厂站名</th>
		<th>装置名</th>
		<th>对象名</th>
		<th>告警信息</th>
	</tr>
	 <s:iterator value="#request.WarningSecures">
              <tr>
              	
              	<td>${warning_time}</td>
              	<td>${warning_type}</td>
              	<td>${warning_subtype}</td>
              	<td>${warning_level}</td>
              	<td>${station}</td>
              	<td>${device}</td>
              	<td>${warning_obj}</td>
              	<td>${warning_info}</td>   
              </tr>
	</s:iterator>
</table>
</div>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading3">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;测试厂站03
          </a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading3">
        <div class="panel-body">
          <div class="form-group">
          
          </div>
<div id="测试厂站03">
   <table cellspacing="1"  class="table table-striped table-hover">
	<tr>
		<th>时间</th>
		<th>类型</th>
		<th>子类型</th>
		<th>告警等级</th>
		<th>厂站名</th>
		<th>装置名</th>
		<th>对象名</th>
		<th>告警信息</th>
	</tr>
	 <s:iterator value="#request.WarningSecures">
              <tr>
              	
              	<td>${warning_time}</td>
              	<td>${warning_type}</td>
              	<td>${warning_subtype}</td>
              	<td>${warning_level}</td>
              	<td>${station}</td>
              	<td>${device}</td>
              	<td>${warning_obj}</td>
              	<td>${warning_info}</td>   
              </tr>
	</s:iterator>
</table>
</div>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading4">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="false" aria-controls="collapse4">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;测试厂站04
          </a>
        </h4>
      </div>
      <div id="collapse4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading4">
        <div class="panel-body">
         <div class="form-group">
           
          </div>
<div id="测试厂站04">
   <table cellspacing="1"  class="table table-striped table-hover">
	<tr>
		<th>时间</th>
		<th>类型</th>
		<th>子类型</th>
		<th>告警等级</th>
		<th>厂站名</th>
		<th>装置名</th>
		<th>对象名</th>
		<th>告警信息</th>
	</tr>
	 <s:iterator value="#request.WarningSecures">
              <tr>
              	
              	<td>${warning_time}</td>
              	<td>${warning_type}</td>
              	<td>${warning_subtype}</td>
              	<td>${warning_level}</td>
              	<td>${station}</td>
              	<td>${device}</td>
              	<td>${warning_obj}</td>
              	<td>${warning_info}</td>   
              </tr>
	</s:iterator>
</table>
</div>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading5">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse5" aria-expanded="false" aria-controls="collapse5">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;测试厂站05
          </a>
        </h4>
      </div>
      <div id="collapse5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading5">
        <div class="panel-body">
          <div class="form-group">
         
          </div>
<div id="测试厂站05">
   <table cellspacing="1"  class="table table-striped table-hover">
	<tr>
		<th>时间</th>
		<th>类型</th>
		<th>子类型</th>
		<th>告警等级</th>
		<th>厂站名</th>
		<th>装置名</th>
		<th>对象名</th>
		<th>告警信息</th>
	</tr>
	 <s:iterator value="#request.WarningSecures">
              <tr>
              	
              	<td>${warning_time}</td>
              	<td>${warning_type}</td>
              	<td>${warning_subtype}</td>
              	<td>${warning_level}</td>
              	<td>${station}</td>
              	<td>${device}</td>
              	<td>${warning_obj}</td>
              	<td>${warning_info}</td>   
              </tr>
	</s:iterator>
</table>
</div>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading6">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse6" aria-expanded="false" aria-controls="collapse6">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;测试厂站06
          </a>
        </h4>
      </div>
      <div id="collapse6" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading6">
        <div class="panel-body">
          <div class="form-group">
          
          </div>
<div id="测试厂站06">
   <table cellspacing="1"  class="table table-striped table-hover">
<tr>
		<th>时间</th>
		<th>类型</th>
		<th>子类型</th>
		<th>告警等级</th>
		<th>厂站名</th>
		<th>装置名</th>
		<th>对象名</th>
		<th>告警信息</th>
	</tr>
	 <s:iterator value="#request.WarningSecures">
              <tr>
              	
              	<td>${warning_time}</td>
              	<td>${warning_type}</td>
              	<td>${warning_subtype}</td>
              	<td>${warning_level}</td>
              	<td>${station}</td>
              	<td>${device}</td>
              	<td>${warning_obj}</td>
              	<td>${warning_info}</td>   
              </tr>
	</s:iterator>
</table>
</div>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading7">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse7" aria-expanded="false" aria-controls="collapse7">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;测试厂站07
          </a>
        </h4>
      </div>
      <div id="collapse7" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading7">
        <div class="panel-body">
         <div class="form-group">
        
          </div>
<div id="测试厂站07">
   <table cellspacing="1"  class="table table-striped table-hover">
	<tr>
		<th>时间</th>
		<th>类型</th>
		<th>子类型</th>
		<th>告警等级</th>
		<th>厂站名</th>
		<th>装置名</th>
		<th>对象名</th>
		<th>告警信息</th>
	</tr>
	 <s:iterator value="#request.WarningSecures">
              <tr>
              	
              	<td>${warning_time}</td>
              	<td>${warning_type}</td>
              	<td>${warning_subtype}</td>
              	<td>${warning_level}</td>
              	<td>${station}</td>
              	<td>${device}</td>
              	<td>${warning_obj}</td>
              	<td>${warning_info}</td>   
              </tr>
	</s:iterator>
</table>
</div>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading8">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse8" aria-expanded="false" aria-controls="collapse8">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;测试厂站08
          </a>
        </h4>
      </div>
      <div id="collapse8" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading8">
        <div class="panel-body">
          <div class="form-group">
          
          </div>
<div id="测试厂站08">
   <table cellspacing="1"  class="table table-striped table-hover">
	<tr>
		<th>时间</th>
		<th>类型</th>
		<th>子类型</th>
		<th>告警等级</th>
		<th>厂站名</th>
		<th>装置名</th>
		<th>对象名</th>
		<th>告警信息</th>
	</tr>
	 <s:iterator value="#request.WarningSecures">
              <tr>
              	
              	<td>${warning_time}</td>
              	<td>${warning_type}</td>
              	<td>${warning_subtype}</td>
              	<td>${warning_level}</td>
              	<td>${station}</td>
              	<td>${device}</td>
              	<td>${warning_obj}</td>
              	<td>${warning_info}</td>   
              </tr>
	</s:iterator>
</table>
</div>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading9">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse9" aria-expanded="false" aria-controls="collapse9">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;测试厂站09
          </a>
        </h4>
      </div>
      <div id="collapse9" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading9">
        <div class="panel-body">
         <div class="form-group">
          
          </div>
<div id="测试厂站09">
   <table cellspacing="1"  class="table table-striped table-hover">
<tr>
		<th>时间</th>
		<th>类型</th>
		<th>子类型</th>
		<th>告警等级</th>
		<th>厂站名</th>
		<th>装置名</th>
		<th>对象名</th>
		<th>告警信息</th>
	</tr>
	 <s:iterator value="#request.WarningSecures">
              <tr>
              	
              	<td>${warning_time}</td>
              	<td>${warning_type}</td>
              	<td>${warning_subtype}</td>
              	<td>${warning_level}</td>
              	<td>${station}</td>
              	<td>${device}</td>
              	<td>${warning_obj}</td>
              	<td>${warning_info}</td>   
              </tr>
	</s:iterator>
</table>
</div>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading10">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse10" aria-expanded="false" aria-controls="collapse10">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;测试厂站10
          </a>
        </h4>
      </div>
      <div id="collapse10" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading10">
        <div class="panel-body">
          <div class="form-group">
         
          </div>
<div id="测试厂站10">
   <table cellspacing="1"  class="table table-striped table-hover">
	<tr>
		<th>时间</th>
		<th>类型</th>
		<th>子类型</th>
		<th>告警等级</th>
		<th>厂站名</th>
		<th>装置名</th>
		<th>对象名</th>
		<th>告警信息</th>
	</tr>
	 <s:iterator value="#request.WarningSecures">
              <tr>
              	
              	<td>${warning_time}</td>
              	<td>${warning_type}</td>
              	<td>${warning_subtype}</td>
              	<td>${warning_level}</td>
              	<td>${station}</td>
              	<td>${device}</td>
              	<td>${warning_obj}</td>
              	<td>${warning_info}</td>   
              </tr>
	</s:iterator>
</table>
</div>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading11">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse11" aria-expanded="false" aria-controls="collapse11">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;测试厂站11
          </a>
        </h4>
      </div>
      <div id="collapse11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading11">
        <div class="panel-body">
          <div class="form-group">
          
          </div>
<div id="测试厂站11">
   <table cellspacing="1"  class="table table-striped table-hover">
	<tr>
		<th>时间</th>
		<th>类型</th>
		<th>子类型</th>
		<th>告警等级</th>
		<th>厂站名</th>
		<th>装置名</th>
		<th>对象名</th>
		<th>告警信息</th>
	</tr>
	 <s:iterator value="#request.WarningSecures">
              <tr>
              	
              	<td>${warning_time}</td>
              	<td>${warning_type}</td>
              	<td>${warning_subtype}</td>
              	<td>${warning_level}</td>
              	<td>${station}</td>
              	<td>${device}</td>
              	<td>${warning_obj}</td>
              	<td>${warning_info}</td>   
              </tr>
	</s:iterator>
</table>
</div>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading12">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse12" aria-expanded="false" aria-controls="collapse12">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;测试厂站12
          </a>
        </h4>
      </div>
      <div id="collapse12" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading12">
        <div class="panel-body">
          <div class="form-group">
         
          </div>
<div id="测试厂站12">
   <table cellspacing="1"  class="table table-striped table-hover">
	<tr>
		<th>时间</th>
		<th>类型</th>
		<th>子类型</th>
		<th>告警等级</th>
		<th>厂站名</th>
		<th>装置名</th>
		<th>对象名</th>
		<th>告警信息</th>
	</tr>
	 <s:iterator value="#request.WarningSecures">
              <tr>
              	
              	<td>${warning_time}</td>
              	<td>${warning_type}</td>
              	<td>${warning_subtype}</td>
              	<td>${warning_level}</td>
              	<td>${station}</td>
              	<td>${device}</td>
              	<td>${warning_obj}</td>
              	<td>${warning_info}</td>   
              </tr>
	</s:iterator>
</table>
</div>
        </div>
      </div>
    </div>

  </div>
   <script type="text/javascript" src="scripts/jquery-1.8.2.js"></script>
	<script type="text/javascript">
	function btn(){
        
        var $btn = $("input.btn");//获取按钮元素
        //给按钮绑定点击事件
        $btn.bind("click",function(){  
//  function AddHandlingFeeToRefund(){	
	// var type = document.getElementById("type").value;
	 //var Station = document.getElementById("Station").value;
	   //alert("type="+type+"&Station="+Station);
	$.ajax({
       
        type: "POST",
        url:"WarningAjax.action",
        //async:false,
        data: {
        	
        	state:$("select[name=state]").val(),
        	station:$("select[name=station]").val()
        },
        dataType:"json",
        error: function(request) {
            alert("Connection error");
            alert(data);
        },
        success: function(data) {
        	 var s = document.getElementById("station").value;
        	 
        	 var result = "<table class='table table-striped table-hover'>"; 
	             result += "<tr><th>时间</th><th>类型</th><th>子类型</th><th>告警等级</th><th>厂站名</th><th>装置名</th><th>对象名</th><th>告警信息</th></tr>";  
	             for(var i=0;i<data.length;i++) {  
	                 result += "<tr>";  
	                 result += "<td>"+data[i].warning_time +"</td>";  
	                 result += "<td>"+data[i].warning_type+"</td>";  
	                 result += "<td>"+data[i].warning_subtype+"</td>";  
	                 result += "<td>"+data[i].warning_level+"</td>";
	                 result += "<td>"+data[i].station+"</td>";
	                 result += "<td>"+data[i].device+"</td>";
	                 result += "<td>"+data[i].warning_obj+"</td>";
	                 result += "<td>"+data[i].warning_info+"</td>";
	                 result += "</tr>";  
	             }        	         	
	         result += "</table>"; 
             //alert(result);
             document.getElementById(s).innerHTML = result;                   
    }
});
});
        }
        $(document).ready(function(){          
            btn();//点击提交，执行ajax
        });
        </script>
</body>
</html>