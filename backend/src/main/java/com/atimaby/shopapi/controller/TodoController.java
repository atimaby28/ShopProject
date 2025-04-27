package com.atimaby.shopapi.controller;

import com.atimaby.shopapi.domain.Todo;
import com.atimaby.shopapi.dto.PageRequestDTO;
import com.atimaby.shopapi.dto.PageResponseDTO;
import com.atimaby.shopapi.dto.TodoDTO;
import com.atimaby.shopapi.repository.TodoRepository;
import com.atimaby.shopapi.service.TodoService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequiredArgsConstructor
@Log4j2
@RequestMapping("/api/todo")
public class TodoController {

    private final TodoService service;
    private final TodoRepository todoRepository;

    @GetMapping("/{tno}")
    public TodoDTO get(@PathVariable(name = "tno") Long tno) {
        return service.get(tno);
    }

    @PostMapping("/")
    public Map<String, Long> register(@RequestBody TodoDTO todoDTO){
        log.info("TodoDTO: " + todoDTO);
        Long tno = service.register(todoDTO);
        return Map.of("TNO", tno);
    }

    @PutMapping("/{tno}")
    public Map<String, String> modify(@PathVariable(name="tno") Long tno, @RequestBody TodoDTO todoDTO) {
        todoDTO.setTno(tno);
        log.info("Modify: " + todoDTO);
        service.modify(todoDTO);
        return Map.of("RESULT", "SUCCESS");
    }

    @DeleteMapping("/{tno}")
    public Map<String, String> remove( @PathVariable(name="tno") Long tno ){
        log.info("Remove: " + tno);
        service.remove(tno);
        return Map.of("RESULT", "SUCCESS");
    }

    @GetMapping("/list")
    public PageResponseDTO<TodoDTO> list(PageRequestDTO pageRequestDTO ) {
        log.info(pageRequestDTO);
        return service.list(pageRequestDTO);
    }

}