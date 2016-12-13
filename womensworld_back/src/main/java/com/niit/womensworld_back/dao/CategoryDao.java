package com.niit.womensworld_back.dao;

import java.util.List;

import com.niit.womensworld_back.model.Category;


public interface CategoryDao {
	Category getCategory(String id);
	void insertORupdate(Category cat);
	void del(String id);
	List<Category> getAll();
}
