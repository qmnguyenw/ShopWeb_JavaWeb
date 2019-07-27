<%-- 
    Document   : testProduct
    Created on : Jul 23, 2019, 10:06:23 PM
    Author     : Quang Nguyen
--%>

<%@page import="Helper.HtmlHelper"%>
<%@page import="Entities.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<Product> pro = (ArrayList<Product>) request.getAttribute("pro");
            Integer pageindex = (Integer) request.getAttribute("pageindex");
            Integer totalpage = (Integer) request.getAttribute("totalpage");
        %>
        
        <form>
            
            <table border="1">
                <%for (Product h : pro) {
                %>
                <tr>
                    <td><%=h.getPicture() %></td> 
                    <td><%=h.getSname() %></td>   
                </tr>
                <%}%>
            </table>
                <ul class="clearfix pagination">
                    <li class="paging-item">
                        <%=HtmlHelper.pager(pageindex, 3, totalpage)%>
                    </li>
                </ul>
        </form>
    </body>
</html>
