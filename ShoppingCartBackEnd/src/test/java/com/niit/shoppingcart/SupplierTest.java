
package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;



public class SupplierTest {
	
	public static void main(String[] args){
		AnnotationConfigApplicationContext  context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		SupplierDAO supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
		Supplier  supplier = (Supplier)context.getBean("supplier");
		supplier.setId("123gt");
		supplier.setName("binhgf");
		supplier.setAddress("goojhgjl");
	    
		supplierDAO.saveorUpdate(supplier);
		
		/*if(supplierDAO.get("12f3")==null)
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
