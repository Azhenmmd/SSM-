package com.zhen.controller;

import com.zhen.pojo.Books;
import com.zhen.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/book")
public class BooksController {

    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allbook")
    public String queryAllBook(Model model){

        List<Books> books = bookService.queryBooks();

        model.addAttribute("books",books);

        return "allbook";
    }


    @RequestMapping("/goaddbook")
    public String goaddBooks(){
        return "addbooks";
    }

    @RequestMapping("/addbook")
    public String addBooks(Books books){
        bookService.insertBooks(books);
        return "redirect:/book/allbook";
    }

    @RequestMapping("/deletebook")
    public String deleteBook(int bookID){
        System.out.println(bookID);
        bookService.deleteBooks(bookID);
        return "redirect:/book/allbook";
    }

    @RequestMapping("/updatebook")
    public String updatebook(int bookID){
        Books books = bookService.queryBooksById(bookID);
        return null;
    }
}
