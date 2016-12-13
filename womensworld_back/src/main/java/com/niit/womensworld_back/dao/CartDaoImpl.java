package com.niit.womensworld_back.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.womensworld_back.model.Cart;
import com.niit.womensworld_back.model.Product;
import com.niit.womensworld_back.model.Supplier;

public class CartDaoImpl implements CartDao{
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private Cart cart;
	public CartDaoImpl (SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	

	@Transactional
	public void insertORupdate(Cart car) {
	sessionFactory.getCurrentSession().saveOrUpdate(car);
		
	}

	@Transactional
	public List<Cart> getAll() {
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) sessionFactory.getCurrentSession()
				.createCriteria(Cart.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return list;
	}


public Cart getCart(int id) {
	// TODO Auto-generated method stub
	return null;
}

@Transactional
public void delCart(int id) {
	cart.setId(id);
	sessionFactory.getCurrentSession().delete(cart);
	
}

@Transactional
public List<Cart> getAllbyUser(String usr) {
	String hql = "from Cart where user_name='" + usr+"'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	
	@SuppressWarnings("unchecked")
	List<Cart> listCart = (List<Cart>) query.list();
	
	if (listCart != null && !listCart.isEmpty()) {
		return listCart;
	}
	return null;
}




	
	}

