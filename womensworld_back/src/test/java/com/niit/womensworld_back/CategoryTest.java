package com.niit.womensworld_back;

import java.util.List;


import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.womensworld_back.dao.CategoryDao;
import com.niit.womensworld_back.model.Category;



public class CategoryTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.womensworld_back");
		ctx.refresh();
		System.out.println("DONE");
		
		CategoryDao ct = (CategoryDao) ctx.getBean("CategoryDao");
//		Category category = (Category) ctx.getBean("category");
//		
		
		
		
		List<com.niit.womensworld_back.model.Category> lst = ct.getAll();
		System.out.println(lst.size());
	}

}
