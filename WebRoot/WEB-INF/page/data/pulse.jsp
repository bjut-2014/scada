<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8" />
    <title>性能采集</title>
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css" />
    <link rel="stylesheet" type="text/css" href="Styles/base.css" />
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
    <script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.8.22.custom.min.js"></script>
    <script type="text/javascript" src="Scripts/index.js"></script>
    <style type="text/css">
<style type="text/css">

	html, body, div, span, object, iframe,
	h1, h2, h3, h4, h5, h6, p, blockquote, pre,
	abbr, address, cite, code,
	del, dfn, em, img, ins, kbd, q, samp,
	small, strong, sub, sup, var,
	b, i,
	dl, dt, dd, ol, ul, li,
	fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td {
		margin: auto;
		padding:0;
		border:0;
		outline:0;
		font-size:50%;
		vertical-align:baseline;
		background:transparent;
	}
	
	body {
		margin:0;
		padding:0;
		font:12px/15px "Helvetica Neue",Arial, Helvetica, sans-serif;
		color: #555;
		
	}
	
	a {color:#666;}
	
	#content { margin-left: auto;margin-right: auto;}
	
	/*
	Pretty Table Styling
	CSS Tricks also has a nice writeup: http://css-tricks.com/feature-table-design/
	*/
	
	table {
		overflow:hidden;
		border:1px solid #d3d3d3;
		background:#fefefe;
		width:100%;
		margin:auto 0;
		border-radius:5px;
		font-size:15px;
		-moz-box-shadow: 0 0 4px rgba(0, 0, 0, 0.2);
		-webkit-box-shadow: 0 0 4px rgba(0, 0, 0, 0.2);
	}
	
	th, td {padding:10px 10px 10px; text-align:center; }
	
	th {padding-top:10px; text-shadow: 1px 1px 1px #fff; background:#e8eaeb;}
	
	td {border-top:1px solid #e0e0e0; border-right:1px solid #e0e0e0;}
	
	tr.odd-row td {background:#f6f6f6;}
	
	td.first, th.first {text-align:left}
	
	td.last {border-right:none;}
	
	/*
	Background gradients are completely unnecessary but a neat effect.
	*/
	
	td {
		background: -moz-linear-gradient(100% 25% 90deg, #fefefe, #f9f9f9);
		background: -webkit-gradient(linear, 0% 0%, 0% 25%, from(#f9f9f9), to(#fefefe));
	}
	
	tr.odd-row td {
		background: -moz-linear-gradient(100% 25% 90deg, #f6f6f6, #f1f1f1);
		background: -webkit-gradient(linear, 0% 0%, 0% 25%, from(#f1f1f1), to(#f6f6f6));
	}
	
	th {
		background: -moz-linear-gradient(100% 20% 90deg, #e8eaeb, #ededed);
		background: -webkit-gradient(linear, 0% 0%, 0% 20%, from(#ededed), to(#e8eaeb));
	}
	form {
		border-radius:5px;
	}
	.btn4
	{
		width:141px;
		height:37px;
		font-size:14px;
		line-height:14px;
		background:url("image/button/bg1.jpg") no-repeat left top;
		color:#959595;
		padding-bottom:2px;
	}
    </style>
</head>
  <body>
  <form action="TelemetringAction_save.action" method="post">		
		<select name="type">
			<option value ="Telemetring">遥测量</option> 
			<option value ="Telecommand">遥信量</option>
			<option value ="Pulse">脉冲量</option>		
		</select>
		<select name="Station">
			<option value ="测试厂站01">测试厂站01</option> 
			<option value ="测试厂站02">测试厂站02</option>			
		</select>			
			<input type="submit" value="Submit" class="btn4" />
</form>
  <div id="content">
   <table cellspacing="1" >
	<tr>
		<th>序号</th>
		<th>脉冲代号</th>
		<th>脉冲名称</th>
		<th>所属场站</th>
		<th>装置</th>
		<th>整型值</th>
		<th>浮点值</th>
		<th>基值</th>
		<th>满码值</th>
		<th>系数</th>

	</tr>
	 <s:iterator value="#request.Pulse">
	  		<tr>
              	<td>${id}</td>
              	<td>${pulse_code}</td>
              	<td>${pulse_name}</td>
              	<td>${pulse_station}</td>
              	<td>${pulse_device}</td>
              	<td>${pulse_int}</td>
              	<td>${pulse_float}</td>
              	<td>${pulse_basicvalue}</td>
              	<td>${pulse_fullcodevalue}</td>
              	<td>${pulse_factor}</td>             	
              </tr>
	</s:iterator>
</table>
</div>
  </body>
</html>