package com.study.springex.service;

import com.study.springex.dto.TodoDTO;
import com.study.springex.mapper.TodoMapper;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.time.LocalDate;

import static org.junit.jupiter.api.Assertions.*;



@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/root-context.xml")
class TodoServiceTest {
    @Autowired
    private TodoService todoService;


    @Test
   public void testRegister() {
        TodoDTO todoDTO = TodoDTO.builder().title("test11").dueDate(LocalDate.now()).writer("user1").build();

        todoService.register(todoDTO);
    }
}