package com.niit.shoppingcart;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.User;

public class UserTest {
	
static AnnotationConfigApplicationContext context;
	
	public UserTest()
	{
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
	}
	
	public static void createUser(User user)
	{
		
		UserDAO  userDAO =  (UserDAO) context.getBean("userDAO");
		userDAO.saveOrUpdate(user);
		
		
	}
	
	

	public static void main(String[] args) {
		
		UserTest t = new UserTest();
		
		User user =(User)  context.getBean("user");
		user.setId("admin");
		user.setPassword("admin");
		user.setAdmin(true);
		
		t.createUser(user);
		
		
	}
}
