/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.sql.Date;

/**
 *
 * @author admin
 */
public class Bill {
    private String hid;
    private Date date;
    private int cid;
    private String Rcname;
    private String Raddress;
    private String Rphone;
    private int money;
    private int status; 

    public Bill() {
    }

    public Bill(String hid, Date date, int cid, String Rcname, String Raddress, String Rphone, int money, int status) {
        this.hid = hid;
        this.date = date;
        this.cid = cid;
        this.Rcname = Rcname;
        this.Raddress = Raddress;
        this.Rphone = Rphone;
        this.money = money;
        this.status = status;
    }

    public String getHid() {
        return hid;
    }

    public void setHid(String hid) {
        this.hid = hid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getRcname() {
        return Rcname;
    }

    public void setRcname(String Rcname) {
        this.Rcname = Rcname;
    }

    public String getRaddress() {
        return Raddress;
    }

    public void setRaddress(String Raddress) {
        this.Raddress = Raddress;
    }

    public String getRphone() {
        return Rphone;
    }

    public void setRphone(String Rphone) {
        this.Rphone = Rphone;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
    
}
