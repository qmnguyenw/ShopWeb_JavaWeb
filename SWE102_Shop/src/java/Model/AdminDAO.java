/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entities.Admin;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.DBContext;
/**
 *
 * @author admin
 */
public class AdminDAO extends DBContext{
    public boolean login(String userName, String pass) {
        String sql = "select * from admin where username=? and password=? where status = 1";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setString(1, userName);
            pre.setString(2, pass);
            ResultSet rs = pre.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public Admin getByUserName(String username) {
        String sql = "SELECT * FROM admin WHERE username = ?";
		DBContext conn = new DBContext();
		try {
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, username);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				Admin admin = new Admin();		
				admin.setUsername(rs.getString("username"));
				admin.setPassword(rs.getString("password"));
				admin.setStatus(rs.getInt("status"));

				return admin;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
    }
}
