/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entities.Customer;
import Model.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "EditCustomerController", urlPatterns = {"/EditCustomerController"})

public class EditCustomerController extends HttpServlet {
    CustomerDAO dao = new CustomerDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Customer kh = dao.get(Integer.valueOf(id));
        request.setAttribute("user", kh);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/EditCustomer.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String adress = request.getParameter("adress");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String pass = request.getParameter("pwd");
        int id = Integer.parseInt(request.getParameter("id"));
        Customer kh = new Customer(id,name, adress, phone, username, pass);  
        dao.update(kh);
        response.sendRedirect(request.getContextPath() + "/CustomerControl");
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
