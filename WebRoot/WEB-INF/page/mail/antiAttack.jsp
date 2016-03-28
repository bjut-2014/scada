<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'antiAttack.jsp' starting page</title>
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

.mc {
	margin: 0 auto;
	text-align: center;
}
.ib{
	display: inline-block;
}
</style>
<body>
	<ul id="myTab" class="nav nav-tabs mt mr">
		<li class="active"><a href="#mailFilter" data-toggle="tab">邮件过滤
		</a></li>
		<li><a href="#whiteList" data-toggle="tab">白名单</a></li>
	</ul>
	<div id="myTabContent" class="tab-content  mt mr">
		<div class="tab-pane fade in active " id="mailFilter">
			<fieldset>
			<legend>选择过滤方式</legend>
			<form action="">
			<div class="mt">
				<h3 class="ib"><span class="label label-default">启用贝叶斯过滤</span></h3>
				<label class="checkbox-inline"> 
				<input type="radio" name="optionsRadiosinline1" value="option1"> 是
				</label> 
				<label class="checkbox-inline"> 
				<input type="radio" name="optionsRadiosinline1" value="option2" checked>
					否
				</label>
			</div>
			
			<div class="mt">
				<h3 class="ib"><span class="label label-primary">启用敏感词过滤</span></h3>
				<label class="checkbox-inline"> 
				<input type="radio" name="optionsRadiosinline2" value="option1"> 是
				</label> 
				<label class="checkbox-inline"> 
				<input type="radio" name="optionsRadiosinline2" value="option2" checked>
					否
				</label>
			</div>
			
			<div class="mt">
				<h3 class="ib"><span class="label label-info">启用黑名单过滤</span></h3>
				<label class="checkbox-inline"> 
				<input type="radio" name="optionsRadiosinline3" value="option1"> 是
				</label> 
				<label class="checkbox-inline"> 
				<input type="radio" name="optionsRadiosinline3" value="option2" checked>
					否
				</label>
			</div>
			<input type="button" class="btn btn-primary mt" value="保存" />
			</form>
			</fieldset>
		</div>
		<div class="tab-pane fade" id="whiteList">
			<table class="table table-hover">
				<caption class="mc">在此列表的邮箱地址不会被屏蔽</caption>
				<thead>
					<tr>
						<th>名称</th>
						<th>邮箱</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>梦幻</td>
						<td>398116621@qq.com</td>
						<td>删除</td>
					</tr>
					<tr>
						<td>menghan</td>
						<td>menghanmh@163.com</td>
						<td>删除</td>
					</tr>
				</tbody>
			</table>

			<!-- 按钮触发模态框 -->
			<button class="btn btn-primary" data-toggle="modal"
				data-target="#myModal">添加</button>

			<!-- 模态框（Modal） -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">添加新的白名单地址</h4>
						</div>
						<form class="form-inline">
							<div class="modal-body">
								<div class="form-group">
									<label class="sr-only" for="name">名称</label> <input type="text"
										class="form-control" id="name" placeholder="请输入名称">
								</div>
								<div class="form-group">
									<label class="sr-only" for="name">邮箱地址</label> <input
										type="text" class="form-control" id="name"
										placeholder="请输入邮箱地址">
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default mt"
									data-dismiss="modal">关闭</button>
								<input type="button" class="btn btn-primary" value="提交" />
							</div>
						</form>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->

			</div>
		</div>
</body>
</html>
