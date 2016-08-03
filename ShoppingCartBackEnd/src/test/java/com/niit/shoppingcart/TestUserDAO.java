package com.niit.shoppingcart;

import static org.junit.Assert.*;


import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.UserDetails;


public class TestUserDAO {
	

	@Autowired
	 static UserDAO userDAO;
	
	@Autowired
	 static UserDetails userDetails;
	
	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@BeforeClass
	public  static void init()
	{
		System.out.println("Init method");
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		userDAO = (UserDAO) context.getBean("userDAO");
		userDetails = (UserDetails) context.getBean("userDetails");
	}
	// select count(*) from user_details
	@Test
	public void UserTestCase()
	{
		 int size = userDAO.list().size();
		assertEquals("user list test case " ,1, size);
		
	}
	

	
	}


