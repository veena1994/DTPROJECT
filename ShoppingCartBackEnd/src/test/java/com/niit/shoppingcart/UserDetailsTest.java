
package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDetailsDAO;
import com.niit.shoppingcart.model.UserDetails;






public class UserDetailsTest {
	
	public static void main(String[] args){
		AnnotationConfigApplicationContext  context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		UserDetailsDAO userdetailsDAO=(UserDetailsDAO)context.getBean("userdetailsDAO");
		UserDetails  userdetails = (UserDetails)context.getBean("userDetails");
		userdetails.setId("12f5");
		userdetails.setName("veena");
		userdetails.setAddress("Bangalore");
		userdetails.setContactNumber("9999999999");
		userdetails.setMailID("vijaibaskar@yahoo.com");
userdetailsDAO.saveorUpdate(userdetails);
		
		
	
	}

}
