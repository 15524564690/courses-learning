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
    <script src="${basePath }js/jquery.min.js"></script>
    <script>

        $(function () {
            $("#addone").click(function () {
                if(${param.type == 1}){
                    $("#addDirection tbody").append(
                            "<tr><th width='120'></th>"+
                            "<td><input class='common-text required' id='title'"+
                            "name='title' size='50' value='' type='text'></td></tr>");
                }else if(${param.type ==2}){
                    $("#addCategory tbody").append(
                            "<tr><th width='120'></th>"+
                            "<td><input class='common-text required' id='title'"+
                            "name='title' size='50' value='' type='text'></td></tr>");
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
                    href="${basePath}mag/kechengguanli.jsp">方向管理</a><span
                    class="crumb-step">&gt;</span><span>新增方向</span>
            </div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form id="updateform" method="get">
                    <c:if test="${param.type == 1}">
                    <table id="addDirection" class="insert-tab" width="100%">
                    </c:if>
                    <c:if test="${param.type == 2}">
                    <table id="addCategory" class="insert-tab" width="100%">
                    </c:if>
                            <tbody>
                        <c:if test="${param.type == 1}">
                            <tr>
                                <th width="120"><i class="require-red">*</i>方向：</th>
                                <td><input class="common-text required" id="direction"
                                           name="title" size="50" value="" type="text"></td>
                            </tr>
                        </c:if>
                        <c:if test="${param.type == 2}">
                            <tr>
                                <th width="120"><i class="require-red">*</i>分类：</th>
                                <td><input class="common-text required" id="category"
                                           name="title" size="50" value="" type="text"></td>
                            </tr>
                        </c:if>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th><a id="addone" class="btn btn-warning">添加一条 </a></th>
                            <td><input style="margin:0 50px" class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                <a id="updateD"  class="btn btn-success btn6 mr10">提交</a> </td>
                        </tr>

                        </tfoot>
                    </table></form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>