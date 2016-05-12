package com.bin.myspring.controller;

import com.bin.myspring.entity.ResModel;
import com.bin.myspring.entity.Test;
import com.bin.myspring.entity.User;
import com.bin.myspring.service.UserService;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
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
    public ResModel userLogin(@RequestParam("username") String username,@RequestParam("password") String password) {
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
}
