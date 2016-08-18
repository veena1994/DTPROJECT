package com.niit.shoppingcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class LoginController {
@RequestMapping("/login")
	public String getpage()
	{
		return"login";
	}

@RequestMapping("/logo")
public String getlogopage()
{
	return"logo";
}

@Controller
public class MyChaitanyaController {
@RequestMapping("/mychaitanya")
	public String getpage()
	{
		return"mychaitanya";
	}
@Controller
public class OurController {
@RequestMapping("/ourcollection")
	public String getpage()
	{
		return"ourcollection";
	}
@Controller
public class ContactController {
@RequestMapping("/contact")
	public String getpage()
	{
		return"contact";
	}

@Controller
public class CartController {
@RequestMapping("/cart")
	public String getpage()
	{
		return"cart";
	}
}
}
}
}
}