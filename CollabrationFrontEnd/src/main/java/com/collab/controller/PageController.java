package com.collab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping("/")
	public String page()
	{
		return "home";
	}
	@Controller
	public class LoginController{
	
		@RequestMapping("/login")
		public String login()
		{
			return "Login";
		}
		
		@Controller
		public class ContactController{
		
			@RequestMapping("/contact")
			public String contact()
			{
				return "Contact";
	
			}
	@Controller
	public class RegisterController{
		@RequestMapping("/register")
		public String register()
		{
			return "Register";
		}
	
	@Controller
	public class BlogController{
		@RequestMapping("/blog")
		public String blog()
		{
			return "Blog";
		}
	}
	@Controller
	public class ThankuController{
		@RequestMapping("/thanku")
		public String Thanku()
		{
			return "Thanku";
		}
	}
	
	
	}
	}
	}
}
