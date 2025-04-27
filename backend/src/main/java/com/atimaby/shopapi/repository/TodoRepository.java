package com.atimaby.shopapi.repository;

import com.atimaby.shopapi.domain.Todo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TodoRepository extends JpaRepository<Todo, Long> {
}
