package com.niit.womensworld_back.dao;

import java.util.List;

import com.niit.womensworld_back.model.Product;

public interface ProductDao {
	Product getProduct(int id);
	void insertORupdate(Product pro);
	void delProduct(int id);
	List<Product> getAll();
	
	
}
