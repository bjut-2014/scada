<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
    <s:form action="DeviceAction_update.action" method="post" cssClass="form-horizontal" onsubmit="return check();" role="form" value="#request.device">
    	<s:hidden name = "device.id" value = "%{#request.device.id}" theme="simple"></s:hidden>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="装置ID"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="device.device_id" cssClass="form-control"  theme="simple" value = "%{#request.device.device_id}" ></s:textfield>
    		</div>
    	</div>
    		<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="装置名称"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="device.device_name" cssClass="form-control"  theme="simple" value = "%{#request.device.device_name}" ></s:textfield>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="装置类型"></s:label>
    		<div class="col-sm-10">
    			<s:select name="device.device_type"  cssClass="form-control" list="{'仪表','通信管理机','保护装置'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="所属场站"></s:label>
    		<div class="col-sm-10">
    			<s:select name="device.device_station"  cssClass="form-control" list="{'测试厂站01','测试厂站02','测试厂站03','测试厂站04','测试厂站05','测试厂站06','测试厂站07','测试厂站08','测试厂站09','测试厂站10','测试厂站11','测试厂站12'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="规约类型"></s:label>
    		<div class="col-sm-10">
    			<s:select name="device.device_ruletype"  cssClass="form-control" list="{'MODBUS','60870','61850','其他类型'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="规约选择"></s:label>
    		<div class="col-sm-10">
    			<s:select name="device.device_rulename"  cssClass="form-control" list="{'MODBUS(CRP_Modbus.dll)','101(CRP_101.dll)','103(CRP_103_Net.dll)','103(CRP_103_Net_NZ.dll)','104(CRP_104.dll)','CDT(CRP_CDT.dll)','MODBUS(CRP_Modbus_TR.dll)'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="通道类型"></s:label>
    		<div class="col-sm-10">
    			<s:select name="device.device_pipletype"  cssClass="form-control" list="{'网络','串行'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="当前状态"></s:label>
    		<div class="col-sm-10">
    			<s:select name="device.device_state"  cssClass="form-control" list="{'投入','维修','故障'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="电压等级"></s:label>
    		<div class="col-sm-10">
    			<s:select name="device.device_elec"  cssClass="form-control" list="{'0.1千伏','0.23千伏','0.38千伏','3千伏','6千伏','10千伏','13.8千伏','15.75千伏','18千伏','20千伏','35千伏','63千伏','110千伏','154千伏','220千伏','330千伏','500千伏','1100千伏','直流','直流500'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
      		<div class="col-sm-offset-2 col-sm-10">
      			<s:submit cssClass="btn btn-default" value="修改" theme="simple"/>
      		</div>
   		</div>     	
      	
    </s:form>
     <script type="text/javascript">
	    function check(){
	        if(confirm("你确定修改吗？")){
	            return true;
	        }
	        return false;
	     }
	</script>
  </body>
</html>
