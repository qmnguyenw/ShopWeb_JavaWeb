/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import Entities.Product;
import Entities.InfoProducts;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author admin
 */
public class ProductDAO {
    public List<InfoProducts> select() throws Exception {
        List<InfoProducts> sp = new ArrayList<>();
        Connection dbCon = new DBContext().getConection();
        String sql = "select * from SanPham";
        PreparedStatement pre = dbCon.prepareStatement(sql);
        ResultSet rs = pre.executeQuery();
        while (rs.next()) {
            String id = rs.getString("sid");
            String name = rs.getString("sname");
            int quantity = rs.getInt("quantity");
            int price = rs.getInt("price");
            String picture = rs.getString("picture");
            String description = rs.getString("description");
            int status = rs.getInt("status");
            int hid = rs.getInt("hid");
            sp.add(new InfoProducts(id, name, picture, description, quantity, price, status, hid));

        }
        pre.close();
        dbCon.close();
        return sp;
    }
    public List<InfoProducts> selectID(int iid) throws Exception {
        List<InfoProducts> sp = new ArrayList<>();
        Connection dbCon = new DBContext().getConection();
        String sql = "select * from SanPham where hid = "+iid;
        PreparedStatement pre = dbCon.prepareStatement(sql);
        ResultSet rs = pre.executeQuery();
        while (rs.next()) {
            String id = rs.getString("sid");
            String name = rs.getString("sname");
            int quantity = rs.getInt("quantity");
            int price = rs.getInt("price");
            String picture = rs.getString("picture");
            String description = rs.getString("description");
            int status = rs.getInt("status");
            int hid = rs.getInt("hid");

            sp.add(new InfoProducts(id, name, picture, description, quantity, price, status, hid));

        }
        pre.close();
        dbCon.close();
        return sp;
    }
  
    public void addSanPham(InfoProducts obj) {
        Connection dbCon = new DBContext().getConection();
        String sql = "Insert into SanPham(sid,sname,picture,description,quantity,price)" + "values(?,?,?,?,?,?)";
        try {
            PreparedStatement pre = dbCon.prepareStatement(sql);
            pre.setString(1, obj.getSid());
            pre.setString(2, obj.getSname());
            pre.setString(3, obj.getPicture());
            pre.setString(4, obj.getDescription());
            pre.setInt(5, obj.getQuantity());
            pre.setInt(6, obj.getPrice());
            pre.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    public InfoProducts getHID(int id){
        String sql = "select * from sanpham where hid = " + id;
        Connection dbCon = new DBContext().getConection();
        try {
            Statement st = dbCon.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                InfoProducts sp = new InfoProducts();
                sp.setSname(rs.getString("sname"));
                sp.setPicture(rs.getString("picture"));
                sp.setDescription(rs.getString("description"));
                sp.setQuantity(rs.getInt("quantity"));
                sp.setPrice(rs.getInt("price"));
                return sp;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public InfoProducts get(int id){
        String sql = "select * from sanpham where sid = " + id;
        Connection dbCon = new DBContext().getConection();
        try {
            Statement st = dbCon.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                InfoProducts sp = new InfoProducts();
                sp.setSname(rs.getString("sname"));
                sp.setPicture(rs.getString("picture"));
                sp.setDescription(rs.getString("description"));
                sp.setQuantity(rs.getInt("quantity"));
                sp.setPrice(rs.getInt("price"));		
                return sp;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
     
    public InfoProducts getBYID(String id){
        String sql = "select * from sanpham where sid = " + id;
        Connection dbCon = new DBContext().getConection();
        try {
          
            Statement st = dbCon.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                InfoProducts sp = new InfoProducts();
                sp.setSname(rs.getString("sname"));
                sp.setPicture(rs.getString("picture"));
                sp.setDescription(rs.getString("description"));
                sp.setQuantity(rs.getInt("quantity"));
                sp.setPrice(rs.getInt("price"));
                return sp;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public void update(InfoProducts sanpham) {
        Connection dbcon = new DBContext().getConection();
        String sql = "update sanpham set sname=?,picture=?,description=?,quantity=?,price=? where sid=?";
        PreparedStatement pre;
        try {
            pre = dbcon.prepareStatement(sql);
            pre.setString(1, sanpham.getSname());
            pre.setString(2, sanpham.getPicture());
            pre.setString(3, sanpham.getDescription());
            pre.setInt(4, sanpham.getQuantity());
            pre.setInt(5, sanpham.getPrice());
            pre.setString(6, sanpham.getSid());
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
      
    public void delete(String id) {
        String sql = "DELETE FROM sanpham WHERE sid = ?";
        Connection dbcon = new DBContext().getConection();
        try {
            PreparedStatement st = dbcon.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public Product getOne(int sid) {
        String query = "SELECT * FROM SanPham WHERE sid = " + sid;
        try {
            Connection dbcon = new DBContext().getConection();
            PreparedStatement ps = dbcon.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Product newProduct = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                );
                return newProduct;
            }
            return null;
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
        }
        return null;
    }
}