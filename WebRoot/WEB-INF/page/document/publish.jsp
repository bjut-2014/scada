<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
	<meta charset="utf-8" />
    <title>性能采集</title>
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap-new.min.css" />
  	<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
  	<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    
</head>
  <body>
 
    <!-- <form action="PublishAction_p.action" method="post" class="form-control">
     <table cellspacing="1"  class="table table-striped table-hover">
      <tr>
      	<td>消息标题: </td>
      	<td><input type="text" name="publish.title"/></td>
      </tr>
      <tr>
      	<td>类型：</td>
      	<td><select class="form-control" style="display: inline; width: 200px" name="publish.type">
			<option value ="行政管理">行政管理</option> 
			<option value ="经营管理">经营管理</option>	
			<option value ="生产技术管理">生产技术管理</option>	
			<option value ="财务审计">财务审计</option>	
			<option value ="人事劳资">人事劳资</option>	
					
		</select></td>
		</tr>
		<tr>
      	<td>消息内容</td>
      	<td><textarea name="publish.context"  cols="100" rows="10"></textarea></td>
      	</tr>
      	<tr><td></td>
      	<td><input type="submit" value="发布" class="btn btn-primary" style="margin-top: 8px"/></td>
      	</tr>
      	</table>
     </form> -->
     <body>
    <form action="PublishAction_p.action" method="post" class="form-horizontal">
    	 
    	<div class="form-group">
    		<label class="col-sm-2 control-label"  >消息标题</label>
    		<div class="col-sm-10">
    			<input type="text" name="publish.title" class="form-control" placeholder="请输入标题内容"/>
    		</div>
    	</div>
      	<div class="form-group">
    		<label class="col-sm-2 control-label"  >类         型</label>
    		<div class="col-sm-10">
    			<select name="publish.type"  class="form-control">
    				<option>党群工作</option>
    				<option>行政管理</option>
    				<option>经营管理</option>
    				<option>生产技术管理</option>
    				<option>财务审计</option>
    				<option>人事劳资</option>
    			</select>
    		</div>
    	</div>
    	<div class="form-group">
    		<label class="col-sm-2 control-label" >消息内容</label>
    		<div class="col-sm-10">
    			<textarea name="publish.context" class="form-control" rows="3"  rows="10" placeholder="请输入内容"></textarea>
    		</div>
    	</div>
    	<div class="form-group">
      		<div class="col-sm-offset-2 col-sm-10">
         		<button type="submit" class="btn btn-default" onclick="return check();">发布</button>
      		</div>
   		</div>     	
    </form>
    <script type="text/javascript">
	    function check(){
	        if(confirm("你确定发布吗？")){
	            return true;
	        }
	        return false;
	     }
	</script>
  </body>
    
  </body>
</html>
