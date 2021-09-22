package com.zhen.service;

import com.zhen.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {

    //查询所有书
    List<Books> queryBooks();

    //查询单个书
    Books queryBooksById(int id);

    //修改一本书
    int updateBooks(Books books);

    //删除一本书
    int deleteBooks(int id);

    //插入一本书
    int insertBooks(Books books);

}
