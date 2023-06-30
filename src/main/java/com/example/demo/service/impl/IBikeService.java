package com.example.demo.service.impl;

import com.example.demo.model.Bike;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;
import java.util.zip.ZipEntry;

public interface IBikeService {
    void add(Bike bike);

    void deleteById(UUID id);

    Bike getById(UUID id);

    void update(Bike bike);

    Page<Bike> getAll(Pageable pageable);

    Page<Bike> getByName(String keyword, Pageable pageable);

    Page<Bike> getGiaLonHon(BigDecimal min, Pageable pageable);

    Page<Bike> getGiaNhoHon(BigDecimal max, Pageable pageable);

    Page<Bike> getByPriceBetWen(BigDecimal min, BigDecimal max, Pageable pageable);

    Page<Bike> getGiaLonHonVaTen(BigDecimal min, String keyword, Pageable pageable);

    Page<Bike> getGiaNhoHonVaTen(BigDecimal max, String keyword, Pageable pageable);

    Page<Bike> getByNameAndPrice(BigDecimal min, BigDecimal max, String keyword, Pageable pageable);

    List<Bike> getAllSanPham();
}
