/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entities.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class PagingProductDAO extends BaseDAO<Product>{

    public ArrayList<Product> paging(int pagesize, int pageindex){
        ArrayList<Product> pro = new ArrayList<>();
        Connection dbCon = new DBContext().getConection();
        String sql = "SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY price ASC) as rownum, *  FROM SanPham) as t WHERE rownum >= (?-1)* ? + 1 AND rownum <= ?*?";
        try {
            PreparedStatement statement = dbCon.prepareStatement(sql);
            statement.setInt(1, pageindex);
            statement.setInt(2, pagesize);
            statement.setInt(3, pagesize);
            statement.setInt(4, pageindex);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Product h = new Product();
                h.setHid(rs.getInt("hid"));
                h.setSname(rs.getString("sname"));
                h.setQuantity(rs.getInt("quantity"));
                h.setPrice(rs.getDouble("price"));
                h.setPicture(rs.getString("picture"));
                h.setDescription(rs.getString("description"));
                h.setSid(rs.getInt("sid"));
                h.setStatus(rs.getInt("status"));
                pro.add(h);
            }
        } catch (SQLException ex){
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pro;
    }
    
    @Override
    public int count() {
        String sql = "SELECT COUNT(*) as TotalRows FROM SanPham";
        Connection dbCon = new DBContext().getConection();
        PreparedStatement statement;
        try {
            statement = dbCon.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if(rs.next())
            {
                return rs.getInt("TotalRows");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    @Override
    public ArrayList<Product> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Product get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void insert(Product model) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
