<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>学习资源网</title>
    <link rel="stylesheet" href="js/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="js/style.css" type="text/css">
    <style>
        html { overflow: hidden; }
    </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="javascript:void(0)">资源网</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav" id="mytab">
                <li class="active"><a href="user/class.jsp">课程</a></li>
<!--                 <li ><a href="#">Link</a></li>
                <li ><a href="#">Link</a></li> -->
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
                    <a class="btn btn-default" style="background-color: #333; border: none" data-whatever="@mdo" id="login-btn">
                        登录
                    </a>
                </li>
                <li><a>注册</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="home-panel">
    <div class="row">
        <div class="jumbotron col-md-4 col-md-offset-1">
            <div class="container">
                <h1>Object Orient Analysis & Design</h1>
                <p>欢迎使用OOAD课程学习网。</p>
                <p><a class="btn btn-info btn-lg" href="/user/class.jsp" role="button">Learn more</a></p>
            </div>
        </div>
        <div class="col-md-7" style="margin-top: 130px">
            <div id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img class="lunbo-img" src="imges/index1.jpg" style="height: auto" alt="First slide">
                        <div class="carousel-caption">Oracle</div>
                    </div>
                    <div class="item">
                        <img class="lunbo-img" src="imges/index2.jpg" alt="Second slide">
                        <div class="carousel-caption">JS+CSS3</div>
                    </div>
                    <div class="item">
                        <img class="lunbo-img" src="imges/index3.jpg" alt="Third slide">
                        <div class="carousel-caption">Activity</div>
                    </div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="carousel-control left center-block" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right center-block" href="#myCarousel"  data-slide="next">&rsaquo;</a>
            </div>
        </div>
    </div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
        $.ajax({
            type:"GET",
            url:"/action/user",
            dataType:"json",
            success:function(userList){
                console.log(JSON.stringify(userList));
                $("#tabb").append(

                        "<tr><td>"+userList.data[0].uuid+"</td></tr>"

                );
            },
            error:function(e) {
                alert("出错："+e);
                console.log();
            }
        });

        $('#login').click(function () {
            var username = $('#username').val();
            var password = $('#password').val();
            $.ajax({
                type:"GET",
                url:"/action/user/login",
                data: {
                    username: username,
                    password: password
                },
                dataType:"json",
                success:function(userList){
                    console.log(JSON.stringify(userList));

                },
                error:function(e) {
                    alert("出错："+e);
                    console.log();
                }
            });
        });
    });


        $("#mytab a").click( function(e){
//        e.preventDefault();
        $(this).tab("show");
    })
    $(function(){
        var height = $(window).height();
        $(".home-panel").css("height",height);
        $("#login-btn").click(function(){
            $("#exampleModal").modal("show");
        });
    });
</script>
<div>
    <table id="tabb">

    </table>

</div>
<div style="margin-top:10%" class="modal fade" id="exampleModal" role="dialog" aria-labelledby="exampleModalLabel"
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
                <button type="submit" class="btn btn-default" data-dismiss="modal" id="login">登录</button>
                <button type="reset" class="btn btn-primary" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>