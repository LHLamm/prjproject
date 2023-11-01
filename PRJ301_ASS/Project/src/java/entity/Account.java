/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author trant
 */
public class Account {
    private int roll;
    private String fullName;
    private String email;
    private String sdt;
    private String address;
    private String date;
    private String username;
    private String password;

    public Account() {
    }

    public Account(int roll, String fullName, String email, String sdt, String address, String date, String username, String password) {
        this.roll = roll;
        this.fullName = fullName;
        this.email = email;
        this.sdt = sdt;
        this.address = address;
        this.date = date;
        this.username = username;
        this.password = password;
    }

    public int getRoll() {
        return roll;
    }

    public void setRoll(int roll) {
        this.roll = roll;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Account{" + "roll=" + roll + ", fullName=" + fullName + ", email=" + email + ", sdt=" + sdt + ", address=" + address + ", date=" + date + ", username=" + username + ", password=" + password + '}';
    }

    
    

    
}
