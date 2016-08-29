package com.gontuseries.hellocontroller;

import org.springframework.beans.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	
	@RequestMapping("/welcome")
	public ModelAndView helloworld(){
		
		ModelAndViewContainer  model = new ModelAndView("HelloPage");
		model.addobject("msg","hello world");
		
		return model;
		
	}

}
