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
public class OrderDetail {
    private String hid;
    private String sid;
    private int quantity;
    private int price;

    public OrderDetail() {
    }

    public OrderDetail(String hid, String sid, int quantity, int price) {
        this.hid = hid;
        this.sid = sid;
        this.quantity = quantity;
        this.price = price;
    }

    public String getHid() {
        return hid;
    }

    public void setHid(String hid) {
        this.hid = hid;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
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
     
}
