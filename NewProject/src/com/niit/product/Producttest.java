package com.niit.product;

public class Producttest {
public static void main(String[] args) {
	Product product= new Product();
	product.setName("moile");
	product.setId("abc");
	product.setPrice(2377);
	System.out.println(product.getName());
	System.out.println(product.getId());
	System.out.println(product.getPrice());
		
}

}
