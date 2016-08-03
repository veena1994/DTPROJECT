
package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;



public class CategoryTest {
	
	public static void main(String[] args){
		AnnotationConfigApplicationContext  context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		CategoryDAO categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
		Category  category = (Category)context.getBean("category");
		category.setId("456456");
		category.setName("ram");
		category.setDescription("good");
	    
		/*categoryDAO.delete("12f");*/
		categoryDAO.saveorUpdate(category);
		
		/*if(categoryDAO.get("12f3")==null)
		{
		System.out.println("category does not exist");	
		}
		else
		{
			System.out.println("category exist");
			System.out.println();
		}*/
	
	}

}
