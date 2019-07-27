<%@page import="java.sql.ResultSet"%>
<%@page import="Model.DBContext"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

    <head>
        <title>Connect to Phong Vu Digital</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            session.setAttribute("username", username);
            String mess = "";
            if (username != null) {
                String password = request.getParameter("pass");
                String sql = "select * from admin where username='" + username + "'and password = '" + password + "' and status =1";
                String sql2 = "select * from khachhang where username='" + username + "'and password = '" + password + "' and status =1";
                DBContext dbCon = new DBContext();
                ResultSet rs = dbCon.getData(sql);
                if (rs.next()) {
                    response.sendRedirect(request.getContextPath() + "/CustomerControl");
                } else {
                    ResultSet rs2 = dbCon.getData(sql2);
                    if (rs2.next()) {
                        response.sendRedirect(request.getContextPath() + "/ProductController");
                    }
                    mess = "Fail";
                }
            }
        %>

        <div class="limiter">
            <div class="container-login100" >
                <div class="wrap-login100 p-t-30 p-b-50">
                    <span class="login100-form-title p-b-41">
                        Login
                    </span>
                    <c:url value="/LoginController" var="urlLog"></c:url>
                    <form action="" method="post" class="login100-form validate-form p-b-33 p-t-5">
                        <div class="wrap-input100 validate-input" data-validate = "Enter username">
                            <input class="input100" type="text" name="username" placeholder="User name">
                            <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Enter password">
                            <input class="input100" type="password" name="pass" placeholder="Password">
                            <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                        </div>

                        <div class="container-login100-form-btn m-t-32">
                        <div class="g-recaptcha" data-sitekey="6LfRgawUAAAAAPgTq9pX4Cy95yoCQzrOMbGEjr_C"></div>
                            <button  type="submit" class="login100-form-btn">
                                Login
                            </button>
                        </div>    
                    </form>
                </div>
            </div>
        </div>
        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>
        <!--Check Captcha v3-->
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    </body>
</html>