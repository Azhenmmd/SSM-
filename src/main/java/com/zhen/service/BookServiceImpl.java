package com.zhen.service;

import com.zhen.mapper.BookMapper;
import com.zhen.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService{
    @Autowired
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public List<Books> queryBooks() {
        return bookMapper.queryBooks();
    }

    @Override
    public Books queryBooksById(int id) {
        return bookMapper.queryBooksById(id);
    }

    @Override
    public int updateBooks(Books books) {
        return bookMapper.updateBooks(books);
    }

    @Override
    public int deleteBooks(int id) {
        return bookMapper.deleteBooks(id);
    }

    @Override
    public int insertBooks(Books books) {
        return bookMapper.insertBooks(books);
    }

    @Override
    public List<Books> queryBooksEvery(String bookID) {
        return bookMapper.queryBooksEvery(bookID);
    }
}
