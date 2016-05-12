<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">

    <link rel="stylesheet" href="${basePath }js/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${basePath }js/style.css" type="text/css">
    <script src="${basePath }js/jquery.min.js"></script>
	<script src="${basePath }js/bootstrap.min.js"></script>
	<script src="${basePath }js/content.js"></script>
    <title>C++远征之封装篇（下）</title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="../home.jsp">资源网</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav" id="mytab">
                <li class="active"><a href="action/test">课程</a></li>
            </ul>


            <ul class="nav navbar-nav navbar-right">
                <li class="">
                    <form class="navbar-form" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="搜索">
                        </div>
                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                </li>
                <li>
                    <a class="btn btn-default" data-whatever="@mdo" id="login-btn">
                        登录
                    </a>
                </li>
                <li><a>注册</a></li>
            </ul>
        </div>
    </div>
</nav>

<%--<jsp:include  page="mynavbar.jsp"/>--%>
<div>
    <ol class="breadcrumb" style="margin-top: 50px">
        <li><a href="#">资源网</a></li>
        <li><a href="#">课程</a></li>
        <li class="active">C++远征之封装篇（下）</li>
    </ol>
</div>

<div>
    <div>

    </div>
</div>

<!-- <script src="../../../js/jquery.min.js"></script>
<script src="../../../js/bootstrap.min.js"></script> -->
<!-- <script>
    $("#mytab a").click(function (e) {
//        e.preventDefault();
        $(this).tab("show");
    })
    $(function () {
        $("#login-btn").click(function () {
            $("#exampleModal").modal("show");
        });
    });
</script> -->
<div class="modal fade" id="exampleModal" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="userLogin">用户登录</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="username" class="control-label">用户名</label>
                        <input type="text" class="form-control" id="username">
                    </div>
                    <div class="form-group">
                        <label for="password" class="control-label">密码</label>
                        <input type="password" class="form-control" id="password">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-default" data-dismiss="modal">登录</button>
                <button type="reset" class="btn btn-primary" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-body">
            <h3 class="class-introduce">课程简介 <span class="label label-default">New</span></h3>
					<c:forEach items="${ classs }" var="classs">
					<li><p>${ classs.describes }</p> </li>
					</c:forEach>
         <!--    <p>本课程深入的讲解了C语言中，预处理是怎么回事，结构体和公用体又是如何使用及区别的，动态数据结构体是什么，位运算的秘密。通过本课程的学习将进一步的理解C语言。</p> -->
        </div>
    </div>
    <div class="row">
        <div class="side-classes col-lg-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">课程章节</h3>
                </div>
                <div class="panel-body">
                    <ul>
                    <c:forEach items="${ content }" var="content">
                        <!-- <li class="active"> -->
                        <li>
                            ${ content.chapter }&nbsp;&nbsp;
                            ${ content.chapterDescribe }
                        </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div style="clear:both"></div>
        </div>
        <div class="right-content col-lg-9">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <ul class="tab-title">
                            <li class="active" id="0">视频课程</li>
                            <li id="1">PPT资源</li>
                            <li id="2">电子资源</li>
                        </ul>
                        <div style="clear:both"></div>
                    </h3>
                </div>
                <div class="panel-body tab">
                    <div class="video">
                        <video src="#" controls="controls"></video>
                    </div>
                    <div class="ppt">
                        <img src="../../../imges/1.jpg">

                        <div class="bar">
                            <button class="btn btn-default" style="float: left">上一页</button>
                            <button class="btn btn-default" style="float: right">下一页</button>
                        </div>
                    </div>
                    <div class="eresource">
                        <div></div>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="comment-form">
                        <textarea class="form-control" rows="4"></textarea>
                        <button type="button" class="btn btn-default navbar-right comment-btn">发表评论</button>
                    </div>
                    <div class="comment-area">
                        <ul>
                        <c:forEach items="${comments}" var="comments">
                            <li>
                                <img src="../../../imges/2.jpg">

                                <div>
                                    <span>${comments.userName}</span>

                                    <p>${comments.comment}</p>
                                    <span class="time">时间: ${comments.upLoadTime }</span>
                                </div>
                                <div style="clear:both"></div>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- <script>
    $(function () {
        $(".right-content li").click(function () {
            $(".right-content li").attr("class", "");
            $(this).attr("class", "active");
            var index = $(this).attr("id");
            switch (parseInt(index)) {
                case 0:
                    $(".tab").children("div").css("display", "none");
                    $(".video").css("display", "block");
                    break;
                case 1:
                    $(".tab").children("div").css("display", "none");
                    $(".ppt").css("display", "block");
                    break;
                case 2:
                    $(".tab").children("div").css("display", "none");
                    $(".eresource").css("display", "block");
                    break;
            }
        });
    });
</script> -->
</body>
</html>