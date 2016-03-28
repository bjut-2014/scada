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
    <s:form action="TelemetringAction_update.action" method="post" cssClass="form-horizontal" onsubmit="return check();" role="form" value="#request.telemetring">
    	<s:hidden name = "telemetring.id" value = "%{#request.telemetring.id}" theme="simple"></s:hidden>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="遥测代号"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="telemetring.tele_code" cssClass="form-control"  theme="simple" value = "%{#request.telemetring.tele_code}" ></s:textfield>
    		</div>
    	</div>
    		<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="遥测名称"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="telemetring.tele_name" cssClass="form-control"  theme="simple" value = "%{#request.telemetring.tele_name}" ></s:textfield>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="所属场站"></s:label>
    		<div class="col-sm-10">
    			<s:select name="telemetring.tele_station"  cssClass="form-control" list="{'测试厂站01','测试厂站02','测试厂站03','测试厂站04','测试厂站05','测试厂站06','测试厂站07','测试厂站08','测试厂站09','测试厂站10','测试厂站11','测试厂站12'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="装置"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="telemetring.tele_device" cssClass="form-control"  theme="simple" value = "%{#request.telemetring.tele_device}" ></s:textfield>
    		</div>   		
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="遥测类型"></s:label>
    		<div class="col-sm-10">
    			<s:select name="telemetring.tele_type"  cssClass="form-control" list="{'A相电压','B相电压','C相电压','AB线电压','BC线电压','CA线电压','A相电流','B相电流','C相电流','首端有功','首端无功','末端有功','末端无功','首端A相电流','首端B相电流','首端C相电流','末端A相电流',	'末端B相电流','末端C相电流','高端有功','高端无功','中端有功','中端无功','低端有功','低端无功','高端A相电流','高端B相电流','高端C相电流','中端A相电流','中端B相电流','中端C相电流','低端A相电流','低端B相电流','低端C相电流','有功出力','无功出力','有功功率','无功功率','A相有功','B相有功','C相有功','A相无功','B相无功','C相无功','量测值'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="整型值"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="telemetring.tele_int" cssClass="form-control"  theme="simple" value = "%{#request.telemetring.tele_int}" ></s:textfield>
    		</div>
    		
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="浮点数"></s:label>
    	
    		<div class="col-sm-10">
    			<s:textfield name="telemetring.tele_float" cssClass="form-control"  theme="simple" value = "%{#request.telemetring.tele_float}" ></s:textfield>
    		</div>
    			
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="状态"></s:label>
    		<div class="col-sm-10">
    			<s:select name="telemetring.tele_state"  cssClass="form-control" list="{'正常','告警'}" theme="simple">				
    			</s:select>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="基值"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="telemetring.tele_basicvalue" cssClass="form-control"  theme="simple" value = "%{#request.telemetring.tele_basicvalue}" ></s:textfield>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="系数"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="telemetring.tele_factor" cssClass="form-control"  theme="simple" value = "%{#request.telemetring.tele_factor}" ></s:textfield>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="阀值"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="telemetring.tele_threshold" cssClass="form-control"  theme="simple" value = "%{#request.telemetring.tele_threshold}" ></s:textfield>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="死区值"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="telemetring.tele_deadvalue" cssClass="form-control"  theme="simple" value = "%{#request.telemetring.tele_deadvalue}" ></s:textfield>
    		</div>
    	</div>
    	<div class="form-group">
    		<s:label cssClass="col-sm-2 control-label" theme="simple" value="滤波因子"></s:label>
    		<div class="col-sm-10">
    			<s:textfield name="telemetring.tele_filtering" cssClass="form-control"  theme="simple" value = "%{#request.telemetring.tele_filtering}" ></s:textfield>
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
