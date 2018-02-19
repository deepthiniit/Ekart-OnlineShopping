package com.niit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.PaymentDao;
import com.niit.model.Payment;

@SuppressWarnings("unused")
@Controller
public class PaymentController {
	 @Autowired
	 Payment payment;
	
	@Autowired

     PaymentDao paymentDao;
	 
	
	/* @RequestMapping("/payment")
		public ModelAndView()
		{
			ModelAndView mv = new ModelAndView("payment");
			return mv;
		}*/

@RequestMapping("/payment")
       public String pay()
     {
	    System.out.println("Payment details");
	       return "pay";
     
     }


@ModelAttribute("addtopymt")
public Payment newpayt()
{
	return new Payment();
	
}

@RequestMapping(value="/addpayment",method=RequestMethod.POST)
public String addingpytm(@ModelAttribute("addtopymt") Payment addtopymt )
{
	System.out.println("paying");
	paymentDao.insertPayment(addtopymt);
	return "redirect:/";
}

@RequestMapping("/checkout")
public String check()
{
	return "pay";
}
}