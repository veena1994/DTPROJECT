package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.model.Cart;

public class CartTest {
	
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
			
			context.scan("com.niit.shoppingcart");
			context.refresh();
			
			Cart ct = (Cart)context.getBean("cart");
			//ct.setId(1);
			ct.setPrice(10);
			ct.setProductName("PRD_001");
			ct.setQuantity(5);
			ct.setStatus('B');
			ct.setTotal(1000);
			// ct.setUserID("NIIT");
		    CartDAO cartDAO = (CartDAO)context.getBean("cartDAO");
		    cartDAO.saveOrUpdate(ct);
			
		}


}
