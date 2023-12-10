package com.northeastern.coursematch.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.northeastern.coursematch.model.User;
import com.northeastern.coursematch.service.UserService;

@Controller
public class MainController {
    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String signup() {
    	
    	return "index";
    }
    
    
    @PostMapping(path="/createUser")
    @ResponseBody
    public String submit(@RequestParam(name = "email") String email, @RequestParam(name = "firstname") String name){
    	
    	User user = new User(name,email);
    	
    	userService.saveUser(user);
    	
    	return "index";
    }
//    @PostMapping(path = "/add")
//    public @ResponseBody User addNewUser(@RequestParam String name, @RequestParam String email) {
//        User springUser = new User();
//        springUser.setName(name);
//        springUser.setEmail(email);
//        userRepository.save(springUser);
//        return springUser;
//    }
//    
//    
//    @GetMapping(path = "/all")
//    public @ResponseBody Iterable<User> getAllUsers(){
//        return userRepository.findAll();
//    }
}
