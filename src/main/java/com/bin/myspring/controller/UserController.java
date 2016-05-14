package com.bin.myspring.controller;

import com.bin.myspring.entity.*;
import com.bin.myspring.service.UserService;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("userService")
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public ResModel getAllUser() {
        List<User> userList = userService.getUserList();
        String code = "200";
        String message = "";
        return new ResModel(code, message, userList);
    }
    @RequestMapping(value = "login")
    public ResModel userLogin(HttpServletRequest request, @RequestParam("username") String username, @RequestParam("password") String password) {
            request.getSession().setAttribute("username",username);
        boolean loginState = false;
        String code = "200";
        String message = "";
        try{
            loginState= userService.login(username,password);
            if(loginState){
                message="登陆成功!";

            }else {
                message="用户名或者密码错误!";

            }

        }catch (Exception e){
            System.out.print(e);
            message="用户名或者密码错误!";
        }


        return new ResModel(code, message, loginState);
    }

    @RequestMapping(value = "regist",method = RequestMethod.GET)
    public ResModel userLogin(User user) {
        boolean state = userService.regist(user);
        String code = "200";
        String message = "";
        return new ResModel(code, message, state);
    }
    @RequestMapping(value = "deleteUser", method = RequestMethod.GET)
    public ResModel deleteUserById(@RequestParam("id")String id) {
        List<User> userList = null;
        String code = "200";
        String message = "";
        if(userService.deleteUser(id)){
            userList = userService.getUserList();
            message="删除成功!";
        }else{
            message="删除失败!";
        }
        return new ResModel(code, message, userList);
    }
    @RequestMapping(value = "updateUser", method = RequestMethod.POST)
    public ResModel updateUserById(User user) {
        boolean state =userService.updateUser(user);
        String code = "200";
        String message = "";

        if(state){
            message="更新成功!";
        }else{
            message="更新失败!";
        }
        return new ResModel(code, message, state);
    }
    @RequestMapping(value = "loginoff")
    public ModelAndView userLogin(HttpServletRequest request) {
        request.getSession().invalidate();
        return new ModelAndView("/mag/login.jsp");
    }

}
