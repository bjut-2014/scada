<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
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

<title>html5用户注册页面模板</title>


<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<![endif]-->

<link href="css/normalize.css" rel="stylesheet"/>
<link href="css/jquery-ui.css" rel="stylesheet"/>
<link href="css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>

<style type="text/css">
body{font:normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;color: #222;background:url(pattern.png);overflow-y:scroll;padding:60px 0 0 0;}
#my-form{width:755px;margin:0 auto;border:1px solid #ccc;padding:3em;border-radius:3px;box-shadow:0 0 2px rgba(0,0,0,.2);}
#comments{width:350px;height:100px;}
</style>
</head>
<body>
<div class="row">
  <div id="1" class="eightcol last" style="width:600px;margin-left:400px;">
    <form action="FileManager" method="post" style="width: 780px;">
    
    <span style="height:20px;font-size:18px;">个人信息基本信息:</span>
    
    <div style="height:15px"></div>
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="sname" name="sname" type="text" style="font-size:22px;" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="sex" name="sex" type="text" class="ui-select" style="font-size:22px;"/>
          </div> 
  
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="age" name="age" type="text" class="ui-select" style="font-size:22px;"/>
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="both" name="both" type="text" class="ui-select" style="font-size:22px;"/>
          </div>

          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">身份证号:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="identity_card" name="identity_card" type="text" class="ui-select" style="font-size:22px;"/>
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">邮政编码:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="zip_code" name="zip_code" type="text" style="font-size:22px;" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">籍&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贯:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="location" name="location" type="text" style="font-size:22px;" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">民&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;族:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="nation" name="nation" type="text" style="font-size:22px;" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">政治面貌:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="politics_status" name="politics_status" class="ui-select" type="text" style="font-size:22px;"/>
          </div>
    
    <span style="height:20px;font-size:18px;">专&nbsp;&nbsp;&nbsp;&nbsp;业&nbsp;&nbsp;&nbsp;&nbsp;学&nbsp;&nbsp;&nbsp;&nbsp;识:&nbsp;&nbsp;&nbsp;&nbsp;</span>
    
    <div style="height:15px"></div>      
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="school" name="school" type="text" style="font-size:22px;" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="major" name="major" type="text" style="font-size:22px;" class="ui-select" >
          </div>
          
          <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="education_background" name="education_background" type="text" class="ui-select" style="font-size:22px;"/>
          </div>
       
  
    <span style="height:20px;font-size:18px;">工&nbsp;&nbsp;&nbsp;&nbsp;作&nbsp;&nbsp;&nbsp;&nbsp;信&nbsp;&nbsp;&nbsp;&nbsp;息:&nbsp;&nbsp;&nbsp;&nbsp;</span>
    
    <div style="height:15px"></div>
    
      <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="job_title" name="job_title" type="text" class="ui-select" style="font-size:22px;"/>
      </div> 
      
       <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">入职时间:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="job_title_date" name="job_title_date" type="text" class="ui-select" style="font-size:22px;"/>
       </div>
       
        <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">任职资格:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="qualification" name="qualification" type="text" class="ui-select" style="font-size:22px;"/>
       </div>
       
    
    <span style="height:20px;font-size:18px;">联&nbsp;&nbsp;&nbsp;&nbsp;系&nbsp;&nbsp;&nbsp;&nbsp;方&nbsp;&nbsp;&nbsp;&nbsp;式:&nbsp;&nbsp;&nbsp;&nbsp;</span>
    
    <div style="height:15px"></div>
       
      <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">座&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="telephone" name="telephone" type="text" class="ui-select" style="font-size:22px;"/>
      </div> 
      
      <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">移动电话:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="mobilephone" name="mobilephone" type="text" class="ui-select" style="font-size:22px;"/>
       </div>
       
       <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">紧急电话:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="urgent_phone" name="urgent_phone" type="text" class="ui-select" style="font-size:22px;"/>
       </div>
       
       <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">公司邮箱:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="company_email" name="company_email" type="text" class="ui-select" style="font-size:22px;"/>
       </div>
       
       <div style="text-align:center;height:50px">
          <span style="height:20px;font-size:22px;">个人邮箱:&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <input id="sole_email" name="sole_email" type="text" class="ui-select" style="font-size:22px;"/>
       </div>
       
      <div style="text-align:center;height:50px"></div>  
      <div style="height:0px;text-align:right">
        <input value="返回" type="button" style="font-size:22px;" onClick="window.location.href='FileManager.action'"></input><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>    
        <input name="swit" type="submit" value="提交" style="font-size:22px;" onClick="javascript:check();"></input><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <input value="重置" type="button" id="reset" style="font-size:22px;" onClick="javascript:refresh();"></input>
      </div>
    </form>
    <div style="height:100px"></div>
  </div>
</div>


<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery.idealforms.js"></script>
<script type="text/javascript">
var options = {

	onFail: function(){
		alert( $myform.getInvalid().length +' invalid fields.' );
	},

	inputs: {
		'password': {
			filters: 'required pass',
		},
		'username': {
			filters: 'required username',
			data: {
			//ajax: { url:'validate.php' }
			}
		},
		'file': {
			filters: 'extension',
			data: { extension: ['jpg'] }
		},
		'comments': {
			filters: 'min max',
			data: { min: 50, max: 200 }
		},
		'states': {
			filters: 'exclude',
			data: { exclude: ['default'] },
			errors : {
				exclude: '选择国籍.'
			}
		},
		'langs[]': {
			filters: 'min max',
			data: { min: 2, max: 3 },
			errors: {
				min: 'Check at least <strong>2</strong> options.',
				max: 'No more than <strong>3</strong> options allowed.'
			}
		}
	}
	
};

var $myform = $('#my-form').idealforms(options).data('idealforms');

$('#reset').click(function(){
	$myform.reset().fresh().focusFirst();
});

$myform.focusFirst();
</script>
<script type="text/javascript">
function check(){
if($('input')[0].val){
  alert("有内容没有填写");
} 
}
</script> 
<script type="text/javascript">
function refresh()
{
   window.location.reload();
}
</script>
<div style="text-align:center;">

</div>
</body>
</html>
