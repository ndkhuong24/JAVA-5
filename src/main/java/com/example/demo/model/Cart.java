package com.example.demo.model;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class Cart {
    private Map<UUID, Integer> sanPhamTrongGio = new HashMap<>();

    public Map<UUID, Integer> getSanPhamTrongGio() {
        return sanPhamTrongGio;
    }

    public void setSanPhamTrongGio(Map<UUID, Integer> sanPhamTrongGio) {
        this.sanPhamTrongGio = sanPhamTrongGio;
    }
}
