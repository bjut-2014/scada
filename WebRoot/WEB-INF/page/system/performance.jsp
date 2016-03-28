<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'performance.jsp' starting page</title>
<link rel="stylesheet" type="text/css"
	href="Styles/bootstrap-new.min.css" />
<script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
<style type="text/css">
.mr {
	margin-right: 10px;
}

.ml {
	margin-left: 10px;
}

.mt {
	margin-top: 10px;
}
</style>
</head>

<body>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">基本管理</h3>
		</div>
		<div class="panel-body">
			<form class="bs-example bs-example-form" >
				<div class="form-control mt">
					<label class="control-label">启用页面gzip压缩</label> <label
						class="checkbox-inline"> <input type="radio"
						name="optionsRadiosinline" value="option1" checked>是
					</label> <label class="checkbox-inline"> <input type="radio"
						name="optionsRadiosinline" value="option2">否
					</label>
				</div>
				<div class="input-group  mt">
					<span class="input-group-addon">列表最大页数</span> <input type="text"
						class="form-control" placeholder="列表最大页数">
				</div>
				<div class="input-group  mt">
					<span class="input-group-addon">列表页默认信息数</span> <input type="text"
						class="form-control" placeholder="列表页默认信息数">
				</div>
				<input type="submit" class="btn btn-primary mt" value="保存" />
			</form>
		</div>
	</div>
	
	
	
	
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">缓存管理</h3>
		</div>
		<div class="panel-body">
			<form class="bs-example bs-example-form" >
				<div class="form-control mt">
					<label class="control-label">启用页面缓存</label> <label
						class="checkbox-inline"> <input type="radio"
						name="optionsRadiosinline" value="option1" checked>是
					</label> <label class="checkbox-inline"> <input type="radio"
						name="optionsRadiosinline" value="option2">否
					</label>
				</div>
				<div class="input-group  mt">
					<span class="input-group-addon">页面缓存默认更新周期</span> <input type="text"
						class="form-control" placeholder="页面缓存默认更新周期">
				</div>
				<div class="input-group  mt">
					<span class="input-group-addon">信息列表页缓存更新周期</span> <input type="text"
						class="form-control" placeholder="信息列表页缓存更新周期">
				</div>
				<div class="input-group  mt">
					<span class="input-group-addon">内容页缓存更新周期</span> <input type="text"
						class="form-control" placeholder="内容页缓存更新周期">
				</div>
				<input type="submit" class="btn btn-primary mt" value="保存" />
			</form>
		</div>
	</div>
	
	
	
	
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">搜索管理</h3>
		</div>
		<div class="panel-body">
			<form class="bs-example bs-example-form" >
				<div class="input-group  mt">
					<span class="input-group-addon">搜索时间间隔</span> <input type="text"
						class="form-control" placeholder="设置合理的每次搜索时间间隔，可以避免恶意搜索而消耗大量系统资源">
				</div>
				<div class="input-group  mt">
					<span class="input-group-addon">搜索返回 最多的结果数</span> <input type="text"
						class="form-control" placeholder="返回搜索的结果数和消耗的资源成正比，不要设置过大">
				</div>
				<div class="input-group  mt">
					<span class="input-group-addon">每页信息数</span> <input type="text"
						class="form-control" placeholder="至少为1，否则可能导致列表页错误发生">
				</div>
				<input type="submit" class="btn btn-primary mt" value="保存" />
			</form>
		</div>
	</div>
	
</body>
</html>
