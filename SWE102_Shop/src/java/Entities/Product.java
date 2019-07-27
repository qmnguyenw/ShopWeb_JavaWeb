/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
/**
 *
 * @author admin
 */

public class Product implements Comparable<Product>, Serializable {
    
    private int sid;
    private String sname;
    private int quantity;
    private double price;
    private String picture;
    private String description;
    private int hid;
    private int status;

    public Product() {
        super();
    }

    public Product(int sid, String sname, int quantity, double price, String picture, String description, int hid, int status) {
        this.sid = sid;
        this.sname = sname;
        this.quantity = quantity;
        this.price = price;
        this.picture = picture;
        this.description = description;
        this.hid = hid;
        this.status = status;
    }

    public Product(String sname, int quantity, double price, String picture, String description, int status, int hid) {
        this.sname = sname;
        this.quantity = quantity;
        this.price = price;
        this.picture = picture;
        this.description = description;
        this.status = status;
        this.hid = hid;
    }

    public Product(int sid, String sname, int quantity, double price, String picture, String description, int hid) {
        this.sid = sid;
        this.sname = sname;
        this.quantity = quantity;
        this.price = price;
        this.picture = picture;
        this.description = description;
        this.hid = hid;
    }

    public Product(String sname, int quantity, double price, String picture, String description, int status) {
        this.sname = sname;
        this.quantity = quantity;
        this.price = price;
        this.picture = picture;
        this.description = description;
        this.status = status;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
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

    public int getHid() {
        return hid;
    }

    public void setHid(int hid) {
        this.hid = hid;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    


    @Override
    public String toString() {
        return "Product [" + sid + "  |  " + sname + "  |  " + quantity + "  |  " + price + "  |  " + picture + "  |  " + description + "  |  " + hid + "  |  " + status +  ']';
    }

    @Override
    public int compareTo(Product t) {
        if (this.getPrice() > t.getPrice()) {
            return 1;
        } else if (this.getPrice() < t.getPrice()) {
            return -1;
        } else {
            return 0;
        }
    }
}