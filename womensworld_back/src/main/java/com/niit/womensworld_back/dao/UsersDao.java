package com.niit.womensworld_back.dao;

import java.util.List;

import com.niit.womensworld_back.model.Users;

public interface UsersDao {
	Users getUser(int id);
	public void insertORupdate(Users usr);
	public void delUsers(int id);
	public List<Users> getAll();
}
