package com.atimaby.shopapi.service;

import com.atimaby.shopapi.dto.PageRequestDTO;
import com.atimaby.shopapi.dto.PageResponseDTO;
import com.atimaby.shopapi.dto.TodoDTO;

public interface TodoService {
    Long register(TodoDTO todoDTO);
    TodoDTO get(Long tno);
    void modify(TodoDTO todoDTO);
    void remove(Long tno);

    PageResponseDTO<TodoDTO> list(PageRequestDTO pageRequestDTO);
}
