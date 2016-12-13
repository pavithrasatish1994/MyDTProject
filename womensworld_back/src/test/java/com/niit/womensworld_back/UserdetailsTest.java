package com.niit.womensworld_back;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.womensworld_back.dao.UserdetailsDao;
import com.niit.womensworld_back.model.Userdetails;

public class UserdetailsTest {
	
public static void main(String[] args) {
	AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
	ctx.scan("com.niit.womensworld_back");
	ctx.refresh();
	System.out.println("DONEEEEEEEEEEEEEEEE");
	
	UserdetailsDao usrdt = (UserdetailsDao) ctx.getBean("UserdetailsDao");
	System.out.println("222222222222222222222222222222222");
	Userdetails userdetails = (Userdetails) ctx.getBean("userdetails");
//	userdetails.setId(1);
//	userdetails.setName("UUU");
//	userdetails.setNumber("12345");
//	userdetails.setState("aaa");
//	userdetails.setCountry("aaa");
//	usrdt.insertORupdate(userdetails);
	List<Userdetails> lst = usrdt.getAll();
    System.out.println(lst.size());
	
}
}
