package com.niit.product;

public class Product {
	private String name;
	private String id ;
	private double price;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId( String id) {
		this.id = id;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
		if(price<0)
		{
			System.out.println("not accepted");
			
		}
	}
	
	
}
