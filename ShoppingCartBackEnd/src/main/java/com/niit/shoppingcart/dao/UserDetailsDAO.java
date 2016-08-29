package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.UserDetails;
import com.niit.shoppingcart.model.shipping;

public interface UserDetailsDAO {
	
	public List<UserDetails> list();

	public UserDetails get(String id);

	public UserDetails getByName(String name);

	public void saveOrUpdate(UserDetails userDetails);

	public String delete(String id);

	public void saveOrUpdate(shipping ship);
	
	
	public boolean isCorrectUser(String name, String password);
	public boolean isUser(String name);


}
