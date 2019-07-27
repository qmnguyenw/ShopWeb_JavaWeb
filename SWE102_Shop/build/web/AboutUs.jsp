<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>Phong VU Digital</title>
        <link rel="icon" href="http://icons.iconarchive.com/icons/crountch/one-piece-jolly-roger/256/Luffys-flag-2-icon.png"  
              <!--/tags -->
              <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Grocery Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <!--//tags -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet">
        <!--pop-up-box-->
        <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
        <!--//pop-up-box-->
        <!-- price range -->
        <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
        <!-- fonts -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    </head>

    <body>
        <!-- top-header -->
        <div class="header-most-top">
            <p></p>
        </div>
        <!-- //top-header -->
        <!-- header-bot-->
        <div class="header-bot">
            <div class="header-bot_inner_wthreeinfo_header_mid">
                <!-- header-bot-->
                <div class="col-md-4 logo_agile">
                    <h1>
                        <c:url value="/ProductController" var="list"></c:url>
                        <a href="${list}">
                            <span>P</span>hong
                            <span>V</span>u Digital
                            <img src="images/luffy.png" alt=" " width="80" height="80"/>
                        </a>
                    </h1>
                </div>
                <!-- header-bot -->
                <div class="col-md-8 header">
                    <!-- header lists -->
                    <ul>

                        <li>
                            <a class="play-icon popup-with-zoom-anim" href="#small-dialog1">
                                <span class="fa fa-map-marker" aria-hidden="true"></span> Shop Locator</a>
                        </li> 
                        <li>
                            <span class="fa fa-phone" aria-hidden="true"></span> 001 234 5678
                        </li>
                        <li>
                            <a href="AboutUs.jsp" data-toggle="" data-target="">
                                <span class="fa fa-unlock-alt" aria-hidden="true"></span> About us </a>
                        </li>
                        <c:if test="${sessionScope.username == null}">
                            <li>
                                <a href="Login.jsp" data-toggle="" data-target="Login.jsp">
                                    <span class="fa fa-unlock-alt" aria-hidden="true"></span> Sign In </a>
                            </li>
                            <c:url value="/SignUpController" var="SignUp"></c:url>
                                <li>
                                    <a href="${SignUp}" data-toggle="modal" data-target="${SignUp}">
                                    <span class="fa fa-pencil-square-o" aria-hidden="true"></span> Sign Up </a> 
                            </li>  
                        </c:if>
                        <c:if test="${sessionScope.username != null}">
                            <li>
                                <div class="dropdown">
                                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                        ${sessionScope.username}
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <c:url value="/LogOutController" var="Out"></c:url>
                                            <a class="dropdown-item" href="#">    Information</a><br>
                                            <div class="dropdown-divider"></div><br>
                                            <a class="dropdown-item" href="${Out}">     Log Out</a><br>

                                    </div>
                                </div>
                            </li>
                        </c:if>


                    </ul>

                    <!-- //header lists -->
                    <!-- search -->
                    <div class="agileits_search">
                        <form action="#" method="post">
                            <input name="Search" type="search" placeholder="How can we help you today?" required="">
                            <button type="submit" class="btn btn-default" aria-label="Left Align">
                                <span class="fa fa-search" aria-hidden="true"> </span>
                            </button>
                        </form>
                    </div>
                    <!-- //search -->
                    <!-- cart details -->
                    <div class="top_nav_right">
                        <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                            <form action="#" method="post" class="last">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="display" value="1">
                                <button class="w3view-cart" type="submit" name="submit" value="">
                                    <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                    <!-- //cart details -->
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <!-- //Modal2 -->
        <!-- //signup Model -->
        <!-- //header-bot -->
        <!-- navigation -->

        <!-- top Products -->
        <div class="ads-grid">
            <div class="container">

                <div class="side-bar col-md-3">
                    <!-- discounts -->
                    <div class="left-side">
                        <img src="abME.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"> 
                    </div>
                </div>
                <div class="agileinfo-ads-display col-md-9">
                    <div class="wrapper">
                        <!-- first section (nuts) -->
                        <h1 class="mb-0">MR.
                            <span><!--class="text-primary"--> GUEST</span>
                        </h1>
                        <p class="text-danger"> - GUEST</p><br>
                        <p class="text-danger"> Contact : <span class="text-success">GUEST@fpt.edu.vn</span> - <span class="text-primary">GUEST@gmail.com</span> </h1>
                        <p class="text-danger"> Phone : <span class="text-success">BLANK</span>
                        <p class="text-danger"> Address : <span class="text-success">BLANK</span>
                       
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>