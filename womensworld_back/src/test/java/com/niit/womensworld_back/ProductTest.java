package com.niit.womensworld_back;

import java.util.List;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.womensworld_back.dao.ProductDao;
import com.niit.womensworld_back.model.Product;


public class ProductTest {
	public static void main(String[] args) {
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.womensworld_back.*");
		ctx.refresh();
		System.out.println("DONE");
      System.out.println("PAVITHRA");
		ProductDao pd = (ProductDao) ctx.getBean("ProductDao");
		Product product =(Product) ctx.getBean("product");
//		product.setId("111");
//		product.setName("ggggggggggggg");
//		product.setOffer("100%");
//		pd.insertORupdate(product);
		
		List <Product> lst = pd.getAll();
		System.out.println(lst.size());
//		
//		product =pd.getProduct(1);
//		System.out.println(product.getName());
		
		
	}

}
