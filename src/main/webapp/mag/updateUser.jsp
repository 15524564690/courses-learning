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

        $(function () {


                $("#updateU").click(function() {
                    alert($("#usrform").serialize());
                    $.ajax({
                        type: "post",
                        url: "/action/user/updateUser",
                        dataType: "json",
                        data:$("#usrform").serialize(),
                        success: function (result) {
                            if(result.data == true)
                                window.location.href="yonghuguanli.jsp";
                        },
                        error: function (e) {
                        }
                    });
                });


        });


    </script>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none">
                <a href="manager.jsp" class="navbar-brand">后台管理</a>
            </h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="manager.jsp">首页</a></li>
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
                <li><a href="javascript:void(0)"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="kechengguanli.jsp"><i class="icon-font">&#xe008;</i>课程管理</a></li>
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
                    class="crumb-step">&gt;</span><a class="crumb-name"
                    href="${basePath}mag/yoghuguanli.jsp">用户管理</a><span
                    class="crumb-step">&gt;</span><span>修改用户信息</span>
            </div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form id="usrform" method="post">
                    <table id="updateCategoryTab" class="insert-tab" width="100%">
                        <tbody>
                            <tr><th>用户ID</th>
                                <td><input class="common-text required"
                                           name="uuid" size="50" value="${param.uuid}" type="text"></td></tr>
                            <tr><th>用户名</th>
                                <td><input class="common-text required"
                                           name="username" size="50" value="${param.username}" type="text"></td></tr>
                            <tr><th>密码</th>
                                <td><input class="common-text required"
                                           name="password" size="50" value="${param.password}" type="text"></td></tr>
                            <tr><th>昵称</th>
                                <td><input class="common-text required"
                                           name="nickname" size="50" value="${param.nickname}" type="text"></td></tr>
                            <tr><th>身份类型</th>
                                <td><input class="common-text required"
                                           name="role" size="50" value="${param.role}" type="text"></td></tr>
                            <tr><th>创建时间</th>
                                <td><input class="common-text required"
                                           name="createtime" size="50" value="${param.createtime}" type="text"></td></tr>
                            <tr><th>电话</th>
                                <td><input class="common-text required"
                                           name="tel" size="50" value="${param.tel}" type="text"></td></tr>
                            <tr><th>E-mail</th>
                                <td><input class="common-text required"
                                           name="email" size="50" value="${param.email}" type="text"></td></tr>
                            <tr><th>操作</th>
                                <td><input style="margin:0 50px" class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                    <a id="updateU"  class="btn btn-success btn6 mr10">提交</a> </td></tr>
                            </tbody>
                    </table></form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>