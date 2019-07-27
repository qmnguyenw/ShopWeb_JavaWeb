/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

/**
 *
 * @author admin
 */
public class InfoProducts {
    private String sid , sname, picture,description;
    private int quantity,price,status,hid;

    public InfoProducts() {
    }

    public InfoProducts(String sid, String sname, String picture, String description, int quantity, int price, int status, int hid) {
        this.sid = sid;
        this.sname = sname;
        this.picture = picture;
        this.description = description;
        this.quantity = quantity;
        this.price = price;
        this.status = status;
        this.hid = hid;
    }

    public InfoProducts(String sid, String sname, String picture, String description) {
        this.sid = sid;
        this.sname = sname;
        this.picture = picture;
        this.description = description;
    }

    public InfoProducts(String sid, String sname, String picture, String description, int hid) {
        this.sid = sid;
        this.sname = sname;
        this.picture = picture;
        this.description = description;
        this.hid = hid;
    }

    public InfoProducts(String sname, String picture, String description, int quantity, int price) {
        this.sname = sname;
        this.picture = picture;
        this.description = description;
        this.quantity = quantity;
        this.price = price;
    }

    public InfoProducts(String sid, String sname, String picture, String description, int quantity, int price) {
        this.sid = sid;
        this.sname = sname;
        this.picture = picture;
        this.description = description;
        this.quantity = quantity;
        this.price = price;
    }
    
    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getHid() {
        return hid;
    }

    public void setHid(int hid) {
        this.hid = hid;
    }  
}