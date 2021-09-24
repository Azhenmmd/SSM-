package com.zhen.service;

import com.zhen.mapper.UserMapper;
import com.zhen.pojo.User;

public class UserServiceImpl implements UserService{

    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public String loginUser(User user) {
        User users = userMapper.loginUser(user);
        if(users==null){
            return "loginErr";
        }
        return "redirect:/book/allbook";
    }

    @Override
    public int registerUser(User user) {
        return userMapper.registerUser(user);
    }

    @Override
    public String RegisterUserUsername(User user) {
        String msg = "";
        User user1 = userMapper.loginUser(user);
        if(user1==null){
            msg="ok";
        }else{
            msg="no";
        }
        return msg;
    }
}
