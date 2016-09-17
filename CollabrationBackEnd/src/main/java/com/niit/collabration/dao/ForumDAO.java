package com.niit.collabration.dao;

import java.util.List;

import com.niit.collabration.model.Forum;



public interface ForumDAO {

	public List<Forum> list();

	public Forum get(String Id);
	
	public void saveOrUpdate(Forum forum);

	public void delete(String Id);

}
