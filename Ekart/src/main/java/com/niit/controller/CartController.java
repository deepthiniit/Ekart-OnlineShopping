package com.niit.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Dao.CartDao;
import com.niit.Dao.ProductDao;
import com.niit.model.Cart;
import com.niit.model.Product;


@Controller
public class CartController{
	@Autowired
	Cart cart;
	
	@Autowired
	ProductDao productDao;
	@Autowired
	private CartDao cartDao;
	
	@RequestMapping("/cartList")
	public String caList(Model m,Principal p){
		List<Cart> cartList=cartDao.listbyuser(p.getName());
		m.addAttribute("Listofcart",cartList);
		//adding items in cart 
		int i,j=0;
		double s=0;
		int n=cartDao.listbyuser(p.getName()).size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=s+cartDao.listbyuser(p.getName()).get(i).getCartprice();
			
		}
		System.out.println(s);
		m.addAttribute("sum", s);
		return "cartList";
	}

	
	@RequestMapping(value="/cartItems-{pid}", method=RequestMethod.GET)
	public String cartm(@PathVariable("pid") int pid,HttpServletRequest request,Model model,Principal principal)
	{
		Product product =	 productDao.findByPID(pid);
		 Cart cart = new Cart();

		 cart.setCartprice(product.getPrice());
		 cart.setCartproductName(product.getPname());
		 cart.setCartproductid(product.getPid());
		 cart.setCartquantity("1");
		 cart.setCartuserID(principal.getName());  //  id should keep session and use the same id
		 	cartDao.insertCart(cart);
		 
		 	return "redirect:/cartList";
	}	 	
	
	
	
	@RequestMapping("/deletecartitem-{id}")
	private String deletecartitem(@PathVariable("id") int id,Model m) {
		cart=cartDao.delete(id);
		//cartDao.removecartitem(cart);
		 
		return "redirect:/cartList";
	}
	 
	/*@RequestMapping("/deleteproduct-{pid}")
	private String deleteproduct(@PathVariable("pid") int pid,Model m) {
		product=productDao.findByPID(pid);
		productDao.removeproduct(product);
		return "redirect:/productList";
	}*/
	/*@RequestMapping("/updatecart-{id}")
	private String editcart(@PathVariable("id") int id ,Model m) {
		cart=cartDao.saveOrUpdate(id);
		m.addAttribute("obcartjsp",cart);
		return "Cart";
	}
	@RequestMapping("/deletecart-{id}")
	private String deletecart(@PathVariable("id") int id,Model m) {
		cart=cartDao.delete(id);
		m.addAttribute("obcartjsp",cart);
		categoryDao.removecategory(category);
		return "Cart";
	}*/
	
}
