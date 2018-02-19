package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Dao.UserDao;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.model.User;

@Controller
public class UserController {
	@Autowired
	UserDao userDao;
	//CRUD Operation
	@RequestMapping("/userList")
	public String uList(Model m){
		List<User> ul=userDao.getAllUsers();
		m.addAttribute("Listofuser",ul);
		return"User";
	}
	
	@RequestMapping("/signup")
	public String us()
	{
		return "User";
	}
	@RequestMapping("/user")
	public String a()
	{
		return "User";
	}
	@ModelAttribute("obuserjsp")
	public User newuser()
	{
		return new User();
	}
	@RequestMapping(value="/addinguser",method=RequestMethod.POST)
	public String addinguser(@ModelAttribute("obuserjsp") User obuserjsp)
	{
		userDao.insertUser(obuserjsp);
		return "";
	}
	
}