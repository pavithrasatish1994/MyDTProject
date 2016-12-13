package com.niit.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.womensworld_back.dao.CartDao;
import com.niit.womensworld_back.dao.ProductDao;
import com.niit.womensworld_back.dao.ProductDaoImpl;
import com.niit.womensworld_back.dao.SupplierDao;
import com.niit.womensworld_back.dao.UserdetailsDao;
import com.niit.womensworld_back.model.Cart;
import com.niit.womensworld_back.model.Product;
import com.niit.womensworld_back.model.Supplier;
import com.niit.womensworld_back.dao.UserdetailsDaoImpl;
import com.niit.womensworld_back.dao.UsersDao;
import com.niit.womensworld_back.model.Userdetails;
import com.niit.womensworld_back.model.Users;


@Controller
public class HomeController {

	private static final String id = null;

	@Autowired
	Userdetails userdetails;

	@Autowired
	UserdetailsDao userdetailsDao;


	private Path path;

	@Autowired
	Users users;

	@Autowired 
	UsersDao usersDao;


	@Autowired
	Product product;

	@Autowired
	ProductDao productDao;

	@Autowired
	Supplier supplier;
	@Autowired
	SupplierDao supplierDao;


	@Autowired
	Cart cart;

	@Autowired
	CartDao cartDao;

	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {
		System.out.println("Landing Page");
		ModelAndView model = new ModelAndView("index");
		System.out.println("Landing Page");
		return model;

	}

	@RequestMapping ("header")
	public String getHeader(){
		return "testlog";
	}

	@RequestMapping("landing_page")
	public String getlanding_page(){
		System.out.println("Landing Page");
		return "landing_page";
	}
//------------------------------------------------------login page-----------------------------------------------------------------------------------
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView getLogin(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		System.out.println("login page");
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
			System.out.println("Error");
			model.setViewName("login");
		}

		else if (logout != null) {
			model.addObject("msg", "you have loggedout successfully");
			System.out.println("LogOut");
			model.setViewName("index");
		}
		else
		{
			System.out.println("some error");
			model.setViewName("UserTable");
		}
		return model;

	}


	@RequestMapping ("logins")
	public String getLoginForm(){
		System.out.println("login form");
		return "login";
	}


//---------------------------------------------------------------------------------------------------------------------------------------------------

	@RequestMapping("xyz")
	public String getlanding_page_1(){
		return "landing_page_1";
	}
	 
	
	 @RequestMapping(value="userview")
	    public ModelAndView list(HttpServletRequest request) {
	        List<Product> itemlist = productDao.getAll();
	        ModelAndView model = new ModelAndView("landing_page_1");
	       
	        Path path=null;
	        String rootdir=request.getSession().getServletContext().getRealPath("/");
			//System.out.println("UUUUUUUUUUUUUUUUU "+rootdir);
			path = Paths.get(rootdir+"resources/imgs");
			String imgPath=path.toString();
			model.addObject("imp", imgPath);
	        model.addObject("itemlist", itemlist);
	        return model;
	    }

	 
	 	@RequestMapping("shoProduct")
	 	public ModelAndView shoSinglePro(@RequestParam(value="id") int id)
	 	{
	 		ModelAndView mv=new ModelAndView("image_info");
	 		System.out.println(id+" DONE ");
			product=productDao.getProduct(id);
			mv.addObject("cart", cart);
			mv.addObject("product", product);
			return mv;
	 	}
	 	

      	@RequestMapping("addtocart")
		public String storecart(@ModelAttribute("product") Product product ,@RequestParam(value="nam") String nam,final RedirectAttributes redirectAttributes){

			ModelAndView model = new ModelAndView();
			model.addObject("product", product);
			product=productDao.getProduct(product.getId());
			int x=product.getId();
			cart.setId(product.getId());
			cart.setPid(product.getId());
			cart.setPname(product.getName());
			cart.setPrice(product.getPrice());
			cart.setUser_name(nam);
			cartDao.insertORupdate(cart);
			return "redirect:/CartTable?nam="+ nam; 
		}
	
        @RequestMapping("CartTable")
	public ModelAndView getCartTable(@RequestParam(value="nam") String nam){
        	ModelAndView mv = new ModelAndView("CartTable");
        	List<Cart> lstCart=cartDao.getAllbyUser(nam);
        	mv.addObject("items", lstCart);
        	return mv;
		}

        @RequestMapping("abc")
        public String delByCartId(@RequestParam(value="id") int id,@RequestParam(value="nam") String nam, final RedirectAttributes redirectAttributes )
        {
         cartDao.delCart(id);
        	System.out.println("DONEEEEEEEEEEE+++EEEEEEEEEEEEEEEEEE");
        	return "redirect:/CartTable";
//        	return "redirect:/userview;="+ nam; 
        }
    	
        
        @RequestMapping("123")
        		public String get123(){
        	return "supplier_page";
        }
        
      	@RequestMapping("shiping")
    	 public String getsform(@RequestParam("id")int id)
    	 {  
      		ModelAndView mv = new ModelAndView("shipping_details");
             userdetails.setCart_id(id); 	
    		System.out.println(id);
    		System.out.println("DneOOOOOOOOOOOO++++++OOOOOOOOOOOOOOOOOOOOOOO");
    		 return "redirect:/checkout?id="+id;
    	 }
      	

    	 public String success(){
    		 userdetailsDao.insertORupdate(userdetails);
   		cartDao.delCart(userdetails.getCart_id());
   		 String status="success";
   		 System.out.println(id);
   		 return status;
   	 }
      	
     	@RequestMapping("shipping_details")
     	public String getshipping_details(){
     		return "shipping_details";
     	}
        
    	
      	@RequestMapping("insertship")
    	public String storeship(@ModelAttribute("shipping")Userdetails userdetails,final RedirectAttributes redirectAttributes){
    		//		redirectAttributes.addAttribute("message","true");
    		//		redirectAttributes.addAttribute("ship",userdetails);
    		System.out.println("Done"+userdetails.getName());
    		userdetailsDao.insertORupdate(userdetails);
    		System.out.println("Done");
    		return "redirect:/payment_details";
    	}

        
	//------------------------------------------------supplier page----------------------------------------------------------------------------------
	@RequestMapping ("supplier_page")
	public String getSupplier_page(){
		ModelAndView mv = new ModelAndView();
		mv.addObject("product", product);
		System.out.println("Supplier_page");

		return "supplier_page";
	}

	@RequestMapping ("addform")
	public ModelAndView showform(){
		ModelAndView mv = new ModelAndView("ProductForm");
		Product product = new Product();
		mv.addObject("product",product);
		return mv;
	}

	@RequestMapping ("insertprod")
	public String storeprod(@ModelAttribute("product")Product product,BindingResult result,HttpServletRequest request, final RedirectAttributes redirectAttributes){
		//		redirectAttributes.addFlashAttribute("message", "true");
		//		redirectAttributes.addFlashAttribute("product", product);
		System.out.println("PAVITHRA"+product.getId());
		productDao.insertORupdate(product);
		System.out.println("OOOOOOOOOOOOO "+product.getId());
		MultipartFile itemimage=product.getImg();
		String rootdir=request.getSession().getServletContext().getRealPath("/");
		System.out.println("UUUUUUUUUUUUUUUUU "+rootdir);
		path = Paths.get(rootdir+"resources/img/"+product.getId()+".jpg");

		if(itemimage!=null && !itemimage.isEmpty()){
			try{
				System.out.println("OOOOOOOOOOOOOOOO "+path.toString());
				itemimage.transferTo(new File(path.toString()));
			}
			catch(Exception e)
			{
				e.printStackTrace();
				throw new RuntimeException("product image saving failed", e);
			}
		}
		return "redirect:supplier_page";
	}

//--------------------------------------------------------------------------------------------------------------------------------------------------

	@RequestMapping ("signup")
	public ModelAndView getSignup(){
		ModelAndView mv = new ModelAndView("signup");
		mv.addObject("userd",userdetails);
		return mv;
	}

	@RequestMapping("insertuserd")
	public String storeuser(@ModelAttribute("userd")Userdetails userdetails,final RedirectAttributes redirectAttributes){
		//		  redirectAttributes.addAttribute("message", "true");
		//		  redirectAttributes.addAttribute("user",userDetails);
		System.out.println("DOne "+userdetails.getName());
		userdetailsDao.insertORupdate(userdetails);
	    users.setId(userdetails.getId());	
		users.setPwd(userdetails.getPwd());
		users.setRole("ROLE_USER");
		usersDao.insertORupdate(users);
		System.out.println("Done rrrrrrrrrrrrrrr ");
		return "redirect:/logins";
	}


	
	@RequestMapping("ProductForm")
	public String getProductForm(){
		return "ProductForm";
	}

	
	 @RequestMapping("edit.do")
     public ModelAndView editprod(@ModelAttribute("product")Product product,@RequestParam(value="id", required=true) int id,final RedirectAttributes redirectAttributes) {
       product.setId(id);	 
		// product=productDao.getProduct(id);     
        System.out.println("Done Here 1");
        ModelAndView mv=new ModelAndView("ProductForm","product",product);
        mv.addObject("product",product);
        System.out.println("Done Here 2");
         return mv;
 }
	 
	 @RequestMapping("sdel")
		public String getProductSdel(@ModelAttribute("product")Product product,@RequestParam(value="val", required=false,defaultValue="")int id,final RedirectAttributes redirectAttributes)
	 {
			productDao.delProduct(id);
			System.out.println("deleted "+id);
			return "redirect:/ProductTable";
     }
		@RequestMapping ("ProductTable")
		public String getProductTable()
		{
			return "ProductTable";
		}

	@RequestMapping("admin_page")
	public String getAdminpage(){
		System.out.println("Admin Page");
		return "admin_page";
	}

	@RequestMapping("addlist")
	public ModelAndView showlist(){
		ModelAndView mv = new ModelAndView("Supplier-Table");
		mv.addObject("sup",supplier);
		return mv;
	}


 	@RequestMapping("payment_details")
 	public String getpayment_details(){
 		return "payment_details";
 	}
 	

 	@RequestMapping("success_page")
 	public String getsuccess_page(){
 		return "success_page";
 	}

  	 
}