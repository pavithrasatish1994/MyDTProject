package com.niit.womensworld_back;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.womensworld_back.dao.UsersDao;
import com.niit.womensworld_back.model.Users;



public class UsersTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.womensworld_back");
		ctx.refresh();
		System.out.println("DONE");
//
		UsersDao ud = (UsersDao) ctx.getBean("UsersDao");
//		Users users=(Users) ctx.getBean("users");
		
//		users.setId("1111");
//		users.setPwd("uuuu");
//		users.setRole("user");
//		ud.insertORupdate(users);
		
		List <Users> lst = ud.getAll();
		System.out.println(lst.size());
	}

}
