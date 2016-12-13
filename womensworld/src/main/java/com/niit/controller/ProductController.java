package com.niit.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.niit.womensworld_back.model.Category;
import com.niit.womensworld_back.dao.CategoryDao;
import com.niit.womensworld_back.dao.ProductDao;
import com.niit.womensworld_back.dao.SupplierDao;
import com.niit.womensworld_back.dao.UserdetailsDao;
import com.niit.womensworld_back.model.Product;
import com.niit.womensworld_back.model.Supplier;
import com.niit.womensworld_back.model.Userdetails;

@Controller
public class ProductController {

	@Autowired
	Product product;
	@Autowired
	ProductDao productDao;
	
	@Autowired
	Userdetails userdetails;
	@Autowired
	UserdetailsDao userdetailsDao;
	
	@Autowired
	Category category;
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	Supplier supplier;
	
	@Autowired
	SupplierDao supplierDao;
	
	@RequestMapping("getProduct")
	public ModelAndView getAllPro()
	{
	    ModelAndView mv=new ModelAndView("ProductTable");
		return mv;
	}
	@RequestMapping("getUser")
	public ModelAndView getAllUser(){
		ModelAndView mv = new ModelAndView("UserdetailsTable");
		return mv;
	}
	
	@RequestMapping("GsonCon")
	public @ResponseBody String listProduct() {
	 String pro="";
	 System.out.println("PPPPPP PPPPPP PPPPPPP");
		
		Product prod=null;
		Gson gson=null;
		List<Product> listPro = productDao.getAll();
		
			gson=new Gson();
			pro=gson.toJson(listPro);
			  System.out.println("PPPPPP PPPPPP PPPPPPP"+listPro.size());
	 
	    return pro;
	}
	

	@RequestMapping("GsonConU")
	public @ResponseBody String listUserdetails(){
	 String userdetails="";
	 System.out.println("Userdetails information");
		
		Userdetails userdetails1 = null;
		Gson gson=null;
		List<Userdetails> listuserdetails1 = userdetailsDao.getAll();
		    gson=new Gson();
			userdetails=gson.toJson(listuserdetails1);
			  System.out.println("PPPPPP PPPPPP PPPPPPP"+listuserdetails1.size());
	 
	    return userdetails;
	}
	
	@RequestMapping ("getCategory")
	public ModelAndView getCate()
	{
		ModelAndView mv = new ModelAndView("CategoryTable");
		Category category = new Category(); 
	mv.addObject("order",category);	
		return mv;
	}
	
	@RequestMapping("CategoryTable")
	public String getCategory(){
		return "CategoryTable";
	}
	
	@RequestMapping("returnback")
	public String getback(){
		System.out.println("getting into controller");
		return "admin_page";
	}


	@RequestMapping("addcategory")
	public String storecate(@ModelAttribute("order")Category category,final RedirectAttributes redirectAttributes){
		//		redirectAttributes.addAttribute("message","true");
		//		redirectAttributes.addAttribute("ship",userdetails);
		
		categoryDao.insertORupdate(category);
		System.out.println("Done");
		return "redirect:/Category_Table";
	}

	
	  @RequestMapping("getSupllier")
	  public ModelAndView getSupp()
	  {
		  ModelAndView mv = new ModelAndView("SupplierTable");
		  Supplier supplier = new Supplier();
		  return mv;
	  }


	  @RequestMapping("GsonConS")
		public @ResponseBody String listSupplier() {
		 String sup="";
		 System.out.println("PPPPPP PPPPPP PPPPPPP");
			
		Supplier supplier1 = null;	
			Gson gson=null;
			List<Supplier> listSup = supplierDao.getAll();
			
				
				gson=new Gson();
				sup=gson.toJson(listSup);
				  System.out.println("PPPPPP PPPPPP PPPPPPP"+listSup.size());
		 
		    return sup;
		}

		 
		 @RequestMapping("sdelS")
		 public String getSupplierDel(@ModelAttribute("supplier") Supplier supplier,@RequestParam(value="val",required=false,defaultValue="")String id,final RedirectAttributes redirectAttributes)
		 
		 {
			 supplierDao.delSupplier(id);
			 System.out.println("deleted"+id);
			 return "redirect:/SupplierTable";
		 }
			@RequestMapping ("SupplierTable")
			public String getSupplierTable()
			{
				return "SupplierTable";
			}

          @RequestMapping("sdelU")
         public String getUserdetailsDel(@ModelAttribute("userdetails") Userdetails userdetails,@RequestParam(value="val",required=false,defaultValue="")int id, final RedirectAttributes redirectAttributes)
     {
         userdetailsDao.delUserdtails(id);   	 
    	 System.out.println("deleted" + id);
    	 return "redirect:/UserdetailsTable";
     }

       @RequestMapping("UserdetailsTable")
       public String getUserdetailsTable(){
    	   return "UserdetailsTable";
       }

}



