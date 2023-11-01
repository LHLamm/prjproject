/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author trant
 */
public class itemOrderDetail {
    private itemOrder i;
    private Product p ;

    public itemOrderDetail() {
    }

    public itemOrderDetail(itemOrder i, Product p) {
        this.i = i;
        this.p = p;
    }

    public itemOrder getI() {
        return i;
    }

    public void setI(itemOrder i) {
        this.i = i;
    }

    public Product getP() {
        return p;
    }

    public void setP(Product p) {
        this.p = p;
    }

    @Override
    public String toString() {
        return "itemOrderDetail{" + "i=" + i + ", p=" + p + '}';
    }
    
    
    
}
