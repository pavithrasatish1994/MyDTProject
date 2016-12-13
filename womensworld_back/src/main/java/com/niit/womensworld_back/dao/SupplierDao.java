package com.niit.womensworld_back.dao;

import java.util.List;

import com.niit.womensworld_back.model.Supplier;




public interface SupplierDao {
	Supplier getSupplier(String id);
	void insertORupdate(Supplier sup);
	void delSupplier(String id);
	List<Supplier> getAll();
}
