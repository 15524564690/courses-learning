<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="${basePath }css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${basePath }css/main.css"/>
    <script type="text/javascript" src="${basePath }js/modernizr.min.js"></script>
	<script src="${basePath }js/jquery.min.js"></script>
	<script>
		$(function () {

			$.ajax({
				type: "GET",
				url: "/action/clazz",
				dataType: "json",
				success: function (classList) {
					//  console.log(JSON.stringify(categoryList));
					for (var i = 0; i < classList.data.length; i++) {
						$("#classManager").append(
								"<tr><td class='tc'><input name='id[]' value='"+classList.data[i].id+"' type='checkbox'></td>"+
								"<td>"+classList.data[i].id+"</td>"+
								"<td>"+classList.data[i].classname+"</td>"+
								"<td style='overflow: hidden;width: 200px;height:100px;'>"+classList.data[i].classdes+"</td>"+
								"<td>"+classList.data[i].createtime+"</td>"+
								"<td>"+classList.data[i].updatetime+"</td>"+
								"<td>"+classList.data[i].userid+"</td>"+
								"<td>"+classList.data[i].categoryid+"</td>"+
								"<td>"+classList.data[i].directionid+"</td>"+
								"<td>"+classList.data[i].pictureul+"</td>"+
								"<td><a class='link-update btn btn-info' href=''>修改</a>"+
								"<a style='margin-left: 5px' class='link-del btn btn-danger' " +
								" href='' >删除</a></td></tr>");
					}
				},
				error: function (e) {
				}
			});
			$.ajax({
				type: "GET",
				url: "/action/direction",
				dataType: "json",
				success: function (directionList) {
					//  console.log(JSON.stringify(categoryList));
					for (var i = 0; i < directionList.data.length; i++) {
						$("#directionShow").append(
								"<option value='directionList.data[i].id'>"+directionList.data[i].directionname+"</option>");
					}
				},
				error: function (e) {
				}
			});
			$.ajax({
				type: "GET",
				url: "/action/category",
				dataType: "json",
				success: function (categoryList) {
					//  console.log(JSON.stringify(categoryList));
					for (var i = 0; i < categoryList.data.length; i++) {
						$("#categoryShow").append(
								"<option value='categoryList.data[i].id'>"+categoryList.data[i].categoryname+"</option>");

					}
				},
				error: function (e) {
				}
			});
		});

	</script>
</head>
<body>
	<div class="topbar-wrap white">
		<div class="topbar-inner clearfix">
			<div class="topbar-logo-wrap clearfix">
				<h1 class="topbar-logo none">
					<a href="index.html" class="navbar-brand">后台管理</a>
				</h1>
				<ul class="navbar-list clearfix">
					<li><a class="on" href="manager.jsp">管理平台</a></li>
					<li><a href="http://localhost:8080" target="_blank">
							课程学习网站首页</a></li>
				</ul>
			</div>
			<div class="top-info-wrap">
				<ul class="top-info-list clearfix">
					<li><a href="#">管理员</a></li>
					<li><a href="#">退出</a></li>
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
					<li><a href="javascript:void(0)"><i class="icon-font">&#xe003;</i>常用操作</a>
						<ul class="sub-menu">
							<li><a href="javascript:void(0)"><i class="icon-font">&#xe008;</i>课程管理</a></li>
							<li><a href="fangxiangguanli.jsp"><i class="icon-font">&#xe005;</i>方向管理</a></li>
							<li><a href="fenleiguanli.jsp"><i class="icon-font">&#xe006;</i>分类管理</a></li>
							<li><a href="pinglunguanli.jsp"><i class="icon-font">&#xe012;</i>评论管理</a></li>
							<li><a href="zhangjieguanli.jsp"><i class="icon-font">&#xe052;</i>章节管理</a></li>
							<li><a href="yonghuguanli.jsp"><i class="icon-font">&#xe033;</i>用户管理</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!--/sidebar-->
		<div class="main-wrap">

			<div class="crumb-wrap">
				<div class="crumb-list">
					<i class="icon-font"></i><a
						href="http://localhost:8080/mag/manager.jsp">首页</a><span
						class="crumb-step">&gt;</span><span class="crumb-name">课程管理</span>
				</div>
			</div>
			<div class="search-wrap">
				<div class="search-content">
					<form action="/jscss/admin/design/index" method="post">
						<table  class="search-tab">
							<tr>
								<th width="120">选择方向:</th>
								<td><select name="search-direction" id="directionShow">
								<option value="">全部</option>
									<%--<c:forEach items="${ direction }" var="direction">--%>
									<%--<option value="${ direction.id }">${ direction.typeName }</option>--%>
									<%--</c:forEach>	--%>
								</select></td>
								<th width="120">选择分类:</th>
								<td><select name="search-category" id="categoryShow">
										<option value="">全部</option>
											<%--<c:forEach items="${ sortType }" var="sortType">--%>
											<%--<option value="${ sortType.id }">${ sortType.sortType }</option>--%>
											<%--</c:forEach>		--%>
								</select></td>

								<th width="70">课程名:</th>
								<td><input class="common-text" placeholder="课程名称"
									name="keywords" value="" id="" type="text"></td>
								<td><input class="btn btn-primary btn2" name="sub"
									value="查询" type="submit"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="result-wrap">
				<form name="myform" id="myform" method="post">
					<div class="result-title">
						<div class="result-list">
							<a class="btn btn-warning" href="addClass.jsp"><i class="icon-font"></i>新增课程</a> <a
								class="btn btn-warning"	id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
						</div>
					</div>
					<div class="result-content">
						<table id="classManager" class="result-tab" width="100%" table-layout="fixed">
							<tr>
								<th class="tc" width="5%"></th>
								<th>ID</th>
								<th>课程名</th>
								<th>课程描述</th>
								<th>上传时间</th>
								<th>更新时间</th>
								<th>上传者</th>
								<th>课程分类</th>
								<th>课程方向</th>
								<th>图片</th>
								<th>操作</th>
							</tr>
						</table>
						<div class="list-page">2 条 1/1 页</div>
					</div>
				</form>
			</div>
		</div>
		<!--/main-->
	</div>
</body>
</html>