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
	<script src="${basePath }js/q.js"></script>
	<script src="${basePath }js/jquery.min.js"></script>
	<script>
		var directionDefered = Q.defer(),categoryDefered = Q.defer();

		$(function () {

			$("#directionShow option").click("click",function (){alert($(this).val())});


			$("#addclass").click(function() {
				alert($("#clazzform").serialize());
				$.ajax({
					type: "post",
					url: "/action/clazz/createClazz",
					dataType: "json",
					data:$("#classform").serialize(),
					success: function (result) {
						if(result.data == true)
							window.location.href="kechengguanli.jsp";
					},
					error: function (e) {
					}
				});
			});
			/*
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
                        });*/
			$.ajax({
				type: "GET",
				url: "/action/direction",
				dataType: "json",
				success: function (directionList) {
					//  console.log(JSON.stringify(categoryList));
					for (var i = 0; i < directionList.data.length; i++) {
						$("#directionShow").append(
								"<option value='"+directionList.data[i].id+"'>"+directionList.data[i].directionname+"</option>");
					}
					directionDefered.resolve(directionList);

				},
				error: function (e) {
					directionDefered.reject(e);

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
								"<option value='"+categoryList.data[i].id+"'>"+categoryList.data[i].categoryname+"</option>");

					}
					categoryDefered.resolve(categoryList);

				},
				error: function (e) {
					categoryDefered.reject(e);

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
					<li><a class="on" href="index.html">首页</a></li>
					<li><a href="#" target="_blank">网站首页</a></li>
				</ul>
			</div>
			<div class="top-info-wrap">
				<ul class="top-info-list clearfix">
					<li><a href="http://www.jscss.me">管理员</a></li>
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
				</ul>
			</div>
		</div>
		<!--/sidebar-->
		<div class="main-wrap">

			<div class="crumb-wrap">
				<div class="crumb-list">
					<i class="icon-font"></i><a
						href="http://localhost:8080/mag/manager.jsp">首页</a><span
						class="crumb-step">&gt;</span><a class="crumb-name"
						href="${basePath }mag/kechengguanli.jsp">课程管理</a><span
						class="crumb-step">&gt;</span><span>新增课程</span>
				</div>
			</div>
			<div class="result-wrap">
				<div class="result-content">
					<form  method="post" id="classform"
						name="myform" enctype="multipart/form-data">
						<table class="insert-tab" width="100%">
							<tbody>
								<tr>
									<th width="120"><i class="require-red">*</i>方向：</th>
									<td><select name="directionid" id="directionShow" class="required">
											<option value="">请选择</option>
									</select></td>
								</tr>
								<tr>
									<th width="120"><i class="require-red">*</i>分类：</th>
									<td><select name="categoryid" id="categoryShow" class="required">
											<option value="">请选择</option>
									</select></td>
								</tr>
								<tr>
									<th><i class="require-red">*</i>课程名称：</th>
									<td><input class="common-text required" id="title"
										name="classname" size="50" value="" type="text"></td>
								</tr>
								<tr>
									<th>作者：</th>
									<td><input class="common-text" name="userid" size="50"
										value="" type="text"></td>
								</tr>
								<tr>
									<th><i class="require-red">*</i>图片：</th>
									<td><input name="pictureul" id="" type="file">
									<!--<input type="submit" onclick="submitForm('/jscss/admin/design/upload')" value="上传图片"/>--></td>
								</tr>
								<tr>
									<th>课程描述：</th>
									<td><textarea name="classdes" class="common-textarea"
											id="content" cols="5" style="width: 80%;" rows="2"></textarea></td>
								</tr>
								<tr>
									<th></th>
									<td><a id="addclass" class="btn btn-primary btn6 mr10"
										>提交</a> <a class="btn btn6"
										onclick="history.go(-1)" >返回</a></td>
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