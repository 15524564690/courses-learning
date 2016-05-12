<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>后台管理</title>
<link rel="stylesheet" type="text/css" href="${basePath }css/common.css" />
<link rel="stylesheet" type="text/css" href="${basePath }css/main.css" />
<script type="text/javascript" src="${basePath }js/modernizr.min.js"></script>
</head>
<body>
	<div class="topbar-wrap white">
		<div class="topbar-inner clearfix">
			<div class="topbar-logo-wrap clearfix">
				<h1 class="topbar-logo none">
					<a href="index.html" class="navbar-brand">后台管理</a>
				</h1>
				<ul class="navbar-list clearfix">
					<li><a class="on" href="index.html">首页</a></li>
					<li><a href="#" target="_blank">网站首页</a></li>
				</ul>
			</div>
			<div class="top-info-wrap">
				<ul class="top-info-list clearfix">
					<li><a href="http://www.jscss.me">管理员</a></li>
					<li><a href="http://www.jscss.me">修改密码</a></li>
					<li><a href="http://www.jscss.me">退出</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container clearfix">
		<div class="sidebar-wrap">
			<div class="sidebar-title">
				<h1>菜单</h1>
			</div>
			<div class="sidebar-content">
				<ul class="sidebar-list">
					<li><a href="#"><i class="icon-font">&#xe003;</i>常用操作</a>
						<ul class="sub-menu">
							<li><a href="kechengguanli.jsp"><i class="icon-font">&#xe008;</i>课程管理</a></li>
							<li><a href="fangxiangguanli.jsp"><i class="icon-font">&#xe005;</i>方向管理</a></li>
							<li><a href="fenleiguanli.jsp"><i class="icon-font">&#xe006;</i>分类管理</a></li>
							<li><a href="pinglunguanli.jsp"><i class="icon-font">&#xe012;</i>评论管理</a></li>
							<li><a href="zhangjieguanli.jsp"><i class="icon-font">&#xe052;</i>章节管理</a></li>
							<li><a href="yonghuguanli.jsp/action/user/usermanager"><i class="icon-font">&#xe033;</i>用户管理</a></li>
						</ul></li>
					<li><a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
						<ul class="sub-menu">
							<li><a href="system.jsp"><i class="icon-font">&#xe017;</i>系统设置</a></li>
							<li><a href="system.jsp"><i class="icon-font">&#xe037;</i>清理缓存</a></li>
							<li><a href="system.jsp"><i class="icon-font">&#xe046;</i>数据备份</a></li>
							<li><a href="system.jsp"><i class="icon-font">&#xe045;</i>数据还原</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!--/sidebar-->
		<div class="main-wrap">

			<div class="crumb-wrap">
				<div class="crumb-list">
					<i class="icon-font"></i><a
						href="http://localhost:8080/myspring/manager/manager.jsp">首页</a><span
						class="crumb-step">&gt;</span><a class="crumb-name"
						href="http://localhost:8080/myspring/manager/kechengguanli.jsp">课程管理</a><span
						class="crumb-step">&gt;</span><span>新增课程</span>
				</div>
			</div>
			<div class="result-wrap">
				<div class="result-content">
					<form action="/jscss/admin/design/add" method="post" id="myform"
						name="myform" enctype="multipart/form-data">
						<table class="insert-tab" width="100%">
							<tbody>
								<tr>
									<th width="120"><i class="require-red">*</i>方向：</th>
									<td><select name="colId" id="catid" class="required">
											<option value="">请选择</option>
											<option value="19">精品界面</option>
											<option value="20">推荐界面</option>
									</select></td>
								</tr>
								<tr>
									<th width="120"><i class="require-red">*</i>分类：</th>
									<td><select name="colId" id="catid" class="required">
											<option value="">请选择</option>
											<option value="19">精品界面</option>
											<option value="20">推荐界面</option>
									</select></td>
								</tr>
								<tr>
									<th><i class="require-red">*</i>课程名称：</th>
									<td><input class="common-text required" id="title"
										name="title" size="50" value="" type="text"></td>
								</tr>
								<tr>
									<th><i class="require-red">*</i>标题：</th>
									<td><input class="common-text required" id="title"
										name="title" size="50" value="" type="text"></td>
								</tr>
								<tr>
									<th>作者：</th>
									<td><input class="common-text" name="author" size="50"
										value="admin" type="text"></td>
								</tr>
								<tr>
									<th><i class="require-red">*</i>图片：</th>
									<td><input name="smallimg" id="" type="file">
									<!--<input type="submit" onclick="submitForm('/jscss/admin/design/upload')" value="上传图片"/>--></td>
								</tr>
								<tr>
									<th>课程描述：</th>
									<td><textarea name="discribes" class="common-textarea"
											id="content" cols="5" style="width: 80%;" rows="2"></textarea></td>
								</tr>
								<tr>
									<th>章节：</th>
									<td><textarea name="content" class="common-textarea"
											id="content" cols="30" style="width: 98%;" rows="10"></textarea></td>
								</tr>
								<tr>
									<th></th>
									<td><input class="btn btn-primary btn6 mr10" value="提交"
										type="submit"> <input class="btn btn6"
										onclick="history.go(-1)" value="返回" type="button"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>

		</div>
		<!--/main-->
	</div>
</body>
</html>