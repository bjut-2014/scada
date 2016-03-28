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
            #chartContainer{
                border:solid 1px #999;
                
            }
        </style>
        <script src="http://cloud.github.com/downloads/scottkiss/H5Draw/H5Draw.js"></script>
        <script src="http://cloud.github.com/downloads/scottkiss/H5Draw/h5Charts.js"></script>
        <script>
            window.onload = function(){
            var chart = new h5Charts.SerialChart();
            chart.dataProvider = [{month:"一月",amount:document.getElementById("1").innerHTML},{month:"二月",amount:document.getElementById("2").innerHTML},{month:"三月",amount:document.getElementById("3").innerHTML},{month:"四月",amount:document.getElementById("4").innerHTML},{month:"五月",amount:document.getElementById("5").innerHTML},{month:"六月",amount:document.getElementById("6").innerHTML}];
            chart.categoryField = "month";
            chart.valueField = "amount";
            chart.type = "column";
            chart.columnWidth = 55;
            chart.colors = ["#f00","#0f0","#0ff","#00f","#fc0","#cf0","#0cf"];
            chart.addTo("chartContainer");
            };           
        </script>
  <script type="text/javascript">
function formcheck()
{
    check1();     
    check2();
}
function formdelete(){
    if(document.getElementById("select").value=="id"&&document.getElementById("message").value!="")
    {
         form.submit();
     }else
     {
         form.focus();
         alert("只能通过id进行删除操作！并且不能为空");
         return false;}
      }
function check2(){       
   if(document.getElementbyid("aa").value==""){
      alert("没有查到任何信息！");
   }
}
function check1(){
 if(document.getElementById("message").value==""){
                alert("号码不能为空！");
                form.focus();
                return false;
            }else form.submit();  
}
  </script>
   <style> 
    .divcss1{
    border:1px dashed #000; 
    border-radius: 5px;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px
    } 
     .divcss2{ 
    border:1px dashed #000;  
    width:430px; 
    height:50px;
    color:#0000EA;
    padding:4px 10px 4px 10px;
    } 
    .divcss3{ 
    border:1px dashed #000;  
    width:430px; 
    height:50px;
    color:#0000EA;
    text-align:center

    }
    .divcss4{ 
    border:1px dashed #000;  
    width:430px; 
    height:50px;
    color:#0000EA
    }  
    .divcss5{ 
    border:1px dashed #000;  
    text-align:center;
    width:60px; 
    height:50px;
    color:#0000EA
    } 
    
    .ui-select {  
    height: 26px;
    width: 120px;  
    border:solid 1px;  
     }  
    .ui-select select {  
    position: absolute;  
    left: 0px;  
    top: 0px;  
    width: 100%;  
    height: 3em;  
    opacity: 0;  
    }  
  
</style>  
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
          <div style="height:10px"></div>
     <div>
     <span style="height:10px"></span>
     <span>
            <form id="form" name="form" action="Achievement" method="post">
            <select name="select" id="select" class="ui-select">
            <option value="id" >&nbsp;&nbsp;&nbsp;&nbsp;I&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;</option>
            <option value="name">&nbsp;&nbsp;&nbsp;&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;</option>
            </select>
            <input type=text name="message" id="message" class="ui-select"/>
            <input id="search" name="swit" type="submit" value="查找信息" onClick="javascript:formcheck();"/>
            <input id="delete" name="swit" type="submit" value="删除信息" onClick="javascript:formdelete();"/> 
            <!-- <input id="add" name="swit" type="submit" value="增加信息" /> --> 
            <!--  <input id="all" type="button" value="全部信息" onClick="window.location.href='Achievement.action'" />-->  
            </form> 
            </span>
     </div> 
     <div style="height:20px"></div>   
  <!-- <div class="alert alert-info">当前位置<b class="tip"></b>应用展示<b class="tip"></b>资产管理</div> -->
  <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading1">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false" aria-controls="collapse1">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;2015年上半年个人绩效
          </a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading1">
        <div class="panel-body" style="text-align:center;">
          <table class="table table-striped table-hover" >
            <tbody>
             <s:iterator value="#request.achievement">
              <tr>
			    <th style="text-align:center">#</th>			    
			    <th style="text-align:center">一月</th>
			    <th style="text-align:center">二月</th>
			    <th style="text-align:center">三月</th>
			    <th style="text-align:center">四月</th>
			    <th style="text-align:center">五月</th>
			    <th style="text-align:center">六月</th>
              </tr>            
              <tr style="height:100px;font-size:18px;">
              	<th style="width:140px;">
              	<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;:&nbsp;&nbsp;${id}</div>
              	<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓&nbsp;&nbsp;名:&nbsp;&nbsp;${name}</div>
              	<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性&nbsp;&nbsp;别:&nbsp;&nbsp;${sex}</div>
              	</th>
              	<td style="width:140px;">
              	<div>成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${score_1}</div>
              	<div>绩效:&nbsp;&nbsp;${performance_1}</div>
              	<div>缺勤次数:&nbsp;&nbsp;${num_1}</div>
              	</td> 
              	<td style="width:140px;">
              	<div>成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${score_2}</div>
              	<div>绩效:&nbsp;&nbsp;${performance_2}</div>
              	<div>缺勤次数:&nbsp;&nbsp;${num_2}</div>
              	</td>  
              	<td style="width:140px;">
              	<div>成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${score_3}</div>
              	<div>绩效:&nbsp;&nbsp;${performance_3}</div>
              	<div>缺勤次数:&nbsp;&nbsp;${num_3}</div>
              	</td> 
              	<td style="width:140px;">
              	<div>成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${score_4}</div>
              	<div>绩效:&nbsp;&nbsp;${performance_4}</div>
              	<div>缺勤次数:&nbsp;&nbsp;${num_4}</div>
              	</td> 
              	<td style="width:140px;">
              	<div>成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${score_5}</div>
              	<div>绩效:&nbsp;&nbsp;${performance_5}</div>
              	<div>缺勤次数:&nbsp;&nbsp;${num_5}</div>
              	</td>
              	<td style="width:140px;">
              	<div>成绩:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${score_6}</div>
              	<div>绩效:&nbsp;&nbsp;&nbsp;&nbsp;${performance_6}</div>
              	<div>缺勤次数:&nbsp;&nbsp;${num_6}</div>
              	</td>            	               
              </tr>            
              </s:iterator>
            </tbody>
          </table>
          
        </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading2">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse2">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;成绩柱形图
          </a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
        <div class="panel-body" style="text-align:center;">
          <table id="table" hidden="hidden">
          <tr>
          <s:iterator value="#request.achievement">
          <td id="1">${score_1}</td>
          <td id="2">${score_2}</td>
          <td id="3">${score_3}</td>
          <td id="4">${score_4}</td>
          <td id="5">${score_5}</td>
          <td id="6">${score_6}</td>
          </s:iterator>
          </tr>
          </table>
          
          <canvas id="chartContainer" width="800" height="700">
             browser doesn't support html5
          </canvas>
          
        </div>
      </div>
    </div>
    
    
  <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading3">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;信息反馈
          </a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading3">
        <div class="panel-body">
          <div>有什么不满请直说:</div>
          <div style="height:5px"></div>
        <div>
        
        <form action="Achievement" method="post">
          <textarea name="information" rows="20" cols="20" style="height: 100px; width: 492px; "></textarea>
          <div style="height:10px"></div>
          <div>
          <input type="submit" name="swit" value="提交"></input>
          <input type="submit" name="swit" value="重置"></input>
          </div>
        </form><br><br>
        <table>
        <thead></thead>
        <tbody >
         <tr>
           <th class="divcss5">ID</th>
           <th class="divcss3">回馈的信息</th>
         </tr>
         <s:iterator value="#request.infors">
         <tr>       
         <th class="divcss5">${id}</th>  
         <th class="divcss2">${information}</th>  
         </tr>
         </s:iterator>
        </tbody>
        
        </table>
        </div>
          
        </div>
      </div>
    </div>
    </div>  
    <script>
    function register(){
      
    }
    </script>	
  
  
</body>
</html>