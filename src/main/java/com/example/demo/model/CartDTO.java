package com.example.demo.model;

import java.math.BigDecimal;

public class CartDTO {
    private Bike bike;
    private int quantity;
    private BigDecimal price;;

    public CartDTO(Bike bike, int quantity, BigDecimal price) {
        this.bike = bike;
        this.quantity = quantity;
        this.price = price;
    }

    public CartDTO() {
    }

    public Bike getBike() {
        return bike;
    }

    public void setBike(Bike bike) {
        this.bike = bike;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }
}
