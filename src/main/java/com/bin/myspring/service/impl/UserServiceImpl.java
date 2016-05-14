package com.bin.myspring.service.impl;

import java.util.List;

import com.bin.myspring.entity.ResModel;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.bin.myspring.entity.User;
import com.bin.myspring.mapper.UserMapper;
import com.bin.myspring.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	@Qualifier("userMapper")
	private UserMapper userMapper;


    public List<User> getUserList() {
        return userMapper.getUserList();
    }

    public int checkRole(String username){
        if (this.checkUser(username)) {
            if (userMapper.getUserByName(username).get(0).getRole()==0){
                return 0;//0  普通用户
            }else {
                return 1;//1 管理员
            }
        }else{
            return 2;
        }

    }

    public boolean checkUser(String username) {
        if (userMapper.getUserByName(username).size()>0){
                return true;//true 查到用户
        }else {
            return false;//false 没有找到用户
        }
    }

    public boolean login(String username, String password) {
        String name=userMapper.getUserByName(username).get(0).getUsername();
        String pw=userMapper.getUserByName(username).get(0).getPassword();
        if(this.checkRole(username)==0) {
            if (name.equals(username) && pw.equals(password)){
                return true;
            }else {
                return false;
            }
        }else if(this.checkRole(username)==1){
            if (name.equals(username) && pw.equals(password)){
                return true;
            }else{
                return false;
            }
        }else {
            return false;
        }
    }

    public boolean regist(User user) {
        return userMapper.createUser(user);
    }

    public boolean deleteUser(String id) {
        return userMapper.deleteUser(id);
    }

    public boolean updateUser(User user) {
        return userMapper.updateUser(user);
    }

    public boolean check(String username, String password) {
        return userMapper.check(username,password);
    }

    public List<User> getUserByNameAndPassword(String username, String password) {

        try {
            if (userMapper.getUserByNameAndPassword(username,password).size()>0){
                return userMapper.getUserByNameAndPassword(username,password);
            }else {
                return null;
            }
        }catch (Exception e){
            System.out.print(e);
        }
        return null;
    }

    public List<User> getOneUser() {
        return null;
    }

}
