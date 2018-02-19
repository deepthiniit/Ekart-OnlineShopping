package com.niit.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.model.User;

@Repository("userDao")
public interface UserDao {
	public void insertUser(User user);
	public List<User> getAllUsers();
	public User findUserByEmail(String userEmail);

}