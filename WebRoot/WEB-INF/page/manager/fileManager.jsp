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
    .ui-select {  
    height: 30px;
    width: 350px;  
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
            <form name="form" action="FileManager" method="post">
            <select name="select" id="select" class="ui-select">
            <option value="id" >&nbsp;&nbsp;&nbsp;&nbsp;I&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;</option>
            <option value="name">&nbsp;&nbsp;&nbsp;&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;&nbsp;</option>
            <option value="card">身份证证件号</option>
            </select>
            <input type=text name="message" id="message" class="ui-select"/>
            <input id="search" name="swit" type="submit" value="查找信息" onClick="javascript:formcheck();"/>
            <input id="delete" name="swit" type="submit" value="删除信息" onClick="javascript:formdelete();"/> 
            <input id="all" type="button" value="全部信息" onClick="window.location.href='FileManager.action'" />  
            </form> 
            </span>
     </div> 
     <div style="height:20px"></div>  
  <!-- <div class="alert alert-info">当前位置<b class="tip"></b>应用展示<b class="tip"></b>资产管理</div> -->
  <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading1">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="true" aria-controls="collapse1">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;个人基本信息
          </a></h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading1">
        <div class="panel-body">
        <div class="form-group">   
               
            <!--  
            <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;字段名称：</label>
            <input type="text" class="form-control" style="display: inline; width: 200px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" class="btn btn-primary" style="margin-top: 8px">搜索</button>
          </div>
          -->
          <table id="data" class="table table-striped table-hover">
            <thead>
              <tr>        
                <th>ID</th>
                <th>姓名</th>
                <th>身份证号</th>
                <th>性别</th>
                <th>出生日期</th>
				<th>年龄</th>
				<th>籍贯</th>
				<th>民族</th>
				<th>政治面貌</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>5</td>
                <td>6</td>
                <td>7</td>
                <td>8</td>
                <td>9</td>
              </tr>
              <s:iterator value="#request.fileManager">
              <input type="hidden" name="aa" id="aa" value="${sname}">
              <tr>
                <td>${sid}</td>
              	<td>${sname}</td>
              	<td>${identity_card}</td>
              	<td>${sex}</td>
              	<td>${both}</td>
				<td>${age}</td>
				<td>${location}</td>
				<td>${nation}</td>
				<td>${politics_status}</td>
              </tr>
              </s:iterator>
            </tbody>
          </table>
        </div>
      </div>
    </div></div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading2">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse2">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;专业学识
          </a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
        <div class="panel-body">
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th>学校</th>
                <th>学历</th>
                <th>专业</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
              </tr>
              <s:iterator value="#request.fileManager">
              <tr>
              	<td>${school}</td>
              	<td>${education_background}</td>
              	<td>${major}</td>
              </tr>
              </s:iterator>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading3">
        <h4 class="panel-title">
          <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
            <span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>&nbsp;&nbsp;工作信息
          </a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading3">
        <div class="panel-body">
         <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th>职称</th>
                <th>入职时间</th>
                <th>任职资格</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
              </tr>
              <s:iterator value="#request.fileManager">
              <tr>
              	<td>${job_title}</td>
              	<td>${job_title_date}</td>
              	<td>${qualification}</td>
              </tr>
              </s:iterator>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="heading4">
    		<h4 class="panel-title">
    			<a class="collapsed" data-toggle="collapse"
    				data-parent="#accordion" href="#collapse4" aria-expanded="false"
    				aria-controls="collapse4">
    				<span class="glyphicon glyphicon-align-justify"
    					aria-hidden="true">
    				</span>
    				&nbsp;&nbsp;联系方式
    			</a>
    		</h4>
    	</div>
    	<div id="collapse4" class="panel-collapse collapse"
    		role="tabpanel" aria-labelledby="heading4">
    		<div class="panel-body">
    			<table class="table table-striped table-hover">
    				<thead>
    					<tr>
    						<th>座机</th>
    						<th>移动电话</th>
    						<th>公司邮箱</th>
    						<th>个人邮箱</th>
    					</tr>
    				</thead>
    				<tbody>
    					<tr>
    						<td>1</td>
    						<td>2</td>
    						<td>3</td>
    						<td>4</td>
    					</tr>
    					<s:iterator value="#request.fileManager">
    						<tr>
    							<td>${telephone}</td>
    							<td>${mobilephone}</td>
    							<td>${company_email}</td>
    							<td>${sole_email}</td>
    						</tr>
    					</s:iterator>
    				</tbody>
    			</table>   	
    </div>
    </div>
  </div>
  <div class="panel panel-default">
      <div class="panel-heading" role="tab" id="heading5">
    		<h4 class="panel-title">
    			<a class="collapsed" data-toggle="collapse"
    				data-parent="#accordion" href="#collapse5" aria-expanded="false"
    				aria-controls="collapse5">
    				<span class="glyphicon glyphicon-align-justify"
    					aria-hidden="true">
    				</span>
    				&nbsp;&nbsp;注册信息
    			</a>
    		</h4>
    	</div>
    	<div id="collapse5" class="panel-collapse collapse"
    		role="tabpanel" aria-labelledby="heading5">
    		<div class="panel-body" style="margin-left:400px;">
         
          <form action="FileManager" method="post" style="width: 780px;">
          <span style="height:20px;font-size:18px;font-weight:blod;">个人信息基本信息:</span>
    
          <div style="height:15px"></div>
          <div style="height:15px"></div>
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;font-weight:blod;">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="sname" name="sname" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="sex" name="sex" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
          </div> 
  
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="age" name="age" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="both" name="both" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
          </div>

          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">身份证号:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="identity_card" name="identity_card" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">邮政编码:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="zip_code" name="zip_code" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">籍&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贯:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="location" name="location" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">民&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;族:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="nation" name="nation" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">政治面貌:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="politics_status" name="politics_status" class="ui-select" type="text" style="font-size:22px;width:300px;height:30px"/>
          </div>
    
    <span style="height:20px;font-size:18px;">专&nbsp;&nbsp;&nbsp;&nbsp;业&nbsp;&nbsp;&nbsp;&nbsp;学&nbsp;&nbsp;&nbsp;&nbsp;识:&nbsp;&nbsp;&nbsp;&nbsp;</span>
    
    <div style="height:15px"></div>      
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="school" name="school" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="major" name="major" type="text" style="font-size:22px;width:300px;height:30px" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="education_background" name="education_background" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
          </div>
       
  
    <span style="height:20px;font-size:18px;">工&nbsp;&nbsp;&nbsp;&nbsp;作&nbsp;&nbsp;&nbsp;&nbsp;信&nbsp;&nbsp;&nbsp;&nbsp;息:&nbsp;&nbsp;&nbsp;&nbsp;</span>
    
    <div style="height:15px"></div>
    
      <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="job_title" name="job_title" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
      </div> 
      
       <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">入职时间:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="job_title_date" name="job_title_date" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px;"/>
       </div>
       
        <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">任职资格:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="qualification" name="qualification" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
       </div>
       
    
    <span style="height:20px;font-size:18px;">联&nbsp;&nbsp;&nbsp;&nbsp;系&nbsp;&nbsp;&nbsp;&nbsp;方&nbsp;&nbsp;&nbsp;&nbsp;式:&nbsp;&nbsp;&nbsp;&nbsp;</span>
    
    <div style="height:15px"></div>
       
      <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">座&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="telephone" name="telephone" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
      </div> 
      
      <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">移动电话:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="mobilephone" name="mobilephone" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
       </div>
       
       <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">紧急电话:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="urgent_phone" name="urgent_phone" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
       </div>
       
       <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">公司邮箱:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="company_email" name="company_email" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
       </div>
       
       <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">个人邮箱:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="sole_email" name="sole_email" type="text" class="ui-select" style="font-size:22px;width:300px;height:30px"/>
       </div>
       
      <div style="text-align:center;height:10px"></div>  
      <div style="height:0px;text-align:right">
        <input value="返回" type="button" style="font-size:22px;" onClick="window.location.href='FileManager.action'"></input><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>    
        <input name="swit" type="submit" value="提交" style="font-size:22px;" onClick="javascript:check();"></input><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <input value="重置" type="button" id="reset" style="font-size:22px;" onClick="javascript:refresh();"></input>
      </div>
    </form>
    <div style="width:300px;height:100px"></div>
        </div>
      </div>
    </div>
</div>
</body>
</html>