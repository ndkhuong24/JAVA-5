package com.example.demo.service;

import com.example.demo.model.Bike;
import com.example.demo.model.Cart;
import com.example.demo.service.impl.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
public class CartService implements ICartService {
    private final Cart cart = new Cart();

    @Override
    public Map<UUID, Integer> laySanPhamTrongGio() {
        return cart.getSanPhamTrongGio();
    }

    @Override
    public void themSanPhamVaoGio(UUID id, int i) {
        Map<UUID, Integer> sanPhamTrongGio = cart.getSanPhamTrongGio();
        if (sanPhamTrongGio.containsKey(id)) {
            Integer soLuongHienCo = sanPhamTrongGio.get(id);
            Integer soLuongMoi = soLuongHienCo + i;
            sanPhamTrongGio.put(id, soLuongMoi);
        } else {
            sanPhamTrongGio.put(id,i);
        }
    }
}
