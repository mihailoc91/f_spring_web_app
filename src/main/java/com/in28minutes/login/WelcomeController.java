/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.in28minutes.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Mihailo
 */
@Controller
public class WelcomeController {
    
   
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showLoginPage(ModelMap model){
        model.addAttribute("name","in28Minutes");
        return "welcome";
    }
    
  
    
}
