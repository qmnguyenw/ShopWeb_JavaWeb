<%-- 
    Document   : menuAdmin
    Created on : July 7, 2019, 3:24:25 AM
    Author     : admin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<ul class="list-group">
    <c:url value="/CustomerControl" var="userList" />
    <li class="list-group-item"><a href="${userList}">Customer Manager</a></li>
    <c:url value="/ProductControllerAD" var="productList" />
    <li class="list-group-item"><a href="${productList}">Product Manager</a></li>
    <c:url value="/LogOutController" var="Out"></c:url>
    <li class="list-group-item"><a href="${Out}">Log Out</a></li>
</ul>
