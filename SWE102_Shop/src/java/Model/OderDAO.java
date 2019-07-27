/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entities.Order;
import Entities.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class OderDAO {
    public String addOrder(Order obj) {
        String query = "INSERT INTO HoaDon(hid,cid,Rcname,Raddress,Rphone,total) values(?,?,?,?,?,?)";
        try {
            Connection dbcon = new DBContext().getConection();
            PreparedStatement ps = dbcon.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, obj.getHid());
            ps.setInt(2, obj.getCid());
            ps.setString(3, obj.getRcname());
            ps.setString(4, obj.getRaddress());
            ps.setString(5, obj.getRphone());
            ps.setDouble(6, obj.getTotal()); 
            int check = ps.executeUpdate();
            if(check > 0){
                ResultSet rs = ps.executeQuery();
                return rs.getString(1);
            }      
        } catch (SQLException e) {
            e.printStackTrace();
        }
       return obj.getHid();
    }
     
     public ArrayList<Order> getAll() {
        ArrayList<Order> listOrder = new ArrayList<Order>();
        String query = "SELECT * FROM HoaDon";
        try {
            Connection dbcon = new DBContext().getConection();
            PreparedStatement ps = dbcon.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order(
                    rs.getString(1), 
                    new Date(rs.getTimestamp(2).getTime()), 
                    rs.getInt(3), 
                    rs.getString(4), 
                    rs.getString(5), 
                    rs.getString(6), 
                    rs.getInt(7), 
                    rs.getInt(8)
                );
                listOrder.add(order);
            }
            return listOrder;
        } catch (SQLException e) {
            System.out.println(e);
        } 
        return null;
    }
      
    public void update(Order order) {
        Connection dbcon = new DBContext().getConection();
        String sql = "update HoaDon set status=? where hid=?";
        PreparedStatement pre;
        try {
            pre = dbcon.prepareStatement(sql); 
            pre.setInt(1, order.getStatus());
            pre.setString(2, order.getHid());
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        OderDAO om = new OderDAO();
        Order od = new Order("ddewfwef", 4, 4);
        String a = om.addOrder(od);
        System.out.println(a);
    }
}
