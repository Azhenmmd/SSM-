package com.zhen.controller;

import com.zhen.pojo.User;
import com.zhen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/login")
    public String loginUser(User user){
        return userService.loginUser(user);
    }

    @RequestMapping("/usernameBoolean")
    @ResponseBody
    public String usernameBoolean(User user){
        return userService.RegisterUserUsername(user);
    }

    @RequestMapping("/userRegister")
    public String userRegister(User user){
        userService.registerUser(user);
        return "allbook";
    }
}
