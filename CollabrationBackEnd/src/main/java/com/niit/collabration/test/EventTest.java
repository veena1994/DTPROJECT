package com.niit.collabration.test;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.collabration.dao.EventDAO;
import com.niit.collabration.model.Event;

public class EventTest {

	@SuppressWarnings("resource")
	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.collabration");
		context.refresh();

		EventDAO eventDAO = (EventDAO)context.getBean("eventDAO");
		
		Event event1 =(Event)context.getBean("event");
		event1.setId("EVENT_1");
		event1.setName("BIRTHDAY");

		String dat="08/29/1994";
		long date=new SimpleDateFormat("MM/dd/yyyy").parse(dat,new ParsePosition(0)).getTime();
		java.sql.Date dbDate=new java.sql.Date(date);

		event1.setEventDate(dbDate);
		event1.setVenue("BANGALOR");
		event1.setDescription("I Celebration My BirthDay In Bangalor ");
		eventDAO.saveOrUpdate(event1);
		
		Event event2 =(Event)context.getBean("event");
		event2.setId("EVENT_2");
		event2.setName("DAWALI");

		String dat1="10/6/2016";
		long date1=new SimpleDateFormat("MM/dd/yyyy").parse(dat1,new ParsePosition(0)).getTime();
		java.sql.Date dbDate1=new java.sql.Date(date1);

		event2.setEventDate(dbDate1);
		event2.setVenue("HUNDUPUR");
		event2.setDescription("WE CELEBRATED WIT JOY ");
		eventDAO.saveOrUpdate(event1);
}
}