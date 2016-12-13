package com.niit.womensworld_back.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;


import com.niit.womensworld_back.model.Users;

public class UsersDaoImpl implements UsersDao {
 @Autowired
 private SessionFactory sessionFactory;
 @Autowired
 private Users users;
 
 public UsersDaoImpl (SessionFactory sessionFactory)
 {
	 this.sessionFactory = sessionFactory;
 }
	public Users getUser(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void insertORupdate(Users usr) {
		sessionFactory.getCurrentSession().saveOrUpdate(usr);
		
	}
    @Transactional
	public void delUsers(int id) {
	     users.setId(id);	
		sessionFactory.getCurrentSession().delete(users);
	}
	@Transactional
	public List<Users> getAll() {
		@SuppressWarnings("unchecked")
		List<Users> list = (List<Users>) sessionFactory.getCurrentSession()
				.createCriteria(Users.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return list;
	}	
	}


