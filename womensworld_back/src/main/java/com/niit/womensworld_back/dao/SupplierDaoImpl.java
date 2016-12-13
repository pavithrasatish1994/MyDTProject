package com.niit.womensworld_back.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.womensworld_back.model.Supplier;

public class SupplierDaoImpl implements SupplierDao {



	@Autowired
	private SessionFactory sessionFactory;


	@Autowired
	private Supplier supplier;

	public SupplierDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}


	public Supplier getSupplier(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void insertORupdate(Supplier sup) {
		sessionFactory.getCurrentSession().saveOrUpdate(sup);

	}

	@Transactional
	public void delSupplier(String id) {
		supplier.setId(id);
		sessionFactory.getCurrentSession().delete(supplier);	
	}

	@Transactional
	public List<Supplier> getAll() {
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) sessionFactory.getCurrentSession()
		.createCriteria(Supplier.class)
		.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return list;

	}



}
