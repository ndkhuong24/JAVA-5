package com.example.demo.repository;

import com.example.demo.model.Bike;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.UUID;

@Repository
public interface IBikeRepository extends JpaRepository<Bike, UUID> {
    Page<Bike> findByNameContains(String keyword, Pageable pageable);

    Page<Bike> findByPriceBetweenAndNameContains(BigDecimal min, BigDecimal max, String keywword, Pageable pageable);

    Page<Bike> findByPriceBetween(BigDecimal min, BigDecimal max, Pageable pageable);

    Page<Bike> findByPriceIsGreaterThanEqual(BigDecimal min, Pageable pageable);

    Page<Bike> findByPriceIsLessThanEqual(BigDecimal max, Pageable pageable);

    Page<Bike> findByPriceIsGreaterThanEqualAndNameContains(BigDecimal min, String keywword, Pageable pageable);

    Page<Bike> findByPriceLessThanEqualAndNameContains(BigDecimal max, String keywword, Pageable pageable);
}
