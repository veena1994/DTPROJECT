package com.niit.shoppingcart.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.dao.UserDetailsDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.model.UserDetails;
import com.niit.shoppingcart.model.shipping;

@Controller
public class AdminController {
	
	public static String U;
	@Autowired
	private UserDAO userDao;
	
		@Autowired
		private Product product;

		@Autowired
		private Supplier supplier;

		@Autowired
		private Category category;
		
		@Autowired
		private SupplierDAO supplierDAO;
		
		
		@Autowired
		private ProductDAO productDAO;

		
		@RequestMapping("/manageCategories")
		public ModelAndView categories() {
			ModelAndView mv = new ModelAndView("/home");
			mv.addObject("category", category);
			mv.addObject("isAdminClickedCategories", "true");
			mv.addObject("categoryList", categoryDAO.list());
			return mv;
		}

		@RequestMapping("/manageProducts")
		public ModelAndView suppliers() {
			ModelAndView mv = new ModelAndView("/home");
			mv.addObject("product", product);
			mv.addObject("isAdminClickedProducts", "true");
			mv.addObject("productList", productDAO.list());
			return mv;
		}

		@RequestMapping("/manageSuppliers")
		public ModelAndView products() {
			ModelAndView mv = new ModelAndView("/home");
			mv.addObject("supplier", supplier);
			mv.addObject("isAdminClickedSuppliers", "true");
			mv.addObject("supplierList", supplierDAO.list());
			return mv;
		}

		
		
		 @RequestMapping("/isValidUser")
		  	public String isValidUser(@RequestParam(value = "name") String name,
		  			@RequestParam(value = "password") String password,Principal principal) {
		  		System.out.println("in controller");
		  		 U=name;
		  		String message;
		  		ModelAndView mv ;
		                 if(userDao.isAdmin(name))
		                 {
		                	 System.out.println("ADMIN LOGIN");
		           			message = "WELCOME ADMIN";
		           			return "redirect:/isadmin";
		           			 /*mv = new ModelAndView("/home"); 
		           			 mv.addObject("message", message);
		              		 mv.addObject("name", name);*/
		              		
		                 }
		                 else
		                 {
		                	 System.out.println("user login");
		                	message= "hello user";
		                	System.out.println(U);
		                	 mv = new ModelAndView("/home"); 
		           			 mv.addObject("message", message);
		              		 mv.addObject("name", name);
		                	return "redirect:/onLoad1";
		                 }
		                 
		    }
		@RequestMapping("/isadmin")
		 public String getadminpage()
		 {
			 return"adminHome";
			
		 }
		
		@Autowired
		UserDetailsDAO userDetailsDAO;
		
		@RequestMapping("/reg")
		public ModelAndView registerUser(@ModelAttribute UserDetails userDetails) {
			System.out.println(userDetails.getContactNumber());
			userDetailsDAO.saveOrUpdate(userDetails);
		  return new ModelAndView("/login1");
		 }

		
		
	
@RequestMapping("/register")
public String get()
{
	return"register";
}


 @Autowired
private CategoryDAO categoryDAO;
@RequestMapping(value = "/onLoad1", method = RequestMethod.GET)
public String onLoad(Model model) {
System.out.println(U);
	model.addAttribute("category", new Category());
	model.addAttribute("categoryList", this.categoryDAO.list());
	model.addAttribute("U",U);

	
	System.out.println(U);
	return "/home";
}

@RequestMapping("/ship")
public ModelAndView ship(@ModelAttribute  shipping ship) {

	userDetailsDAO.saveOrUpdate(ship);
  return new ModelAndView("/thankyou");
 }
}