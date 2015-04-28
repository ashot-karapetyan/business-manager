package com.businessmanager.dao;

import com.businessmanager.model.User;
 
public interface UserDao {
 
	User findByUserName(String username);
 
}
