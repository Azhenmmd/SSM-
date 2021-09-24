package com.zhen.service;

import com.zhen.pojo.User;

public interface UserService {

    String loginUser(User user);

    int registerUser(User user);

    String RegisterUserUsername(User user);
}
