package com.niit.controller;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.womensworld_back.dao.CartDao;
import com.niit.womensworld_back.dao.ProductDao;
import com.niit.womensworld_back.dao.UserdetailsDao;
import com.niit.womensworld_back.model.Cart;
import com.niit.womensworld_back.model.Product;
import com.niit.womensworld_back.model.Userdetails;

public class CartController {
	
	@Autowired
	Cart cart;
	@Autowired
	CartDao cartDao;
	
	
 @Autowired 
 Product product;
 
 @Autowired
 ProductDao productDao;
 
 @Autowired
 Userdetails userdetails;
 @Autowired
 UserdetailsDao userdetailsDao;
   	
  	@RequestMapping("shiping")
	 public String getsform(@RequestParam("id")int id)
	 {  
  		ModelAndView mv = new ModelAndView("shipping_details");
         userdetails.setCart_id(id); 	
		System.out.println(id);
		System.out.println("DneOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO");
		 return "redirect:/checkout?id="+id;
	 }
  	
  	@RequestMapping("insertship")
	public String storeship(@ModelAttribute("shipping")Userdetails userdetails,final RedirectAttributes redirectAttributes){
		//		redirectAttributes.addAttribute("message","true");
		//		redirectAttributes.addAttribute("ship",userdetails);
		System.out.println("Done"+userdetails.getName());
		userdetailsDao.insertORupdate(userdetails);
		System.out.println("Done");
		return "redirect:/payment_details";
	}

  	 public String success(){
  		 userdetailsDao.insertORupdate(userdetails);
		cartDao.delCart(userdetails.getCart_id());
		 String status="success";
		 //System.out.println(cid);
		 return status;
	 }
  
 	@RequestMapping("payment_details")
 	public String getpayment_details(){
 		return "payment_details";
 	}
 	@RequestMapping("success_page")
 	public String getsuccess_page(){
 		return "success_page";
 	}

  	 
}
