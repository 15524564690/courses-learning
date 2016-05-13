<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <style>
        .class-desc {
            width: 300px;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }

        .class-desc:hover+span {
            display: block;
        }

        .class-desc+span {
            display: none;
            position: absolute;
            left: 5px;
            top: 55px;
            width: 400px;
            z-index: 1000;
            background-color: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 4px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="${basePath }css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${basePath }css/main.css"/>
    <script type="text/javascript" src="${basePath }js/modernizr.min.js"></script>
    <script src="${basePath }js/q.js"></script>
    <script src="${basePath }js/jquery.min.js"></script>
    <script>
        var commentsDefered = Q.defer();

        $(function () {

            getCommentsList();
        });
        function getCommentsList () {

            $.ajax({
                type: "GET",
                url: "/action/comments",
                dataType: "json",
                success: function (commentsList) {
                    for (var i = 0; i < commentsList.data.length; i++) {
                        $("#commentsMessage").append(""+
                                "<tr><td class='tc'><input name='check"+commentsList.data[i].id+"' value='"+commentsList.data[i].id+"' type='checkbox'></td>"+
                                "<td>"+commentsList.data[i].id+"</td>"+
                                "<td>"+commentsList.data[i].userid+"</td>"+
                                "<td>"+commentsList.data[i].titleid+"</td>"+
                                "<td>"+commentsList.data[i].commentid+"</td>"+
                                "<td style=\"position: relative;\"><div class=\"class-desc\">"+commentsList.data[i].content+
                                "</div><span>"+commentsList.data[i].content+"</span></td>"+
                                "<td>"+commentsList.data[i].createtime+"</td>"+
                                "<td><a class='link-update btn btn-info' href='updateComments.jsp?id="+
                                    commentsList.data[i].id+
                                "&userid="+commentsList.data[i].userid+
                                "&titleid="+commentsList.data[i].titleid+
                                "&commentid="+commentsList.data[i].commentid+
                                "&content="+commentsList.data[i].content+
                                "&createtime="+commentsList.data[i].createtime+"'>修改</a>"+
                                "<a style='margin-left: 20px' class='deleteComments link-del btn btn-danger' " +
                                " id='"+commentsList.data[i].id+"' href='' >删除</a></td></tr></form>");

                    }
                    commentsDefered.resolve(commentsList);
                },
                error: function (e) {
                    commentsDefered.reject(e);

                }
            });
        }
        commentsDefered.promise.then(function () {
            $(".deleteComments").click(function () {
                $.ajax({
                    type: "GET",
                    url: "/action/comments/deleteComments?id=" + $(this).attr("id"),
                    dataType: "json",
                    success: function (result) {
                        if (result.data==""){
                        getCommentsList();}else
                        {
                            alert(result.data);
                        }
                    },
                    error: function (e) {
                    }
                });
            });
        });
    </script></head><body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
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
                <li>
                    <a href="javascript:void(0)"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="kechengguanli.jsp"><i class="icon-font">&#xe008;</i>课程管理</a></li>
                        <li><a href="fangxiangguanli.jsp"><i class="icon-font">&#xe005;</i>方向管理</a></li>
                        <li><a href="fenleiguanli.jsp"><i class="icon-font">&#xe006;</i>分类管理</a></li>
                        <li><a href="javascript:void(0)"><i class="icon-font">&#xe012;</i>评论管理</a></li>
                        <li><a href="zhangjieguanli.jsp"><i class="icon-font">&#xe052;</i>章节管理</a></li>
                        <li><a href="yonghuguanli.jsp"><i class="icon-font">&#xe033;</i>用户管理</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="http://localhost:8080/mag/manager.jsp">首页</a>
                <span class="crumb-step">&gt;</span><span class="crumb-name">评论管理</span></div>
        </div>
        <div class="search-wrap" style="height:30px"></div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a class="btn btn-warning" id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
                    </div>
                </div>
                <div class="result-content">
                    <table id="commentsMessage" class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"></th>
                            <th>ID</th>
                            <th>用户名</th>
                            <th>标题</th>
                            <th>评论ID</th>
                            <th>评论内容</th>
                            <th>更新时间</th>
                            <th>操作</th>
                        </tr>
                    </table>
                    <div class="list-page"> 2 条 1/1 页</div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>