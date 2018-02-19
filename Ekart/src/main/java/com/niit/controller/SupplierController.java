package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Dao.SupplierDao;
import com.niit.model.Supplier;
import com.niit.model.User;



@Controller
public class SupplierController {
	/*private static final String obsuppjsp = null;*/
	@Autowired
	SupplierDao supplierDao;
	@Autowired
	Supplier supplier;
	
	@RequestMapping("/supplierList")
	public String sList(Model m)
	{
		List<Supplier> sl=supplierDao.retrieve();
		m.addAttribute("Listofsup",sl);
		return"Supplier";
	}
	
	@ModelAttribute("obsuppjsp")
	public Supplier newsup()
	{
		System.out.println("creating supplier object");
		return new Supplier();
	}
	@RequestMapping(value="/addingsupplier",method=RequestMethod.POST)
	public String addingsup(@ModelAttribute("obsuppjsp") Supplier obsuppjsp)
	{
		supplierDao.insertSupplier(obsuppjsp);
		return "redirect:/supplierList";
	}

	@RequestMapping("/supplieravailability")
	public String s()
	{
		
		return "redirect:/supplierList";
	}
	@RequestMapping("/updatesupplier-{sid}")
	private String editsupplier(@PathVariable("sid") int sid,Model m) {
		supplier=supplierDao.findBySuppId(sid);
		m.addAttribute("obsupjsp",supplier);
		return "Supplier";
	}


	@RequestMapping("/deletesupplier-{sid}")
	private String deletesupplier(@PathVariable("sid") int sid,Model m) {
		supplier = supplierDao.findBySuppId(sid);
		supplierDao.removesupplier(supplier);
		return "redirect:/supplierlist";
	}


}
