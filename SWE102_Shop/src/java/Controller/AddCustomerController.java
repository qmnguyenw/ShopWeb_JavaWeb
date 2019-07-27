/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entities.Customer;
import Model.CustomerDAO;
import Model.DBContext;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
@WebServlet(name = "AddCustomerController", urlPatterns = {"/AddCustomerController"})
public class AddCustomerController extends HttpServlet {
    DBContext dbconn = new DBContext();
    CustomerDAO dao = new CustomerDAO();
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("addCustomer.jsp");
        dispatcher.forward(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String name = request.getParameter("name");
        String adress = request.getParameter("adress");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String password = request.getParameter("pwd");
        Customer cus = new Customer(name, adress, phone, username, password);
        dao.addKhachHang(cus);
        response.sendRedirect(request.getContextPath() + "/CustomerControl");  
    }
}
