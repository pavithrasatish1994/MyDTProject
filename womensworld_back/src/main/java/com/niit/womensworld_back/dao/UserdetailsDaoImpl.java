package com.niit.womensworld_back.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import com.niit.womensworld_back.model.Userdetails;


public class UserdetailsDaoImpl implements UserdetailsDao {

	
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	Userdetails userdetails;
	public UserdetailsDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public Userdetails getUserdetails(int id) {
		String hql = "from Supplier where id='" + id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Userdetails> listUserdetails = (List<Userdetails>) query.list();
		
		if (listUserdetails != null && !listUserdetails.isEmpty()) {
			return listUserdetails.get(0);
		}
		return null;
	}
	
@Transactional
	public void insertORupdate(Userdetails userdetails) {
		sessionFactory.getCurrentSession().saveOrUpdate(userdetails);
		
	}
@Transactional
	public void delUserdtails(int id) {
	userdetails.setId(id);
	sessionFactory.getCurrentSession().delete(userdetails);
		
	}
@Transactional
	public List<Userdetails> getAll() {
		@SuppressWarnings("unchecked")
		List<Userdetails> list = (List<Userdetails>)sessionFactory.getCurrentSession()
		.createCriteria(Userdetails.class)
		.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return list;
	}

}
