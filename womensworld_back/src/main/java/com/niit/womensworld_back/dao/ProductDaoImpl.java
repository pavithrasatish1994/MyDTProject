package com.niit.womensworld_back.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.womensworld_back.model.Product;

public class ProductDaoImpl implements ProductDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private Product product;
	
	
	public ProductDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	
	@Transactional
	public void insertORupdate(Product pro) {
	sessionFactory.getCurrentSession().saveOrUpdate(product);
		
	}
	
	@Transactional
	public List<Product> getAll() {
		@SuppressWarnings("unchecked")
		List<Product> list = (List<Product>) sessionFactory.getCurrentSession()
				.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return list;
		
	}

@Transactional
public void delProduct(int id) {
	product.setId(id);
	sessionFactory.getCurrentSession().delete(product);
	
}

@Transactional
public Product getProduct(int id) {
	String hql = "from Product where id='" + id+"'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	
	@SuppressWarnings("unchecked")
	List<Product> listProduct = (List<Product>) query.list();
	
	if (listProduct != null && !listProduct.isEmpty()) {
		return listProduct.get(0);
	}
	return null;
}

	}


