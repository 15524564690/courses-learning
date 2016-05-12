<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

  </head>
  <body>
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="../index.jsp">资源网</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav" id="mytab">
                    <li class="active"><a href="#">课程</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class=""><form class="navbar-form" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="搜索">
                            </div>
                            <button type="submit" class="btn btn-default">搜索</button>
                        </form></li>
                    <li><a class="btn btn-default" data-whatever="@mdo" id="login-btn">登录</a></li>
                    <li><a class="btn btn-default" data-whatever="@mdo" id="login-btn">注册</a></li>
                </ul>
            </div>
        </div>
    </nav>
  </body>
</html>
