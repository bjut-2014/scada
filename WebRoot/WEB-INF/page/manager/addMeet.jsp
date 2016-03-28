<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<base target="_self">
<head>
  <meta charset="utf-8">
  <title>添加会议</title>
</head>
<style type="text/css"> 
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
    padding:4px 10px 4px 10px

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
    width:80px; 
    height:50px;
    color:#0000EA
    } 
    .ui-select {  
    height: 26px;
    width: 120px;  
    border:solid 1px;  
     }  
</style>
<base target="_self">
<body>
<div style="margin:10px 0px 0px 10px">
 <form action="MeetManager" method="post">
<table>
        <thead></thead>
        <tbody >
       
         <tr>
           <th class="divcss5">会议ID</th>
           <th class="divcss3">
           <input id="meet_id" name="meet_id" type="text" class="ui-select" style="font-size:22px;width:420px;height:30px"/>
           </th>
         </tr>
         <tr>       
         <th class="divcss5">会议名称</th>
           <th class="divcss3">
           <input id="meet_name" name="meet_name" type="text" class="ui-select" style="font-size:22px;width:420px;height:30px"/>
           </th> 
         </tr>
          <tr>       
         <th class="divcss5">会议主题</th>
           <th class="divcss3">
           <input id="meet_title" name="meet_title" type="text" class="ui-select" style="font-size:22px;width:420px;height:30px"/>
           </th> 
         </tr>
          <tr>       
         <th class="divcss5">会议内容</th>
           <th class="divcss3">
           <input id="meet_content" name="meet_content" type="text" class="ui-select" style="font-size:22px;width:420px;height:30px"/>
           </th> 
         </tr>
          <tr>       
         <th class="divcss5">人&nbsp;&nbsp;&nbsp;&nbsp;数</th>
           <th class="divcss3">
           <input id="people_num" name="people_num" type="text" class="ui-select" style="font-size:22px;width:420px;height:30px"/>
         </th> 
         </tr>
		  <tr>       
         <th class="divcss5">会议开始与结束时间</th>
           <th class="divcss3">
           <input id="start_end" name="start_end" type="text" class="ui-select" style="font-size:22px;width:420px;height:30px"/>
         </th> 
         </tr>
		  <tr>       
         <th class="divcss5">地&nbsp;&nbsp;&nbsp;&nbsp;址</th>
           <th class="divcss3">
           <input id="location" name="location" type="text" class="ui-select" style="font-size:22px;width:420px;height:30px"/>
         </th> 
         </tr>
		   <tr>       
         <th class="divcss5">房间号码</th>
           <th class="divcss3">
           <input id="meetroom_num" name="meetroom_num" type="text" class="ui-select" style="font-size:22px;width:420px;height:30px"/>
         </th> 
         </tr>
		    <tr>       
         <th class="divcss5">使用时间</th>
           <th class="divcss3">
           <input id="useful_time" name="useful_time" type="text" class="ui-select" style="font-size:22px;width:420px;height:30px"/>
         </th> 
         </tr>
		    <tr>       
         <th class="divcss5">房间大小</th>
           <th class="divcss3">
           <input id="room_size" name="room_size" type="text" class="ui-select" style="font-size:22px;width:420px;height:30px"/>
         </th> 
         </tr>
         <tr>
          <th class="divcss5">
           
         </th>
         <th class="divcss5">  
           <input id="submit" name="swit" type="submit" value="提&nbsp;&nbsp;&nbsp;&nbsp;交" onClick="javascript:check();"/>
           <input id="refresh" name="swit" type="submit" value="重&nbsp;&nbsp;&nbsp;&nbsp;置" onClick="reset()"/>
         </th>
         <tr> 
        </tbody>
        
        </table>
        </form>
        </div>
</body>
</html>
