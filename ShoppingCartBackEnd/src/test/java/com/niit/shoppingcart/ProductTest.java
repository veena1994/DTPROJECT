package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Product;

public class ProductTest {
	public static void main(String[] args)
	{
	AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	context.scan("com.niit.shoppingcart");
	context.refresh();

	ProductDAO productDAO=(ProductDAO)context.getBean("productDAO");

	Product product= (Product)context.getBean("product");
	product.setId("P0101"); 
	product.setName("pens"); 
	product.setDescription("good");
	product.setPrice("1200");
	
    
    product.setCategory_id("126");
    product.setSupplier_id("123gt");
    

	productDAO.saveorUpdate(product);
}
}
