package com.example.demo.service.impl;

import com.example.demo.model.Bike;
import com.example.demo.model.Cart;

import java.util.Map;
import java.util.UUID;

public interface ICartService {

    Map<UUID, Integer> laySanPhamTrongGio();

    void themSanPhamVaoGio(UUID id, int i);
}
