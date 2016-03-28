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
  <div class="content">
   <table width="1000" cellspacing="1"  class="table table-striped table-hover">
	<tr>
		<th>标题</th>
		<th>时间</th>
		<th>内容</th>
		<th>类别</th>
		<th>发布者</th>
		<th>基本操作</th>		
	</tr>
	 <s:iterator value="#request.Publishes">
	  		<tr>
              	
              	<td >${title}</td>
              	<td >${date}</td>
              	<td>${context}</td>
              	<td >${type}</td>
              	<td >${user}</td>
              	<td height="20"><div align="center">
            		<a href="PublishAction_edit.action?id=${id}"><img src="images/edt.gif" width="16" height="16" border="0"/>编辑</a> 
           			 &nbsp; &nbsp;
            		<a href="PublishAction_delete.action?id=${id}" onclick="return checkdel();"><img src="images/del.gif" width="16" height="16" border="0"/>删除</a>
           		</div></td>
              </tr>
	</s:iterator>
</table>
 <script type="text/javascript">
    function checkdel(){
        if(confirm("你确定删除吗？")){
            return true;
        }
        return false;
     }
</script>
<br>
<form action="PublishAction_publish.action" method="post">		
		<input type="submit" value="发布新消息" class="btn btn-default" />
</form>
</div>
  </body>
</html>