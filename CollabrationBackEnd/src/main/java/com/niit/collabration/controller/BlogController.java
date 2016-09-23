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
import com.niit.collabration.dao.BlogDAO;
import com.niit.collabration.model.Blog;
@RestController
public class BlogController {
 
	
	@Autowired
	private BlogDAO blogDAO;
	
	@Autowired
	private Blog blog;
	
	@GetMapping("/blogs")
	public String  getBlogs(){
		//logger.debug("calling method getBlogs");
		List<Blog> list = blogDAO.list();
		System.out.println("list th things"+list.get(0));
		Gson g=new Gson();
		String blogs=g.toJson(list);
		if(list.isEmpty())
		{
			return  null;
			
		}
		
		return blogs;
	}
	
	@GetMapping("/blog/{Id}")
	public ResponseEntity<Blog> getBlogs(@PathVariable("Id")String Id){
		//logger.debug("calling method getBLogs with the Id" +Id);
		blog = blogDAO.get(Id);
		if(blog==null){
		return new ResponseEntity<Blog>(HttpStatus.NOT_FOUND);
		
		}
		return new ResponseEntity<Blog>(blog, HttpStatus.OK);
		}
	
	@PostMapping(value="/blog")
    public ResponseEntity<Blog> createBlog(@RequestBody Blog blog){
    //logger.debug("calling method createBlog ");
    blogDAO.saveOrUpdate(blog);
    return new ResponseEntity<Blog>(blog, HttpStatus.OK);
    
    }
	
	
    @DeleteMapping("/blog/{Id}")
    public ResponseEntity<Blog> deleteBlog(@PathVariable String Id){
    //logger.debug("calling method deleteBlog with the Id"+Id);
    
    if(blogDAO.get(Id)!=null){
    	return new ResponseEntity<Blog>(HttpStatus.NOT_FOUND);
    }
    blogDAO.delete(Id);
    return new ResponseEntity<Blog>(HttpStatus.OK);
    }
    
   @PutMapping("/blog/{Id}")
   public ResponseEntity<Blog> updateBlog(@PathVariable String Id,@RequestBody Blog blog)
   {
   //logger.debug("calling method updateBlog with the Id"+Id);
   if(blogDAO.get(Id)==null){
	   return new ResponseEntity<Blog>(HttpStatus.NOT_FOUND);
   }
   blogDAO.saveOrUpdate(blog);
   return new ResponseEntity<Blog>(blog, HttpStatus.OK);
   }
 
}
    

    



