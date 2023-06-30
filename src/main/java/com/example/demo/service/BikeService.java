package com.example.demo.service;

import com.example.demo.model.Bike;
import com.example.demo.repository.IBikeRepository;
import com.example.demo.service.impl.IBikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

@Service
public class BikeService implements IBikeService {
    @Autowired
    private IBikeRepository repository;

    @Override
    public void add(Bike bike) {
        repository.save(bike);
    }

    @Override
    public void deleteById(UUID id) {
        repository.deleteById(id);
    }

    @Override
    public Bike getById(UUID id) {
        return repository.getOne(id);
    }

    @Override
    public void update(Bike bike) {
        repository.save(bike);
    }

    @Override
    public Page<Bike> getAll(Pageable pageable) {
        return repository.findAll(pageable);
    }

    @Override
    public Page<Bike> getByName(String keyword, Pageable pageable) {
        return repository.findByNameContains(keyword,pageable);
    }

    @Override
    public Page<Bike> getGiaLonHon(BigDecimal min, Pageable pageable) {
        return repository.findByPriceIsGreaterThanEqual(min,pageable);
    }

    @Override
    public Page<Bike> getGiaNhoHon(BigDecimal max, Pageable pageable) {
        return repository.findByPriceIsLessThanEqual(max,pageable);
    }

    @Override
    public Page<Bike> getByPriceBetWen(BigDecimal min, BigDecimal max, Pageable pageable) {
        return repository.findByPriceBetween(min,max,pageable);
    }

    @Override
    public Page<Bike> getGiaLonHonVaTen(BigDecimal min, String keyword, Pageable pageable) {
        return repository.findByPriceIsGreaterThanEqualAndNameContains(min,keyword,pageable);
    }

    @Override
    public Page<Bike> getGiaNhoHonVaTen(BigDecimal max, String keyword, Pageable pageable) {
        return repository.findByPriceLessThanEqualAndNameContains(max,keyword,pageable);
    }

    @Override
    public Page<Bike> getByNameAndPrice(BigDecimal min, BigDecimal max, String keyword, Pageable pageable) {
        return repository.findByPriceBetweenAndNameContains(min,max,keyword,pageable);
    }

    @Override
    public List<Bike> getAllSanPham() {
        return repository.findAll();
    }
}
