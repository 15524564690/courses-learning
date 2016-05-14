<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>课程分类</title>
    <link rel="stylesheet" href="${basePath }js/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${basePath }js/style.css" type="text/css">
    <script src="${basePath }js/jquery.min.js"></script>
    <script src="${basePath }js/bootstrap.min.js"></script>
    <script src="${basePath }js/q.js"></script>
    <script src="${basePath }js/class.js"></script>
</head>
<body>
<div class="container">
     <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="home.jsp">资源网</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav" id="mytab">
                    <li class="active"><a href="javascript:void(0)">课程</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class=""><form class="navbar-form" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="搜索" id="searchInput">
                            </div>
                            <button type="button" class="btn btn-default" id="searchBtn">搜索</button>
                        </form></li>
                    <li><a class="btn btn-default" data-whatever="@mdo" id="login-btn">登录</a></li>
                    <li><a class="btn btn-default" data-whatever="@mdo" id="login-btn">注册</a></li>
                </ul>
            </div>
        </div>
    </nav>
   <%--  <jsp:include  page="mynavbar.jsp"/> --%>
    <div style="margin-top: 60px;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4>全部课程</h4>
            </div>
            <div>
                <div class="page-header">
                                    <h3 style="margin-left:15px">方向：</h3>
                    <ul id="direction" class="class-type">
                        <li class="active"><a>全部</a></li>
                    </ul>
                    <div class="hook"></div>
                </div>
                <div class="page-header">
                    <h3 style="margin-left:15px">分类：</h3>
                    <ul id="category"  class="class-type">
                   			 <li class="active"><a>全部</a></li>
                    </ul>
                    <div class="hook"></div>
                </div>
            </div>
        </div>
    </div>

    <!--路径导航-->
    <nav class="navbar navbar-default navbar-fixed-bottom " role="navigation">
        <ol class="breadcrumb page-tab">
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
        </ol>
    </nav>
    <!--缩略图-->
    <div id="thumbnail" class="row">

    </div>
    
    <!--登陆-->
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
                    <form id="userform">
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
</div>
<!-- 注册 -->
    <div class="modal fade" id="regisrExampleModal" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="userRegist">用户登录</h4>
                </div>
                <div class="modal-body">
                    <form >
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
</div>
</body>
</html>