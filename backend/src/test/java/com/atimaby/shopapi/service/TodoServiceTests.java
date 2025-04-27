package com.atimaby.shopapi.service;

import com.atimaby.shopapi.dto.PageRequestDTO;
import com.atimaby.shopapi.dto.PageResponseDTO;
import com.atimaby.shopapi.dto.TodoDTO;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;

@SpringBootTest
@Log4j2
public class TodoServiceTests {
    @Autowired
    private TodoService todoService;
    @Test
    public void testRegister() {
        TodoDTO todoDTO = TodoDTO.builder()
                .title("Service Test")
                .writer("atimaby")
                .dueDate(LocalDate.of(LocalDate.now().getYear(), LocalDate.now().getMonth(), LocalDate.now().getDayOfMonth()))
                .build();

        Long tno = todoService.register(todoDTO);

        log.info("TNO: " + tno);
    }

    @Test
    public void testGet() {
        Long tno = 28L;
        TodoDTO todoDTO = todoService.get(tno);
        log.info(todoDTO);
    }

    @Test
    public void testList() {
        PageRequestDTO pageRequestDTO = PageRequestDTO.builder()
                .page(2)
                .size(10)
                .build();
        PageResponseDTO<TodoDTO> response = todoService.list(pageRequestDTO);
        log.info(response);
    }
}