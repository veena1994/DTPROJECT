package com.gontuseries.hellocontroller;
 import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class HelloController extends AbstractController  {
	
	protected  ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)throws Exception
	{
		ModelAndView modelandview = new ModelAndView("HelloPage");
		modelandview.addobject("WelcomeMessage" ,"Hi User,welcome to first spring MVC App");
	
		return modelandview;
	}

}
