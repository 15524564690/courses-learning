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
    <script src="${basePath }js/q.js"></script>
    <script src="${basePath }js/jquery.min.js"></script>
    <script>
        var directionDefered = Q.defer();
        $(function () {

           getDirectionList();
        });
        function getDirectionList(){
            $.ajax({
                type: "GET",
                url: "/action/direction",
                dataType: "json",
                success: function (directionList) {
                    //  console.log(JSON.stringify(categoryList));
                    for (var i = 0; i < directionList.data.length; i++) {
                        $("#directionManager").append(
                                "<tr><td class='tc'><input name='id[]' value='"+directionList.data[i].id+"' type='checkbox'></td>"+
                                "<td>"+directionList.data[i].id+"</td>"+
                                "<td>"+directionList.data[i].directionname+"</td>"+
                                "<td><a  class='updateDirection link-update btn btn-info' href='updateDirection.jsp?id="+directionList.data[i].id+"&directionname="+directionList.data[i].directionname+"'>修改</a>"+/*"*/
                                "<a id='"+directionList.data[i].id+"' style='margin-left: 5px' class='deleteDirection link-del btn btn-danger' " +
                                " href='' >删除</a></td></tr>");

                    }
                    directionDefered.resolve(directionList);

                },
                error: function (e) {
                    directionDefered.reject(e);
                }
            });
        }
        directionDefered.promise.then(function () {
            $(".deleteDirection").click(function () {
                $.ajax({
                    type: "GET",
                    url: "/action/direction/deleteDirection?id=" + $(this).attr("id"),
                    dataType: "json",
                    success: function (directionList) {
                        getDirectionList();
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
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
				<ul class="navbar-list clearfix">
					<li><a class="on" href="manager.jsp">管理平台</a></li>
					<li><a href="http://localhost:8080/myspring/" target="_blank">
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
                    <a href="#"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="kechengguanli.jsp"><i class="icon-font">&#xe008;</i>课程管理</a></li>
                        <li><a href="javascript:void(0)"><i class="icon-font">&#xe005;</i>方向管理</a></li>
                        <li><a href="fenleiguanli.jsp"><i class="icon-font">&#xe006;</i>分类管理</a></li>
                        <li><a href="pinglunguanli.jsp"><i class="icon-font">&#xe012;</i>评论管理</a></li>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="http://localhost:8080/mag/manager.jsp">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">方向管理</span></div>
        </div>
        <div class="search-wrap" style="height:30px"></div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a class="btn btn-warning" href="add.jsp?type=1"><i class="icon-font"></i>新增方向</a>
                        <a class="btn btn-warning" id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
                    </div>
                </div>
                <div class="result-content">
                    <table id="directionManager" class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"></th>
                            <th>ID</th>
                            <th>方向名称</th>
                            <th>操作</th></tr>
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