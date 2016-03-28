<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8" />
    <title>文档管理</title>
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
		 .doubleselect br{  
        	display:none;  
   		 }
   		 .doubleselect{
   		   float:right;
   		  }
    </style>
</head>
  	

<body>
<div class="doubleselect"> 
<s:form action="docList_save.action" onsubmit="return check();" name="form1" method="post" enctype="multipart/form-data" class="form-inline" role ="form">
 <div class="form-group">
	<s:file id="inputfile" style="display: inline; width: 200px" type= "file" name="upload" theme="simple"/>
 </div>
	<s:doubleselect class="form-control" style="display: inline; width: 200px" name="type" theme="simple"
		list="#request.map.keySet()"  
		doubleName="subtype"	
		formName="form1"   
		doubleList="#request.map[top]"  		
        label="类型"  
        doubleCssClass="form-control"		
		/>
	&nbsp;<s:submit value="上传"  class="btn btn-primary" style="margin-top: 8px" theme="simple"/>
</s:form>
</div>
<script type="text/javascript">
    function check(){
       if(confirm("你确定提交吗？")){
           return true;
       }
       return false;
    }
    </script>
<table cellpadding="0" cellspacing="0" class="table table-striped table-hover">
	<tr>
		<th>文件名称</th>
		<th>上传者</th>
		<th>文件类型</th>
		<th>文件子类型</th>
		<th>上传时间</th>
		<th>删除</th>
	</tr>
	<s:iterator value="#request.documents">
	<tr>
	<%  
        String fname = (String)request.getAttribute("doc_name");  
        fname = java.net.URLEncoder.encode(fname, "UTF-8");  
        %>  
		<td><a href="downLoad.action?downPath=upload/<%=fname %>">${doc_name}</a></td>
		<td>${doc_author}</td>
		<td>${doc_type}</td>
		<td>${doc_subtype}</td>
		<td>${doc_date}</td>
		<td height="20">  
            <a href="docList_delete.action?id=${id}" onclick="return checkdel();"><img src="images/del.gif" width="16" height="16" border="0"/>删除</a>
        </td>
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
</body>
</html>