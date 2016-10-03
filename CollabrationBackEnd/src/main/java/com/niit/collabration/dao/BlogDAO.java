package com.niit.collabration.dao;

import java.util.List;

import com.niit.collabration.model.Blog;

public interface BlogDAO {

	public List<Blog> list();

	public Blog get(int Id);
	
	public void saveOrUpdate(Blog blog);

	public void delete(int Id);

	}
