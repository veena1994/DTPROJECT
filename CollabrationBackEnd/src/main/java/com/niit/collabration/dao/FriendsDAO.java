package com.niit.collabration.dao;

import java.util.List;

import com.niit.collabration.model.Friends;

public interface FriendsDAO {

	public List<Friends> list();

	public Friends get(String Id);
	
	public void saveOrUpdate(Friends friends);

	public void delete(String Id);
}
