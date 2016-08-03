package com.niit.shoppingcart.dao;

import java.util.List;


import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.model.UserDetails;


public interface UserDAO {
	
	public List<UserDetails> list();

	public UserDetails get(String id);

	//public void saveOrUpdate(User user);
	
	public void saveOrUpdate(User user);

	public void delete(String id);
	
	public boolean isValidUser(String id, String password, boolean isAdmin);
	public boolean isAdmin(String name);


}
