package com.bin.myspring.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bin.myspring.entity.User;
@Repository("userMapper")  
@Transactional
public interface UserMapper {
	List<User> getUserList();
	boolean createUser(User user);
	boolean updateUser(User user,String id);
	boolean deleteUser(String id);
	List<User> getUserByName(String username);
	List<User> getUserById(String id);
}
