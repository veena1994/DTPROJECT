package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.Supplier;


public interface SupplierDAO {
	
	public List<Supplier> list();
	public Supplier get(String id);
	public Supplier getByName(String name);
	public void saveorUpdate(Supplier supplier);
	public void delete(String id);

}
