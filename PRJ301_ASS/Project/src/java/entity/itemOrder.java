/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author trant
 */
public class itemOrder {
    private String id;
    private String username;
    private String fullname;
    private String sdt;
    private String email;
    private String address;
    private String note;
    private String date;
    private String status;
    private String pid;
    private int quantity;

    public itemOrder() {
    }

    public itemOrder(String id, String username, String fullname, String sdt, String email, String address, String note, String date, String status, String pid, int quantity) {
        this.id = id;
        this.username = username;
        this.fullname = fullname;
        this.sdt = sdt;
        this.email = email;
        this.address = address;
        this.note = note;
        this.date = date;
        this.status = status;
        this.pid = pid;
        this.quantity = quantity;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    @Override
    public String toString() {
        return "itemOrder{" + "id=" + id + ", username=" + username + ", fullname=" + fullname + ", sdt=" + sdt + ", email=" + email + ", address=" + address + ", note=" + note + ", date=" + date + ", status=" + status + ", pid=" + pid + ", quantity=" + quantity + '}';
    }
    
}
