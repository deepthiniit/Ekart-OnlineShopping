package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Dao.CategoryDao;
import com.niit.model.Category;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	Category category;
	//CRUD Operation
	@RequestMapping("/categoryList")
	public String cList(Model m){
		List<Category> cl=categoryDao.retrieve();
		m.addAttribute("Listofcat",cl);
		return"category";
	}

	@ModelAttribute("obcatjsp")
	public Category newcat()
	{
		return new Category();
	}

	@RequestMapping(value="/addingcategory",method=RequestMethod.POST)
	public String addingcat(@ModelAttribute("obcatjsp") Category obcatjsp)
	{
		categoryDao.insertCategory(obcatjsp);
		return "redirect:/categoryList";
	}

	@RequestMapping("/categoryavailability")
	public String c()
	{
		
		return "redirect:/categoryList";
	}
	@RequestMapping("/updatecategory-{cid}")
	private String editcategory(@PathVariable("cid") int cid,Model m) {
		category=categoryDao.findByCatId(cid);
		m.addAttribute("obcatjsp",category);
		return "category";
	}


	@RequestMapping("/deletecategory-{cid}")
	private String deletecategory(@PathVariable("cid") int cid,Model m) {
		category=categoryDao.findByCatId(cid);
		m.addAttribute("obcatjsp",category);
		/*categoryDao.removecategory(category);*/
		return "category";
	}


}