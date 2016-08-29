package com.niit.firstspringmvcprojectv;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloController extends AbstractController {

	@Override
     protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception
     {
     
     ModelAndView modelandview = new ModelAndView("HelloPage");
     modelandview.addobject("hi user");
     return modelandview;
     
     }
     }
}
