package com.zhen.service;

import com.zhen.mapper.BookMapper;
import com.zhen.pojo.Books;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService{
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public List<Books> queryBooks() {
        return null;
    }

    @Override
    public Books queryBooksById(int id) {
        return null;
    }

    @Override
    public int updateBooks(Books books) {
        return 0;
    }

    @Override
    public int deleteBooks(int id) {
        return 0;
    }

    @Override
    public int insertBooks(Books books) {
        return 0;
    }
}
