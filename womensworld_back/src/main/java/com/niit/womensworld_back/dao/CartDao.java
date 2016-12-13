package com.niit.womensworld_back.dao;

import java.util.List;

import com.niit.womensworld_back.model.Cart;


public interface CartDao {
	Cart getCart(int id);
	void insertORupdate(Cart car);
	void delCart(int id);
	List<Cart> getAll();
	List<Cart> getAllbyUser(String usr);
}
