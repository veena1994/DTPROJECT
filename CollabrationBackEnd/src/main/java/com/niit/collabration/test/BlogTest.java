package com.niit.collabration.test;


import java.util.Date;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.collabration.dao.BlogDAO;
import com.niit.collabration.model.Blog;

public class BlogTest {

	@SuppressWarnings("resource")
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.collabration");
		context.refresh();
		
		BlogDAO blogDAO = (BlogDAO)context.getBean("blogDAO");
		
	Blog bl =(Blog)context.getBean("blog");
	
	bl.setId("Blog_03");
	bl.setBlogName("Blog3");
	bl.setBlogDate(new Date());
   
	bl.setContents("This Blog 3 is of job");
	bl.setStatus('N');
	bl.setReason("  Not yet  published");
	blogDAO.saveOrUpdate(bl);
	
Blog b2 =(Blog)context.getBean("blog");
	
	b2.setId("Blog_04");
	b2.setBlogName("Blog4");
	b2.setBlogDate(new Date());

	b2.setContents("This Blog 4 is of job");
	b2.setStatus('A');
	b2.setReason("  Available jobs are  published in our website");
	blogDAO.saveOrUpdate(b2);
}
}