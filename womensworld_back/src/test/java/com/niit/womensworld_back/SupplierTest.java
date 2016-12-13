package com.niit.womensworld_back;

import java.util.List;
import com.niit.womensworld_back.model.Supplier;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.womensworld_back.dao.SupplierDao;



public class SupplierTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.womensworld_back");
		ctx.refresh();
		System.out.println("DONE");
		
		SupplierDao sp = (SupplierDao) ctx.getBean("SupplierDao");
	    Supplier supplier = (Supplier) ctx.getBean("supplier");
//		supplier.setId("1");
//		supplier.setName("womensworld");
//		supplier.setAddress("bangalore");
//		sp.insertORupdate(supplier);
		
		
		List<Supplier> lst = sp.getAll();
		System.out.println(lst.size());
	}

}
