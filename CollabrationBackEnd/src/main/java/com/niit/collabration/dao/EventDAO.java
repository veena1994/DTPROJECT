package com.niit.collabration.dao;

import java.util.List;

import com.niit.collabration.model.Event;

public interface EventDAO {

	public List<Event> list();

	public Event get(String Id);
	
	public void saveOrUpdate(Event event);

	public void delete(String Id);
}
