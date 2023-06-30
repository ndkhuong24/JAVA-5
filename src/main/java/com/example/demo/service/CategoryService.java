package com.example.demo.service;

import com.example.demo.model.Categories;
import com.example.demo.repository.ICategoryRepository;
import com.example.demo.service.impl.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class CategoryService implements ICategoryService {
    @Autowired
    private ICategoryRepository repository;

    @Override
    public void deleteById(UUID id) {
        repository.deleteById(id);
    }

    @Override
    public void add(Categories categories) {
        repository.save(categories);
    }

    @Override
    public Categories getById(UUID uuid) {
        return repository.getOne(uuid);
    }

    @Override
    public void update(Categories categories) {
        repository.save(categories);
    }

    @Override
    public Page<Categories> getAll(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @Override
    public List<Categories> layHet() {
        return repository.findAll();
    }
}
