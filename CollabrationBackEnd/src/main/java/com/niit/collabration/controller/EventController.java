package com.niit.collabration.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.niit.collabration.dao.EventDAO;
import com.niit.collabration.model.Event;



@RestController
public class EventController {
	@Autowired
	private EventDAO eventDAO;
	
	@Autowired
	private Event event;
	
	@GetMapping("/events")
	public String getevents(){
	
		List<Event> list = eventDAO.list();
		System.out.println("list the things"+list.get(0));
		Gson g=new Gson();
		String events=g.toJson(list);
		if(list.isEmpty())
		{
			return  null;
			
		}
		
		return events;
	}
	@GetMapping("/event/{Id}")
	public ResponseEntity<Event> getEvent(@PathVariable("Id")String Id){
		//logger.debug("calling method getBLogs with the Id" +Id);
		event = eventDAO.get(Id);
		if(event==null){
		return new ResponseEntity<Event>(HttpStatus.NOT_FOUND);
		
		}
		return new ResponseEntity<Event>(event, HttpStatus.OK);
		}
	
	@PostMapping(value="/event")
    public ResponseEntity<Event> createEvent(@RequestBody Event event){
    //logger.debug("calling method createBlog ");
    eventDAO.saveOrUpdate(event);
    return new ResponseEntity<Event>(event, HttpStatus.OK);
    
    }
	
	 @DeleteMapping("/event/{Id}")
	    public ResponseEntity<Event> deleteEvent(@PathVariable String Id){
	    //logger.debug("calling method deleteBlog with the Id"+Id);
	    
	    if(eventDAO.get(Id)!=null){
	    	return new ResponseEntity<Event>(HttpStatus.NOT_FOUND);
	    }
	    eventDAO.delete(Id);
	    return new ResponseEntity<Event>(HttpStatus.OK);
	    }
	    
	 @PutMapping("/event/{Id}")
	   public ResponseEntity<Event> updateEvent(@PathVariable String Id,@RequestBody Event event)
	   {
	   //logger.debug("calling method updateBlog with the Id"+Id);
	   if(eventDAO.get(Id)==null){
		   return new ResponseEntity<Event>(HttpStatus.NOT_FOUND);
	   }
	   eventDAO.saveOrUpdate(event);
	   return new ResponseEntity<Event>(event, HttpStatus.OK);
	   }
	 
}
