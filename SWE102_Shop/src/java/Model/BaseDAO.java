/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public abstract class BaseDAO<T> {
    Connection connection;
    public BaseDAO()
    {
        try {
            String user = "sa";
            String pass = "123456";
            String url = "jdbc:sqlserver://DESKTOP-5GL5QMJ\\SQLEXPRESS:1433;databaseName=BanHang";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public abstract int count();
    public abstract ArrayList<T> getAll();
    public abstract T get(int id);
    public abstract void insert(T model);
}
