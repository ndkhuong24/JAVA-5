package com.example.demo.repository;

import com.example.demo.model.Categories;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface ICategoryRepository extends JpaRepository<Categories, UUID> {
}
