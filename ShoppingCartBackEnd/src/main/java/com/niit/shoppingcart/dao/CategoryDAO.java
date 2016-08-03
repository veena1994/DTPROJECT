package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.Category;




public interface CategoryDAO {
	
	public List<Category> list();
	public Category get(String id);
	public Category getByName(String name);
	public void saveorUpdate(Category Category);
	public void delete(String id);

}
