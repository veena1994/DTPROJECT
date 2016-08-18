package com.niit.loggs;


import org.springframework.stereotype.Controller; 
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class LoginController {
    @RequestMapping( "/")
    public String init(Model model) {
        model.addAttribute("msg", "Please Enter Your Login Details");
        return "login";
    }
 
    @RequestMapping(method = RequestMethod.POST)
    public String submit(Model model, @ModelAttribute("loginBean") LoginBean loginBean) {
        if (loginBean != null && loginBean.getUserName() != null & loginBean.getPassword() != null)
        {
            if (loginBean.getUserName().equals("harini") && loginBean.getPassword().equals("hari")) 
            {
                model.addAttribute("msg", "welcome" + loginBean.getUserName());
                return "msg";
            } 
            else {
                model.addAttribute("error", "Invalid Details");
                return "login";
            }
        } 
        else {
            model.addAttribute("error", "Please enter Details");
            return "login";
        }
    }
}