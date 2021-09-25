package com.zhen.mapper;

import com.zhen.pojo.User;

import java.util.List;

public interface UserMapper {

    User loginUser(User user);

    int registerUser(User user);

    int queryUserByName(User user);
}
