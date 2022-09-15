package com.javatpoint.controllers;     
import java.util.List;    
import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;

import com.javatpoint.beans.User;
import com.javatpoint.dao.UserService;     
   
@Controller    
public class UserController {
	
    @Autowired    
    UserService dao;  
  
    @RequestMapping("/empform")    
    public String showform(Model m){    
        m.addAttribute("command", new User());  
        return "empform";   
    }    
      
    
    @RequestMapping("/viewemp")    
    public String viewemp(Model m){    
        List<User> list=dao.getUsers();    
        m.addAttribute("list",list);  
        return "viewemp";    
    }    
   
    @RequestMapping(value="/save",method = RequestMethod.POST)    
    public String save(@ModelAttribute("user") User user){    
        dao.save(user);    
        return "redirect:/viewemp";   
    }  
       
 
}  