/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entities.Product;
import Helper.SendMail;
import Model.PagingProductDAO;
import java.io.IOException;
import static java.lang.System.out;
import java.util.ArrayList;
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
@WebServlet(urlPatterns = {"/ProductController"})
public class ProductController extends HttpServlet {

@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       try {
            PagingProductDAO db = new PagingProductDAO();
            String page = request.getParameter("page");
            if(page == null || page.equals(""))
                page="1";
            int pageindex = Integer.parseInt(page);
            int pagesize = 6;

            int totalRows = db.count();
            int totalpage = (totalRows+pagesize-1 )/pagesize;
            request.setAttribute("pageindex", pageindex);
            request.setAttribute("pagesize", pagesize);
            request.setAttribute("totalpage", totalpage);
            ArrayList<Product> pro = db.paging(pagesize, pageindex);
            request.setAttribute("pro", pro);
            RequestDispatcher rd = request.getRequestDispatcher("/HOME.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            response.getWriter().println(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
