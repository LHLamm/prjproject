/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.math.BigInteger;

/**
 *
 * @author trant
 */
public class Product {
    String id;
    String name;
    String  image;
    long price;
    long discount;
    int quantity;
    String detail;
    int rate;
    String information;
    String status;
    String subcategoryID;
    long pricediscount;

    public Product() {
    }

    public Product(String id, String name, String image, long price, long discount, int quantity, String detail, int rate, String information, String status, String subcategoryID) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.discount = discount;
        this.quantity = quantity;
        this.detail = detail;
        this.rate = rate;
        this.information = information;
        this.status = status;
        this.subcategoryID = subcategoryID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public long getDiscount() {
        return discount;
    }

    public void setDiscount(long discount) {
        this.discount = discount;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSubcategoryID() {
        return subcategoryID;
    }

    public void setSubcategoryID(String subcategoryID) {
        this.subcategoryID = subcategoryID;
    }

    
    public long getPricediscount(){
        return (price*(100-discount))/100;
    }
    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", discount=" + discount + ", quantity=" + quantity + ", detail=" + detail + ", rate=" + rate + ", information=" + information + ", status=" + status + ", subcategoryID=" + subcategoryID + '}';
    }

    

    

    

    
    
    
    
    
}
