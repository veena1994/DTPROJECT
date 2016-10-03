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
import com.niit.collabration.dao.ForumDAO;
import com.niit.collabration.model.Forum;

@RestController
public class ForumController {

	@Autowired
	private ForumDAO forumDAO;
	
	@Autowired
	private Forum forum;
	
	@GetMapping("/forums")
	public String  getForums(){
		//logger.debug("calling method getBlogs");
		List<Forum> list = forumDAO.list();
		System.out.println("list all things"+list.get(0));
		Gson g=new Gson();
		String forums=g.toJson(list);
		if(list.isEmpty())
		{
			return  null;
			
		}
		
		return forums;
	}
	
	@GetMapping("/forum/{Id}")
	public ResponseEntity<Forum> getForums(@PathVariable("Id")int Id){
		//logger.debug("calling method getBLogs with the Id" +Id);
		forum = forumDAO.get(Id);
		if(forum==null){
		return new ResponseEntity<Forum>(HttpStatus.NOT_FOUND);
		
		}
		return new ResponseEntity<Forum>(forum, HttpStatus.OK);
		}
	
	@PostMapping(value="/forum")
    public ResponseEntity<Forum> createForum(@RequestBody Forum forum){
    //logger.debug("calling method createBlog ");
    forumDAO.saveOrUpdate(forum);
    return new ResponseEntity<Forum>(forum, HttpStatus.OK);
    
    }
	
	
    @DeleteMapping("/forum/{Id}")
    public ResponseEntity<Forum> deleteForum(@PathVariable int Id){
    //logger.debug("calling method deleteBlog with the Id"+Id);
    
    if(forumDAO.get(Id)!=null){
    	return new ResponseEntity<Forum>(HttpStatus.NOT_FOUND);
    }
    forumDAO.delete(Id);
    return new ResponseEntity<Forum>(HttpStatus.OK);
    }
    
   @PutMapping("/forum/{Id}")
   public ResponseEntity<Forum> updateForum(@PathVariable int Id,@RequestBody Forum forum)
   {
   //logger.debug("calling method updateBlog with the Id"+Id);
   if(forumDAO.get(Id)==null){
	   return new ResponseEntity<Forum>(HttpStatus.NOT_FOUND);
   }
   forumDAO.saveOrUpdate(forum);
   return new ResponseEntity<Forum>(forum, HttpStatus.OK);
   }
 
}
