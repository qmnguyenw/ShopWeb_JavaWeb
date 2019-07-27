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
public class Manufacturer {
    private int hid;
    private String hnane , website;
    private int status;

    public Manufacturer() {
    }

    public Manufacturer(int hid, String hnane, String website, int status) {
        this.hid = hid;
        this.hnane = hnane;
        this.website = website;
        this.status = status;
    }

    public Manufacturer(String hnane, String website) {
        this.hnane = hnane;
        this.website = website;
    }
    
    public int getHid() {
        return hid;
    }

    public void setHid(int hid) {
        this.hid = hid;
    }

    public String getHnane() {
        return hnane;
    }

    public void setHnane(String hnane) {
        this.hnane = hnane;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }   
}