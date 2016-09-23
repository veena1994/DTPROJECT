package com.niit.collabration.test;


import java.util.Date;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import com.niit.collabration.dao.ForumDAO;
import com.niit.collabration.model.Forum;

public class ForumTest {

	@SuppressWarnings("resource")
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.collabration");
		context.refresh();
		
		Forum forum1 =(Forum)context.getBean("forum");
		
		
		ForumDAO forumDAO = (ForumDAO)context.getBean("forumDAO");
		
		forum1.setId("1546_hy");
		forum1.setUsr("XYZ");
		forum1.setContent("IT JOB ONLY");
		forum1.setCategory("New Category");
		forum1.setTitle("JOB");
		forum1.setDate(new Date());
		
		forumDAO.saveOrUpdate(forum1);
	}
}