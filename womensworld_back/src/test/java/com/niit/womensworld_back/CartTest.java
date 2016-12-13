package com.niit.womensworld_back;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.womensworld_back.dao.CartDao;

import com.niit.womensworld_back.model.Cart;


public class CartTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.womensworld_back");
		ctx.refresh();
		System.out.println("DONE");

		CartDao cr = (CartDao) ctx.getBean("CartDao");
		Cart cart = (Cart) ctx.getBean("cart");
//		 cart.setId(4);
//		 cart.setPid(4);
//	     cart.setPname("abcd");	
//     	cart.setPrice("1000");	
//		cr.insertORupdate(cart);
		List <Cart> lst = cr.getAll();
		System.out.println(lst.size());
	}
	}


