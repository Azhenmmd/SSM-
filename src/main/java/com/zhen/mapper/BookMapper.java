package com.zhen.mapper;

import com.zhen.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {

    //查询所有书
    List<Books> queryBooks();

    //查询单个书
    Books queryBooksById(@Param("bookid")int id);

    //修改一本书
    int updateBooks(Books books);

    //删除一本书
    int deleteBooks(@Param("bookid")int id);

    //插入一本书
    int insertBooks(Books books);

    List<Books> queryBooksEvery(String bookID);

}
