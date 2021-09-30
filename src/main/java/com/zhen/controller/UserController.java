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

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/login")
    public String loginUser(HttpSession session,User user){
        String msg = "";
        String s = userService.loginUser(user);
        String username = user.getUsername();
        if(s.equals("loginErr")){
            msg = s;
        }else {
            session.setAttribute("username",username);
            session.setAttribute("user",user);
            msg = s;
        }
        return msg;
    }

    @RequestMapping("/usernameBoolean")
    @ResponseBody
    public String usernameBoolean(User user){
        return userService.RegisterUserUsername(user);
    }

    @RequestMapping("/userRegister")
    public String userRegister(User user ,Model model){
        userService.registerUser(user);
        return "redirect:/register.jsp";
    }

    @RequestMapping("/goOut")
    public String goOut(HttpSession session){
        session.removeAttribute("username");
        session.removeAttribute("user");
        return "redirect:/login.jsp";
    }

}
