package com.niit.womensworld_back.dao;

import java.util.List;


import com.niit.womensworld_back.model.Userdetails;

public interface UserdetailsDao {
	Userdetails getUserdetails(int id);
	void insertORupdate(Userdetails userdetails);
	void delUserdtails(int id);
	List<Userdetails> getAll();
}
