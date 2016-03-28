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
				<option value ="null">状态</option>
				<option value ="投入">投入</option> 
				<option value ="故障">故障</option>			
				<option value ="维护">维护</option>
				
			</select>				
 			<input  type="button" class="btn btn-primary" value="搜索"  style="margin-top: 8px"  />
</form>
<div id="测试厂站01">
   <table  id="showTable" class="table table-striped table-hover">
	<tr>
		 
		<th>时间</th>
		<th>操作者</th>
		<th>操作</th>
		<th>说明</th>
		<th>处理</th>
	</tr>
	 <s:iterator value="#request.Cases">
              <tr>
              	 
              	<td>${time}</td>
              	<td>${user}</td>
              	<td>${action}</td>
              	<td>${info}</td>
              	<td height="20"><div align="center">
            		<a href="CaseAction_edit.action?id=${id}"><img src="images/edt.gif" width="16" height="16" border="0"/>编辑</a> 
           			 &nbsp; &nbsp;
            		<a href="CaseAction_delete.action?id=${id}" onclick="return checkdel();"><img src="images/del.gif" width="16" height="16" border="0"/>删除</a>
           		</div></td>
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
        url:"DeviceAjax.action",
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
	             result += "<tr><th>装置ID</th><th>装置名称</th><th>装置类型</th><th>规约类型</th><th>规约名称</th><th>通道类型</th><th>当前状态</th><th>电压等级</th></tr>";  
	             for(var i=0;i<data.length;i++) {  
	                 result += "<tr>";  
	                 result += "<td>"+data[i].device_id +"</td>";  
	                 result += "<td>"+data[i].device_name+"</td>";  
	                 result += "<td>"+data[i].device_type+"</td>";  
	                 result += "<td>"+data[i].device_ruletype+"</td>";
	                 result += "<td>"+data[i].device_rulename+"</td>";
	                 result += "<td>"+data[i].device_pipletype+"</td>";
	                 result += "<td>"+data[i].device_state+"</td>";
	                 result += "<td>"+data[i].device_elec+"</td>";
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
