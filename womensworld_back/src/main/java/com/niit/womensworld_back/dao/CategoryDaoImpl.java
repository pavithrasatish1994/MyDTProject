package com.niit.womensworld_back.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.womensworld_back.model.Category;

public class CategoryDaoImpl  implements CategoryDao{

	@Autowired
	private SessionFactory sessionFactory;
	@Autowired 
	private Category category;
	
	public CategoryDaoImpl (SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}

	public Category getCategory(String id) {
		// TODO Auto-generated method stub
		return null;
	}
      @Transactional
	public void insertORupdate(Category cat) {
		sessionFactory.getCurrentSession().saveOrUpdate(cat);
		
	}
      @Transactional
	public void delCategory(String id) {
    	  category.setId(id);
	sessionFactory.getCurrentSession().delete(category);
		
	}
	@Transactional
	public List<Category> getAll() {
		@SuppressWarnings("unchecked")
		List<Category> list = (List<Category>) sessionFactory.getCurrentSession()
				.createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return list;
	}
	@Transactional
	public void del(String id) {
		 category.setId(id);
			sessionFactory.getCurrentSession().delete(category);
				
	}
	

}
