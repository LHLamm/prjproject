/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author trant
 */
public class Item {
    private String iID;
    private String pID;
    private int quantity;
    

    public Item() {
    }

    public Item(String iID, String pID, int quantity ) {
        this.iID = iID;
        this.pID = pID;
        this.quantity = quantity;
        
    }

    public String getiID() {
        return iID;
    }

    public void setiID(String iID) {
        this.iID = iID;
    }

    public String getpID() {
        return pID;
    }

    public void setpID(String pID) {
        this.pID = pID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    

    @Override
    public String toString() {
        return "Item{" + "iID=" + iID + ", pID=" + pID + ", quantity=" + quantity +  '}';
    }

        
}
