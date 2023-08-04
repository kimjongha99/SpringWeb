package com.study.springex.service;

import com.study.springex.domain.TodoVO;
import com.study.springex.dto.PageRequestDTO;
import com.study.springex.dto.PageResponseDTO;
import com.study.springex.dto.TodoDTO;

import java.util.List;

public interface TodoService {
    void register(TodoDTO todoDTO);

    PageResponseDTO<TodoDTO> getList(PageRequestDTO pageRequestDTO);

    TodoDTO getOne(Long tno);

    void remove(Long tno);

    void modify(TodoDTO todoDTO);
    }
