package com.example.demo.service.impl;

import com.example.demo.model.Categories;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.UUID;

public interface ICategoryService {

    void deleteById(UUID id);

    void add(Categories categories);

    Categories getById(UUID uuid);

    void update(Categories categories);

    Page<Categories> getAll(Pageable pageable);

    List<Categories> layHet();
}
