package com.example.demo.controller;

import com.example.demo.model.Bike;
import com.example.demo.model.Categories;
import com.example.demo.service.impl.IBikeService;
import com.example.demo.service.impl.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/bike")
public class BikeController {
    @Autowired
    private IBikeService service;

    @Autowired
    private ICategoryService categoryServicel;

    Page<Bike> bikeList;

    @GetMapping
    public String viewBike(Model model,
                           @RequestParam(defaultValue = "1") int page,
                           @RequestParam(required = false, name = "name") String keyword,
                           @RequestParam(required = false, name = "min") BigDecimal min,
                           @RequestParam(required = false, name = "max") BigDecimal max) {
        if (page < 1) {
            page = 1;
        }
        Pageable pageable = PageRequest.of(page - 1, 10);
        if (keyword == null || keyword.isBlank() && min == null && max == null) {
            bikeList = service.getAll(pageable);
        } else if (min == null && max == null) {
            bikeList = service.getByName(keyword, pageable);
        } else if (keyword == null || keyword.isBlank()) {
            if (max == null) {
                bikeList = service.getGiaLonHon(min, pageable);
            } else if (min == null) {
                bikeList = service.getGiaNhoHon(max, pageable);
            } else {
                bikeList = service.getByPriceBetWen(min, max, pageable);
            }
        } else if (max == null) {
            bikeList = service.getGiaLonHonVaTen(min, keyword, pageable);
        } else if (min == null) {
            bikeList = service.getGiaNhoHonVaTen(max, keyword, pageable);
        } else {
            bikeList = service.getByNameAndPrice(min, max, keyword, pageable);
        }
//        bikeList = service.getAll(pageable);
        model.addAttribute("bike", new Bike());
        model.addAttribute("bikeList", bikeList);
        return "/Bike/Bike";
    }

    @ModelAttribute("categories")
    private List<Categories> getCategories() {
        List<Categories> licategories = categoryServicel.layHet();
        return licategories;
    }

    @PostMapping("/add")
    public String addBike(@ModelAttribute("bike") Bike bike) {
        service.add(bike);
        return "redirect:/bike";
    }

    @GetMapping("/delete/{id}")
    public String deleteBike(@PathVariable("id") UUID id) {
        service.deleteById(id);
        return "redirect:/bike";
    }

    @GetMapping("/update/{id}")
    public String detailBike(@PathVariable("id") UUID id, Model model) {
        Bike bike = service.getById(id);
        model.addAttribute("id", id);
        model.addAttribute("bike", bike);
        return "/Bike/Bike-detail";
    }

    @PostMapping("/update")
    public String updateBike(@ModelAttribute("bike") Bike bike) {
        service.update(bike);
        return "redirect:/bike";
    }
}
