<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title></title>
  <link rel="stylesheet" type="text/css" href="Styles/bootstrap-new.min.css" />
  <script type="text/javascript">  
  function openWin(src, width, height, showScroll){  
    window.showModalDialog (src,"","location:No;status:No;help:No;dialogWidth:"+width+";dialogHeight:"+height+";scroll:"+showScroll+";");  
  } 
  </script> 
  <script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
  <script type="text/javascript" src="Scripts/add.js"></script>
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
  <style type="text/css">    
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
            <form id="forms" name="form" action="MeetManager" method="post">
            <select name="select" id="select" class="ui-select">
            <option value="id" >&nbsp;&nbsp;&nbsp;&nbsp;I&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;</option>
            <!--  <option value="name">&nbsp;&nbsp;会&nbsp;&nbsp;议&nbsp;&nbsp;名&nbsp;&nbsp;称&nbsp;&nbsp;</option> -->
            </select>
            <input type=text name="message" id="message" class="ui-select"/>
            <input id="search" name="swit" type="submit" value="查找会议" onClick="javascript:formcheck();"/>
            <input id="delete" name="swit" type="submit" value="删除会议" onClick="javascript:formdelete();"/> 
            <!-- <input id="add" name="swit" type="submit" value="增加信息" /> --> 
            <input id="all" type="button" value="全部会议" onClick="window.location.href='MeetManager.action'" />
            <input id="all" type="button" value="添加会议" style="CURSOR: pointer" onclick="myShowModalDialog('Forward.action', 800, 600, function (v) {
                  if (v == 1) {
                        loadList();
                    }
                  });" />  
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
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;会议信息
          </a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading1">
        <div class="panel-body" style="text-align:center;">
          <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议ID</th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议名称</th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议主题</th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议内容</th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人数</th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议开始与结束时间</th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址</th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;房间</th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;房间使用时间</th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;房间大小</th>
              </tr>
            </thead>
            <tbody>    
              <s:iterator value="#request.meetManager">              
              <tr>
                <td>0${meet_id}</td>
              	<td>${meet_name}</td>
              	<td>${meet_title}</td>   	
              	<td>${meet_content}</td>
              	<td>${people_num}</td>
              	<td>${start_end}</td>
              	<td>${location}</td>
              	<td>${meetroom_num}</td>
              	<td>${useful_time}</td>
              	<td>${room_size}</td>
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
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;会议房间信息
          </a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
        <div class="panel-body" style="text-align:center;">
          <table style="BORDER-COLLAPSE: collapse" borderColor=#000000 height=40 cellPadding=1 width=500 align=center border=1>
            <tbody>
            <tr style="text-align:center;">
			    <th style="text-align:center;" width=100 height=40 >全部房间</th>
			    <th style="text-align:center;">#0101</th>
			    <th style="text-align:center;">#0102</th>
			    <th style="text-align:center;">#0103</th>
			    <th style="text-align:center;">#0104</th>
			    <th style="text-align:center;">#0105</th>
			    <th style="text-align:center;">#0106</th>
			</tr>
			<tr style="text-align:center;">
			    <th style="text-align:center;" width=100 height=40>可容纳人数</th>
			    <th style="text-align:center;">30人</th>
			    <th style="text-align:center;">40人</th>
			    <th style="text-align:center;">30人</th>
			    <th style="text-align:center;">40人</th>
			    <th style="text-align:center;">40人</th>
			    <th style="text-align:center;">50人</th>
			</tr>    
              <tr style="text-align:center;">
                <th style="text-align:center;" width=100 height=40>是否可用</th>  
                <s:iterator value="#request.room">   
              	<td>${useful}</td>
              	</s:iterator>
              </tr>
              <tr style="text-align:center;">
                <th style="text-align:center;" width=100 height=40>可用时间</th>
                <s:iterator value="#request.room">   
              	<td>${time}</td>
              	</s:iterator>
              	
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
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;添加会议</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading3">
        <div class="panel-body" style="width:600px;margin-left:400px;">
          
          <form target="_self" action="MeetManager" method="post" style="width: 780px;">
          <span style="height:20px;font-size:22px;font-weight:blod;">会议基本信息:</span>
    
          <div style="height:15px"></div>
          <div style="height:15px"></div> 

          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">会&nbsp;议&nbsp;I&nbsp;D&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="meet_id" name="meet_id" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>      
          </div>

          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">会议名称:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="meet_name" name="meet_name" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">会议主题:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="meet_title" name="meet_title" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">会议内容:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="meet_content" name="meet_content" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">人&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="people_num" name="people_num" class="ui-select" type="text" style="font-size:22px;width:300px;height:30px"/>
          </div>
          
          <div style="height:50px">
          <span style="height:20px;font-size:22px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会议开始与结束时间:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="start_end" name="start_end" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
          
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="location" name="location" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
          
           
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">房间号码:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="meetroom_num" name="meetroom_num" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">使用时间:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="useful_time" name="useful_time" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">房间大小:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="room_size" name="room_size" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
            
      <div style="text-align:center;height:10px"></div>  
      <div style="height:0px;text-align:right">
        <input value="返回" type="button" style="font-size:22px;" onClick="window.location.href='MeetManager.action'"></input><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>    
        <input name="swit" type="submit" value="提交" style="font-size:22px;" onClick="javascript:check();"></input><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <input value="重置" type="button" id="reset" style="font-size:22px;" onClick="javascript:refresh();"></input>
      </div>
    </form>
    <div style="width:300px;height:100px"></div>
          
        </div>
      </div>
    </div>
    

  
</body>
</html>