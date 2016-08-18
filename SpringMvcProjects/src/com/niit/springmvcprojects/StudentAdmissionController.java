package com.niit.springmvcprojects;

@Controller
public class StudentAdmissionController {

	@RequestMapping(value="/admissionForm.html", method = RequestMethod.GET)
	public ModelAndView getAdmissionForm()
	{
		ModelAndView model = new ModelAndView("AdmissionForm");
		
		return model;
	}
	@RequestMapping(value="/submitAdmissionForm.html", method = RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@RequestParam MAP<String,String> reqpar){

		String name =reqpar.get("studentName");
		String hobby =reqpar.get("hobby");
		
		ModelAndView model = new ModelAndView("AdmissionSuccess");
	    model.addobject("msg","Details submitted by you:: Name: "+name+",Hobby:"+hobby);
	
	    return model;
	
	
}
}
}
