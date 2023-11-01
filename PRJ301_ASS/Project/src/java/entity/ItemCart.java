/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author trant
 */
public class ItemCart {
    private String iID;
    private Product p;
    private int quantity;
    private long price;

    public ItemCart() {
    }

    public ItemCart(String iID, Product p, int quantity, long price) {
        this.iID = iID;
        this.p = p;
        this.quantity = quantity;
        this.price = price;
    }

    public String getiID() {
        return iID;
    }

    public void setiID(String iID) {
        this.iID = iID;
    }

    public Product getP() {
        return p;
    }

    public void setP(Product p) {
        this.p = p;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "ItemCart{" + "iID=" + iID + ", p=" + p + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
    
}
