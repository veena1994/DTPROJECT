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
import com.niit.collabration.dao.UserDAO;
import com.niit.collabration.model.User1;

@RestController
public class User1Controller {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private User1 user1;
	
	@GetMapping("/users1")
	public String getusers1(){
	
		List<User1> list = userDAO.list();
		System.out.println("list the things"+list.get(0));
		Gson g=new Gson();
		String users1=g.toJson(list);
		if(list.isEmpty())
		{
			return  null;
			
		}
		
		return users1;
	}
	@GetMapping("/user1/{Id}")
	public ResponseEntity<User1> getEvent(@PathVariable("Id")String Id){
		//logger.debug("calling method getBLogs with the Id" +Id);
		user1 = userDAO.get(Id);
		if(user1==null){
		return new ResponseEntity<User1>(HttpStatus.NOT_FOUND);
		
		}
		return new ResponseEntity<User1>(user1, HttpStatus.OK);
		}
	
	@PostMapping(value="/user1")
    public ResponseEntity<User1> createUser1(@RequestBody User1 user1){
    //logger.debug("calling method createBlog ");
    userDAO.saveOrUpdate(user1);
    return new ResponseEntity<User1>(user1, HttpStatus.OK);
    
    }
	
	 @DeleteMapping("/user1/{Id}")
	    public ResponseEntity<User1> deleteUser1(@PathVariable String Id){
	    //logger.debug("calling method deleteBlog with the Id"+Id);
	    
	    if(userDAO.get(Id)!=null){
	    	return new ResponseEntity<User1>(HttpStatus.NOT_FOUND);
	    }
	    userDAO.delete(Id);
	    return new ResponseEntity<User1>(HttpStatus.OK);
	    }
	    
	 @PutMapping("/user1/{Id}")
	   public ResponseEntity<User1> updateUser1(@PathVariable String Id,@RequestBody User1 user1)
	   {
	   //logger.debug("calling method updateBlog with the Id"+Id);
	   if(userDAO.get(Id)==null){
		   return new ResponseEntity<User1>(HttpStatus.NOT_FOUND);
	   }
	   userDAO.saveOrUpdate(user1);
	   return new ResponseEntity<User1>(user1, HttpStatus.OK);
	   }
}
