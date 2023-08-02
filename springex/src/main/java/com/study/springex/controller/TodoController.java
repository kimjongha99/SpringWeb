package com.study.springex.controller;


import com.study.springex.dto.TodoDTO;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Log4j2
@RequestMapping("/todo")
public class TodoController {

    @RequestMapping("/list")
    public void list() {
        log.info("todo list");
    }

    //    @RequestMapping(value = "/register",method = RequestMethod.POST)
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public void registerGet() {
        log.info("GET      todo register-");
    }

    @PostMapping("/register")
    public void  registerPost(TodoDTO todoDTO){
        log.info("post reg~~~~~~~~~~~~~~~");
        log.info(todoDTO);

    }


}
