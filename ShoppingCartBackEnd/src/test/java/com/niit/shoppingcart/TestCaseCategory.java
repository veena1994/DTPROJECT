package com.niit.shoppingcart;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;

import com.niit.shoppingcart.model.Category;

public class TestCaseCategory {

	@Autowired
	static CategoryDAO categoryDAO;
	
	@Autowired
	static Category category;
	
	@Autowired
	static AnnotationConfigApplicationContext context;
	
	@BeforeClass
	public static void init()
	{
	context.scan("com.niit.shoppingcart");
	context.refresh();
	
	category = (Category) context.getBean("category");
	categoryDAO= (CategoryDAO) context.getBean("categoryDAO");
	}
	@Test
	public void CategoryNameTest()
	{
		category = categoryDAO.get("cg001");
		String name = category.getName();
		assertEquals("Category Name Test", "cg001",name);
	}
	
	
}
	
	

