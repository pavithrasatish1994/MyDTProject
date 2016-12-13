package com.niit.womensworld_back.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.h2.engine.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;






import com.niit.womensworld_back.dao.CartDao;
import com.niit.womensworld_back.dao.CartDaoImpl;
import com.niit.womensworld_back.dao.CategoryDao;
import com.niit.womensworld_back.dao.CategoryDaoImpl;
import com.niit.womensworld_back.dao.ProductDao;
import com.niit.womensworld_back.dao.ProductDaoImpl;
import com.niit.womensworld_back.dao.SupplierDao;
import com.niit.womensworld_back.dao.SupplierDaoImpl;
import com.niit.womensworld_back.dao.UserdetailsDao;
import com.niit.womensworld_back.dao.UserdetailsDaoImpl;
import com.niit.womensworld_back.dao.UsersDao;
import com.niit.womensworld_back.dao.UsersDaoImpl;
import com.niit.womensworld_back.model.Cart;
import com.niit.womensworld_back.model.Category;
import com.niit.womensworld_back.model.Product;
import com.niit.womensworld_back.model.Supplier;
import com.niit.womensworld_back.model.Userdetails;
import com.niit.womensworld_back.model.Users;



@SuppressWarnings("unused")
@Configuration
@ComponentScan("com.niit.womensworld_back.*")
@EnableTransactionManagement
public class ApplicationContextConfig {
	

    
    @Bean(name = "dataSource")
    public DataSource getDataSource() {
    	BasicDataSource dataSource = new BasicDataSource();
    	dataSource.setDriverClassName("org.h2.Driver");
    	dataSource.setUrl("jdbc:h2:tcp://localhost/~/wwdb2");
    	dataSource.setUsername("sa");
    	dataSource.setPassword("");
    	
    	return dataSource;
    }
    
    
    private Properties getHibernateProperties() {
    	Properties properties = new Properties();
    	properties.put("hibernate.show_sql", "true");
    	properties.put("hibernate.format_sql", "true");
    	properties.put("hibernate.hbm2ddl.auto", "update");
    	properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
    	return properties;
    }
    
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties());
     
     	sessionBuilder.addAnnotatedClasses(Users.class);
     	sessionBuilder.addAnnotatedClasses(Category.class);
     	sessionBuilder.addAnnotatedClasses(Supplier.class);
     	sessionBuilder.addAnnotatedClasses(Product.class);
    	sessionBuilder.addAnnotatedClasses(Cart.class);
  	    sessionBuilder.addAnnotatedClasses(Userdetails.class);
    	return sessionBuilder.buildSessionFactory();
    }
    
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
			SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(
				sessionFactory);

		return transactionManager;
	}
    
     

     @Autowired
     @Bean(name="UsersDao")
     public UsersDao getUsersDao(SessionFactory sessionFactory)
     {
    	 return new UsersDaoImpl(sessionFactory);
    }

     @Autowired
     @Bean(name="CategoryDao")
     public CategoryDao getCategoryDao(SessionFactory sessionFactory)
     {
    	 return new CategoryDaoImpl(sessionFactory);
    }

     @Autowired
     @Bean(name="SupplierDao")
     public SupplierDao getSupplierDao(SessionFactory sessionFactory)
     {
    	 return new SupplierDaoImpl(sessionFactory);
    }

     @Autowired
     @Bean(name="ProductDao")
     public ProductDao getProductDao(SessionFactory sessionFactory)
     {
    	 return new ProductDaoImpl(sessionFactory);
    }

     
     @Autowired
     @Bean(name="CartDao")
     public CartDao getCartDao(SessionFactory sessionFactory)
     {
    	 return new CartDaoImpl(sessionFactory);
    }

     @Autowired
     @Bean(name="UserdetailsDao")
     public UserdetailsDao getUserdetailsDao(SessionFactory sessionFactory)
     {
    	 return new UserdetailsDaoImpl(sessionFactory);
    }
     @Autowired
     @Bean(name="usr")
     public Users getuser()
     {
    	 return new Users();
     }
     @Autowired
     @Bean(name="cat")
     public Category getcategory()
     {
    	 return new Category();
     }
     @Autowired
     @Bean(name="sup")
     public Supplier getsupplier()
     {
    	 return new Supplier();
     }
     @Autowired
     @Bean(name="pro")
     public Product getproduct()
     {
    	 return new Product();
     }
     @Autowired
     @Bean(name="car")
     public Cart getcart()
     {
    	 return new Cart();
     }
     @Autowired
     @Bean(name="usrdt")
     public Userdetails getuserdetails()
     {
    	 return new Userdetails();
     }
}