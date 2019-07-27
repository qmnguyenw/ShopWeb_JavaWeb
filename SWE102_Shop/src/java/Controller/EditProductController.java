/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entities.InfoProducts;
import Model.ProductDAO;
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
@WebServlet(name = "EditProductController", urlPatterns = {"/EditProductController"})
public class EditProductController extends HttpServlet {
    
    ProductDAO dao = new ProductDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        InfoProducts sp = dao.get(Integer.valueOf(id));
        request.setAttribute("sp", sp);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/EditProduct.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String picture = request.getParameter("picture");
        String description = request.getParameter("description");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int price = Integer.parseInt(request.getParameter("price"));
        String id = request.getParameter("id");
        InfoProducts sp = new InfoProducts(id, name, picture, description, quantity, price);
        dao.update(sp);
        response.sendRedirect(request.getContextPath() + "/ProductControllerAD");
    }
  
}
