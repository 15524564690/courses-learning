package com.bin.myspring.service;

import java.util.List;

import com.bin.myspring.entity.User;

public interface UserService {
	List<User> getUserList();
	boolean checkUser(String username);
	boolean login(String username,String password);
	boolean regist(User user);

}
