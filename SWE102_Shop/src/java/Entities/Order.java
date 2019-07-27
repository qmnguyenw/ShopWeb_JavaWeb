/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.util.Date;

/**
 *
 * @author admin
 */
public class Order {
   private String hid;
   private Date date;
   private int cid;
   private String rcname;
   private String raddress;
   private String rphone;
   private double total;
   private int status;

    public Order(String hid, Date date, int cid, String rcname, String raddress, String rphone, double total, int status) {
        this.hid = hid;
        this.date = date;
        this.cid = cid;
        this.rcname = rcname;
        this.raddress = raddress;
        this.rphone = rphone;
        this.total = total;
        this.status = status;
    }

    public Order(int cid, String rcname, String raddress, String rphone, double total) {
        this.cid = cid;
        this.rcname = rcname;
        this.raddress = raddress;
        this.rphone = rphone;
        this.total = total;
    }

    public Order(String hid, int cid, String rcname, String raddress, String rphone, double total) {
        this.hid = hid;
        this.cid = cid;
        this.rcname = rcname;
        this.raddress = raddress;
        this.rphone = rphone;
        this.total = total;
    }

    public Order(String hid, int status) {
        this.hid = hid;
        this.status = status;
    }
    
    public Order(String hid,int cid, double total) {
        this.hid = hid;
        this.cid = cid;
        this.total = total;
    }

    public Order(int cid, double total) {
        this.cid = cid;
        this.total = total;
    }

    public String getHid() {
        return hid;
    }

    public void setHid(String hid) {
        this.hid = hid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getRcname() {
        return rcname;
    }

    public void setRcname(String rcname) {
        this.rcname = rcname;
    }

    public String getRaddress() {
        return raddress;
    }

    public void setRaddress(String raddress) {
        this.raddress = raddress;
    }

    public String getRphone() {
        return rphone;
    }

    public void setRphone(String rphone) {
        this.rphone = rphone;
    }

    public double getTotal() {
        return total;
    }

    public void setMoney(double money) {
        this.total = money;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" + "hid=" + hid + ", date=" + date + ", cid=" + cid + ", rcname=" + rcname + ", raddress=" + raddress + ", rphone=" + rphone + ", total=" + total + ", status=" + status + '}';
    }     
}