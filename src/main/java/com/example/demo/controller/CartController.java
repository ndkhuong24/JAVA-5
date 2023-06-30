package com.example.demo.controller;

import com.example.demo.service.impl.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private ICartService cartService;

    @GetMapping
    public String viewCart(Model model) {
        Map<UUID, Integer> sanPhamTrongGio = cartService.laySanPhamTrongGio();
        model.addAttribute("sanPhamTrongGio", sanPhamTrongGio);
        return "/Cart/Cart";
    }

    @GetMapping("/add/{id}")
    public String addCart(@PathVariable("id") UUID id) {
        cartService.themSanPhamVaoGio(id, 1);
        return "redirect:/bike";
    }
}
