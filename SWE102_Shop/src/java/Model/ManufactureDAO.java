/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entities.Manufacturer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class ManufactureDAO {
    public List<Manufacturer> select() throws Exception{
        List<Manufacturer> hsx = new ArrayList<>();
        Connection dbCon = new DBContext().getConection();
        String sql = "select * from HangSanXuat";
        PreparedStatement pre = dbCon.prepareStatement(sql);
        ResultSet rs = pre.executeQuery();
        while(rs.next()){
            int hid = rs.getInt("hid");
            String hname = rs.getString("hname");
            String website = rs.getString("website");
            int status = rs.getInt("status");
            hsx.add(new Manufacturer(hid, hname, website, status));
            
        }
        pre.close();
        dbCon.close();
        return hsx;
    } 
}
