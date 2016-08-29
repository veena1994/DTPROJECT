package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Product;

public class ProductTest {
public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		Product p = (Product)context.getBean("product");
		
	  
	    p.setId("P_2222");
	    p.setName("NECKLESS");
	    p.setDescription(" PURE DIMOND");
	    p.setPrice(20000);
	    p.setCategory_id("c_1111");
	    p.setSupplier_id("s_1111");
	    
	    ProductDAO productDAO = (ProductDAO)context.getBean("productDAO");
	    productDAO.saveorUpdate(p);
		
	    /*p.setId("PRD_002");
	    p.setName("Apple");
	    p.setDescription("This is iPhone");
	    p.setPrice(10000);
	    p.setCategory_id("CAT_002");
	    p.setSupplier_id("SUP_002");
		    
	    productDAO.saveorUpdate(p);
	    
	    p.setId("PRD_003");
	    p.setName("LG");
	    p.setDescription("This is LG");
	    p.setPrice(10000);
	    p.setCategory_id("CAT_001");
	    p.setSupplier_id("SUP_001");
		    
	    productDAO.saveorUpdate(p);*/
		
	}

}
