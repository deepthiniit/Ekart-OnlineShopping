package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.CartDao;
import com.niit.Dao.CategoryDao;
import com.niit.Dao.OrderDao;
import com.niit.Dao.ProductDao;
import com.niit.Dao.SupplierDao;
import com.niit.Dao.UserDao;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
public class PageController {
	@Autowired 
	UserDao userDao;
	@Autowired
	ProductDao productDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	SupplierDao supplierDao;
	@Autowired
	CartDao cartDao;
	@Autowired
	OrderDao orderDao;
	@RequestMapping("/")
	public String getPage(Model m)
	{
		List<Product> pl=productDao.retrieve();
		m.addAttribute("Listofproduct",pl);
		return "index";
	}
	@RequestMapping("/index")
	public String w(Model m)
	{
		List<Product> pl=productDao.retrieve();
		m.addAttribute("Listofproduct",pl);
		return "index";
	}
	@RequestMapping(value="/goToRegister", method=RequestMethod.GET)
	public ModelAndView saveRegister(@ModelAttribute("user")User user)
	{
		ModelAndView mav=new ModelAndView();
		user.setRole("ROLE_USER");
		mav.setViewName("register");
		return mav;
	}
	/*@RequestMapping(value="/productCustList")
	public ModelAndView getCustTable(@RequestParam("cid")int cid)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("prodList",productDao.getProdByCatId(cid));
		mv.setViewName("productCustList");
		return mv;
	}*/
	
	@ModelAttribute
	public void getData(Model m)
	{
		m.addAttribute("catList",categoryDao.retrieve());
	}
	
	@RequestMapping("/goToLogin")
	public String gotologin()
	{
		return "login";
	}
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	@RequestMapping("/userLogged")
	public String userlogged()
	{
		return "redirect:/index";
	}
	@RequestMapping("/error")
	public String userError()
	{
		return "error";
	}
	@RequestMapping("/reLogin")
	public String reLogin(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
      required = false) String logout, Model model)
	{
		if (error!=null) {
        	System.out.println("Error.....");
            model.addAttribute("error", "...Invalid username and password");
        }
        	
        if(logout!=null) {
        	System.out.println("Logout called.....");
            model.addAttribute("msg", "...You have been logged out");
        }
		return "login";
	}
	@RequestMapping("/contact")
	public String Con()
	{
		return "contact";
	}
	
}
