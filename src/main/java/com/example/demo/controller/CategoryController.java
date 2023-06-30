package com.example.demo.controller;

import com.example.demo.model.Bike;
import com.example.demo.model.Categories;
import com.example.demo.service.impl.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/category")
public class CategoryController {
    @Autowired
    private ICategoryService service;

    Page<Categories> categoriesList;

    @GetMapping
    public String viewCategory(Model model, @RequestParam(defaultValue = "1") int page) {
        if (page < 1) {
            page = 1;
        }
        Pageable pageable = PageRequest.of(page - 1, 5);
        categoriesList=service.getAll(pageable);
        model.addAttribute("categoriesList", categoriesList);
        model.addAttribute("category", new Categories());
        return "/Category/Category";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute("category") Categories categories, Model model) {
        service.add(categories);
        return "redirect:/category";
    }

    @GetMapping("/delete/{id}")
    public String deleteCategory(@PathVariable("id") UUID id) {
        service.deleteById(id);
        return "redirect:/category";
    }

    @GetMapping("/update/{id}")
    public String detailCategory(@PathVariable("id") UUID id,
                                 Model model) {
        Categories category = service.getById(id);
        model.addAttribute("id", id);
        model.addAttribute("category", category);
        return "/Category/Category-detail";
    }

    @PostMapping("/update")
    public String updateCategory(@ModelAttribute("category") Categories categories) {
        service.update(categories);
        return "redirect:/category";
    }
}
