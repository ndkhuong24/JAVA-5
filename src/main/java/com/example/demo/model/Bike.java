package com.example.demo.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "bike")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Bike {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "id")
    private UUID id;

    @Column(name = "name")
    private String name;

    @Column(name = "price")
    private BigDecimal price;

    @Column(name = "quantity")
    private Integer quantity;

    @Column(name = "image")
    private String image;

    @ManyToOne
    @JoinColumn(name = "idcategory")
    private Categories categories;

    @Column(name = "frame")
    private String frame;

    @Column(name = "sizef")
    private Integer sizeF;

    @Column(name = "materialf")
    private String materialF;

    @Column(name = "rim")
    private String rim;

    @Column(name = "sizer")
    private Integer sizeR;

    @Column(name = "materialr")
    private String materialR;
}
