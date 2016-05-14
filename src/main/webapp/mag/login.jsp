<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link href="${ basePath}css/admin_login.css" rel="stylesheet" type="text/css" />
    <script src="${basePath }js/jquery.min.js"></script>

    <script>

        $(function () {

            $("#login").click(function() {
              //  alert($("#username").val());
                $.ajax({
                    type: "get",
                    url: "/action/user/login?username="+$("#username").val()+"&password="+$("#password").val(),
                    dataType: "json",
                    //data:$("#clazzform").serialize(),
                    success: function (result) {
                       // alert("fdafdasfsd");
                        if(result.data == true) {
                            window.location.href = "/mag/manager.jsp";
                        }else{
                            alert("帐号或者密码错误!");
                        }
                    },
                    error: function (e) {
                    }
                });
            });


        });


    </script>
</head>
<body>
<div class="admin_login_wrap">
    <h1>后台管理</h1>
    <div class="adming_login_border">
        <div class="admin_input">
            <form id="logfom">
                <ul class="admin_items">
                    <li>
                        <label >用户名：</label>
                        <input type="text" id="username" name="username" value="admin"  size="40" class="admin_input_style" />
                    </li>
                    <li>
                        <label >密码：</label>
                        <input type="password" id="password" name="password" value="123"  size="40" class="admin_input_style" />
                    </li>
                    <li>
                        <a id="login" class="btn btn-primary" >登录</a>
                    </li>
                </ul>
            </form>
        </div>
    </div>
</div>
</body>
</html>