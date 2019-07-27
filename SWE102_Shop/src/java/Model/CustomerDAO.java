/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import Entities.Manufacturer;
import Entities.Customer;
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
public class CustomerDAO {
    public List<Customer> select() throws Exception {
        List<Customer> khachhang = new ArrayList<>();
        Connection dbCon = new DBContext().getConection();
        String sql = "select * from KhachHang";
        PreparedStatement pre = dbCon.prepareStatement(sql);
        ResultSet rs = pre.executeQuery();
        while (rs.next()) {
            int cid = rs.getInt("cid");
            String cname = rs.getString("cname");
            String address = rs.getString("address");
            String phone = rs.getString("phone");
            String username = rs.getString("username");
            String password = rs.getString("password");
            int status = rs.getInt("status");
            khachhang.add(new Customer(cid, cname, address, phone, username, password, status));
        }
        pre.close();
        dbCon.close();
        return khachhang;
    }
    
    public void addKhachHang(Customer obj) {
        Connection dbCon = new DBContext().getConection();
        String sql = "Insert into KhachHang(cname,address,phone,username,password)"
                + " values(?,?,?,?,?)";
        try {
            PreparedStatement pre = dbCon.prepareStatement(sql);
            pre.setString(1, obj.getCname());
            pre.setString(2, obj.getAddress());
            pre.setString(3, obj.getPhone());
            pre.setString(4, obj.getUsername());
            pre.setString(5, obj.getPassword());
            pre.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public Customer get(int id){
        String sql = "select * from khachhang where cid = " + id;
        Connection dbCon = new DBContext().getConection();
        try {
            Statement st = dbCon.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                Customer user = new Customer();
                user.setCid(rs.getInt("cid"));
                user.setCname(rs.getString("cname"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setAddress(rs.getString("address"));
                user.setPhone(rs.getString("phone"));
                user.setStatus(rs.getInt("status"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
     public Customer getBYUSER(String username){
        String sql = "select * from khachhang where username = ?";
        Connection dbCon = new DBContext().getConection();
        try {
            PreparedStatement st = dbCon.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Customer user = new Customer();
                user.setCid(rs.getInt("cid"));
                user.setCname(rs.getString("cname"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setAddress(rs.getString("address"));
                user.setPhone(rs.getString("phone"));
                user.setStatus(rs.getInt("status"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public void update(Customer KhachHang) {
        Connection dbcon = new DBContext().getConection();
        String sql = "update KhachHang set cname=?,address=?,phone=?,username=?,password=? where cid=?";
        PreparedStatement pre;
        try {
            pre = dbcon.prepareStatement(sql);
            pre.setString(1, KhachHang.getCname());
            pre.setString(2, KhachHang.getAddress());
            pre.setString(3, KhachHang.getPhone());
            pre.setString(4, KhachHang.getUsername());
            pre.setString(5, KhachHang.getPassword());
            pre.setInt(6, KhachHang.getCid());
            pre.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void delete(int id) {
        String sql = "DELETE FROM KhachHang WHERE cid = ?";
        Connection dbcon = new DBContext().getConection();
            try {
                PreparedStatement st = dbcon.prepareStatement(sql);
                st.setInt(1, id);
                st.executeUpdate();
            } catch (SQLException e) {
                    e.printStackTrace();
            }
    }
       
    public Customer login(String username, String password) {
        String query = "SELECT * FROM KhachHang WHERE username = ?";
        try {
             Connection dbcon = new DBContext().getConection();
           PreparedStatement ps = dbcon.prepareStatement(query);
            ps.setString(1, username);
           ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Customer account = new Customer(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getInt(7)
                );
                return account;
            }
        } catch (SQLException e) {
            System.out.println(e);
        } 
        return null;
    }
      
    public static void main(String[] args) {
        CustomerDAO dao= new CustomerDAO();
        Customer khachHang = dao.getBYUSER("hienbn");
         System.out.println(khachHang.toString());
    }
}
