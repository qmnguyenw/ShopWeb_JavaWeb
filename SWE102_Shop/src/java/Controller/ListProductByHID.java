/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entities.InfoProducts;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.ProductDAO;

/**
 *
 * @author Rob Lucci
 */
@WebServlet(name = "ListProductByHID", urlPatterns = {"/ListProductByHID"})
public class ListProductByHID extends HttpServlet {

    ProductDAO dao = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        List<InfoProducts> sp = null;
        try {
            sp = dao.selectID(Integer.valueOf(id));
        } catch (Exception ex) {
            Logger.getLogger(ListProductByHID.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("spp", sp);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/ListProductByID.jsp");
        dispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {  
    }
}
