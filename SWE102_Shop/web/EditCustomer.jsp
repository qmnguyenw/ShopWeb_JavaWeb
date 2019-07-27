<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>Hitech World </title>
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

        <!-- //top-header -->
        <!-- header-bot-->
        <div class="header-bot">
            <div class="header-bot_inner_wthreeinfo_header_mid">
                <!-- header-bot-->
                <div class="col-md-4 logo_agile">
                    <h1>
                        <a href="index.jsp">
                            <img src="images/luffy.png" alt=" " width="80" height="80"/>
                        </a>
                    </h1>
                </div>
                <!-- header-bot -->
                <div class="col-md-8 header">
                    <!-- header lists -->
                    <ul>

                        <li>
                            <a  href="Map.jsp">
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


        <!-- //shop locator (popup) -->
        <!-- signin Model -->
        <!-- Modal1 -->
        <div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body modal-body-sub_agile">
                        <div class="main-mailposi">
                            <span class="fa fa-envelope-o" aria-hidden="true"></span>
                        </div>
                        <div class="modal_body_left modal_body_left1">
                            <h3 class="agileinfo_sign">Sign In </h3>
                            <p>
                                Sign In now, Let's start Shopping. Don't have an account?
                                <a href="#" data-toggle="modal" data-target="#myModal2">
                                    Sign Up Now</a>
                            </p>
                            <form action="#" method="post">
                                <div class="styled-input agile-styled-input-top">
                                    <input type="text" placeholder="User Name" name="Name" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="password" placeholder="Password" name="password" required="">
                                </div>
                                <input type="submit" value="Sign In">
                            </form>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- //Modal content-->
            </div>
        </div>
        <!-- //Modal1 -->
        <!-- //signin Model -->
        <!-- signup Model -->
        <!-- Modal2 -->
        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body modal-body-sub_agile">
                        <div class="main-mailposi">
                            <span class="fa fa-envelope-o" aria-hidden="true"></span>
                        </div>
                        <div class="modal_body_left modal_body_left1">
                            <h3 class="agileinfo_sign">Sign Up</h3>
                            <p>
                                Come join the Grocery Shoppy! Let's set up your Account.
                            </p>
                            <form action="#" method="post">
                                <div class="styled-input agile-styled-input-top">
                                    <input type="text" placeholder="Name" name="Name" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="email" placeholder="E-mail" name="Email" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="password" placeholder="Password" name="password" id="password1" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="password" placeholder="Confirm Password" name="Confirm Password" id="password2" required="">
                                </div>
                                <input type="submit" value="Sign Up">
                            </form>
                            <p>
                                <a href="#">By clicking register, I agree to your terms</a>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- //Modal content-->
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
                        <h3 class="agileits-sear-head">Hello</h3>
                        <jsp:include page="menuAdmin.jsp"></jsp:include>
                        </div>
                        <!-- //discounts -->
                        <!-- reviews -->

                        <!-- //deals -->
                    </div>
                    <!-- //product left -->
                    <!-- product right -->
                    <div class="agileinfo-ads-display col-md-9">

                        <div class="wrapper">
                            <!-- first section (nuts) -->
                            <div class="product-sec1">
                                <h3 class="heading-tittle">ADMIN</h3>
                                <h2>Edit User</h2>
                                <hr />


                                <hr />


                            <c:url value="/EditCustomerController" var="addURL" />
                            <form action="${addURL}" method="post">

                                    <form class="form-horizontal" action="/action_page.php">
                                        <div class="form-group">
                                            <input type="hidden" name='id' value="${user.cid}">
                                            <label class="control-label col-sm-2" for="name">Name:</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="name" value="${user.cname}" name="name">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="adress">Address:</label>
                                            <div class="col-sm-10">          
                                                <input type="text" class="form-control" id="adress" value="${user.address}" name="adress">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="phone">Phone :</label>
                                            <div class="col-sm-10">          
                                                <input type="phone" class="form-control" id="phone" value="${user.phone}" name="phone">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="username">User name:</label>
                                            <div class="col-sm-10">          
                                                <input type="text" class="form-control" id="username" value="${user.username}" name="username">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="pwd">Password:</label>
                                            <div class="col-sm-10">          
                                                <input type="password" class="form-control" id="pwd" value="${user.password}" name="pwd">
                                            </div>
                                        </div>
                                        <div class="form-group">        
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button type="submit" class="btn btn-default">Update</button>
                                            </div>
                                        </div>
                                 
                                </form>










                                <div class="clearfix"></div>
                        </div>




                    </div>
                </div>
                <!-- //product right -->
            </div>
        </div>

        <footer>
            <div class="container">
                <!-- footer first section -->

                <!-- //footer first section -->
                <!-- footer second section -->
                <div class="w3l-grids-footer">
                    <div class="col-xs-4 offer-footer">
                        <div class="col-xs-4 icon-fot">
                            <span class="fa fa-map-marker" aria-hidden="true"></span>
                        </div>
                        <div class="col-xs-8 text-form-footer">
                            <h3>Track Your Order</h3>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-xs-4 offer-footer">
                        <div class="col-xs-4 icon-fot">
                            <span class="fa fa-refresh" aria-hidden="true"></span>
                        </div>
                        <div class="col-xs-8 text-form-footer">
                            <h3>Free & Easy Returns</h3>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-xs-4 offer-footer">
                        <div class="col-xs-4 icon-fot">
                            <span class="fa fa-times" aria-hidden="true"></span>
                        </div>
                        <div class="col-xs-8 text-form-footer">
                            <h3>Online cancellation </h3>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- //footer second section -->
                <!-- footer third section -->
                <div class="footer-info w3-agileits-info">
                    <!-- footer categories -->
                    <div class="col-sm-5 address-right">
                        <div class="col-xs-6 footer-grids">
                            <h3>Categories</h3>
                            <ul>
                                <li>
                                    <a href="product.html">Grocery</a>
                                </li>
                                <li>
                                    <a href="product.html">Fruits</a>
                                </li>
                                <li>
                                    <a href="product.html">Soft Drinks</a>
                                </li>
                                <li>
                                    <a href="product2.html">Dishwashers</a>
                                </li>
                                <li>
                                    <a href="product.html">Biscuits & Cookies</a>
                                </li>
                                <li>
                                    <a href="product2.html">Baby Diapers</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-xs-6 footer-grids agile-secomk">
                            <ul>
                                <li>
                                    <a href="product.html">Snacks & Beverages</a>
                                </li>
                                <li>
                                    <a href="product.html">Bread & Bakery</a>
                                </li>
                                <li>
                                    <a href="product.html">Sweets</a>
                                </li>
                                <li>
                                    <a href="product.html">Chocolates & Biscuits</a>
                                </li>
                                <li>
                                    <a href="product2.html">Personal Care</a>
                                </li>
                                <li>
                                    <a href="product.html">Dried Fruits & Nuts</a>
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- //footer categories -->
                    <!-- quick links -->
                    <div class="col-sm-5 address-right">
                        <div class="col-xs-6 footer-grids">
                            <h3>Quick Links</h3>
                            <ul>
                                <li>
                                    <a href="about.html">About Us</a>
                                </li>
                                <li>
                                    <a href="contact.html">Contact Us</a>
                                </li>
                                <li>
                                    <a href="help.html">Help</a>
                                </li>
                                <li>
                                    <a href="faqs.html">Faqs</a>
                                </li>
                                <li>
                                    <a href="terms.html">Terms of use</a>
                                </li>
                                <li>
                                    <a href="privacy.html">Privacy Policy</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-xs-6 footer-grids">
                            <h3>Get in Touch</h3>
                            <ul>
                                <li>
                                    <i class="fa fa-map-marker"></i> 123 Sebastian, USA.</li>
                                <li>
                                    <i class="fa fa-mobile"></i> 333 222 3333 </li>
                                <li>
                                    <i class="fa fa-phone"></i> +222 11 4444 </li>
                                <li>
                                    <i class="fa fa-envelope-o"></i>
                                    <a href="mailto:example@mail.com"> mail@example.com</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- //quick links -->
                    <!-- social icons -->
                    <div class="col-sm-2 footer-grids  w3l-socialmk">
                        <h3>Follow Us on</h3>
                        <div class="social">
                            <ul>
                                <li>
                                    <a class="icon fb" href="#">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                </li>
                                <li>
                                    <a class="icon tw" href="#">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a class="icon gp" href="#">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="agileits_app-devices">
                            <h5>Download the App</h5>
                            <a href="#">
                                <img src="images/1.png" alt="">
                            </a>
                            <a href="#">
                                <img src="images/2.png" alt="">
                            </a>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <!-- //social icons -->
                    <div class="clearfix"></div>
                </div>
                <!-- //footer third section -->
                <!-- footer fourth section (text) -->
                <div class="agile-sometext">


                    <!-- brands -->
                    <div class="sub-some">
                        <h5>Popular Brands</h5>
                        <ul>
                            <li>
                                <a href="product.html">Aashirvaad</a>
                            </li>
                            <li>
                                <a href="product.html">Amul</a>
                            </li>
                            <li>
                                <a href="product.html">Bingo</a>
                            </li>
                            <li>
                                <a href="product.html">Boost</a>
                            </li>
                            <li>
                                <a href="product.html">Durex</a>
                            </li>
                            <li>
                                <a href="product.html"> Maggi</a>
                            </li>
                            <li>
                                <a href="product.html">Glucon-D</a>
                            </li>
                            <li>
                                <a href="product.html">Horlicks</a>
                            </li>
                            <li>
                                <a href="product2.html">Head & Shoulders</a>
                            </li>
                            <li>
                                <a href="product2.html">Dove</a>
                            </li>
                            <li>
                                <a href="product2.html">Dettol</a>
                            </li>
                            <li>
                                <a href="product2.html">Dabur</a>
                            </li>
                            <li>
                                <a href="product2.html">Colgate</a>
                            </li>
                            <li>
                                <a href="product.html">Coca-Cola</a>
                            </li>
                            <li>
                                <a href="product2.html">Closeup</a>
                            </li>
                            <li>
                                <a href="product2.html"> Cinthol</a>
                            </li>
                            <li>
                                <a href="product.html">Cadbury</a>
                            </li>
                            <li>
                                <a href="product.html">Bru</a>
                            </li>
                            <li>
                                <a href="product.html">Bournvita</a>
                            </li>
                            <li>
                                <a href="product.html">Tang</a>
                            </li>
                            <li>
                                <a href="product.html">Pears</a>
                            </li>
                            <li>
                                <a href="product.html">Oreo</a>
                            </li>
                            <li>
                                <a href="product.html"> Taj Mahal</a>
                            </li>
                            <li>
                                <a href="product.html">Sprite</a>
                            </li>
                            <li>
                                <a href="product.html">Thums Up</a>
                            </li>
                            <li>
                                <a href="product2.html">Fair & Lovely</a>
                            </li>
                            <li>
                                <a href="product2.html">Lakme</a>
                            </li>
                            <li>
                                <a href="product.html">Tata</a>
                            </li>
                            <li>
                                <a href="product2.html">Sunfeast</a>
                            </li>
                            <li>
                                <a href="product2.html">Sunsilk</a>
                            </li>
                            <li>
                                <a href="product.html">Patanjali</a>
                            </li>
                            <li>
                                <a href="product.html">MTR</a>
                            </li>
                            <li>
                                <a href="product.html">Kissan</a>
                            </li>
                            <li>
                                <a href="product2.html"> Lipton</a>
                            </li>
                        </ul>
                    </div>
                    <!-- //brands -->
                    <!-- payment -->
                    <div class="sub-some child-momu">
                        <h5>Payment Method</h5>
                        <ul>
                            <li>
                                <img src="images/pay2.png" alt="">
                            </li>
                            <li>
                                <img src="images/pay5.png" alt="">
                            </li>
                            <li>
                                <img src="images/pay1.png" alt="">
                            </li>
                            <li>
                                <img src="images/pay4.png" alt="">
                            </li>
                            <li>
                                <img src="images/pay6.png" alt="">
                            </li>
                            <li>
                                <img src="images/pay3.png" alt="">
                            </li>
                            <li>
                                <img src="images/pay7.png" alt="">
                            </li>
                            <li>
                                <img src="images/pay8.png" alt="">
                            </li>
                            <li>
                                <img src="images/pay9.png" alt="">
                            </li>
                        </ul>
                    </div>
                    <!-- //payment -->
                </div>
                <!-- //footer fourth section (text) -->
            </div>
        </footer>
        <!-- //footer -->
        <!-- copyright -->
        <div class="copy-right">
            <div class="container">
                <p>© 2017 Grocery Shoppy. All rights reserved | Design by
                    <a href="http://w3layouts.com"> W3layouts.</a>
                </p>
            </div>
        </div>
        <!-- //copyright -->

        <!-- js-files -->
        <!-- jquery -->
        <script src="js/jquery-2.1.4.min.js"></script>
        <!-- //jquery -->

        <!-- popup modal (for signin & signup)-->
        <script src="js/jquery.magnific-popup.js"></script>
        <script>
            $(document).ready(function () {
                $('.popup-with-zoom-anim').magnificPopup({
                    type: 'inline',
                    fixedContentPos: false,
                    fixedBgPos: true,
                    overflowY: 'auto',
                    closeBtnInside: true,
                    preloader: false,
                    midClick: true,
                    removalDelay: 300,
                    mainClass: 'my-mfp-zoom-in'
                });

            });
        </script>
        <!-- Large modal -->
        <!-- <script>
                $('#').modal('show');
        </script> -->
        <!-- //popup modal (for signin & signup)-->

        <!-- cart-js -->
        <script src="js/minicart.js"></script>
        <script>
            paypalm.minicartk.render(); //use only unique class names other than paypalm.minicartk.Also Replace same class name in css and minicart.min.js

            paypalm.minicartk.cart.on('checkout', function (evt) {
                var items = this.items(),
                        len = items.length,
                        total = 0,
                        i;

                // Count the number of each item in the cart
                for (i = 0; i < len; i++) {
                    total += items[i].get('quantity');
                }

                if (total < 3) {
                    alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
                    evt.preventDefault();
                }
            });
        </script>
        <!-- //cart-js -->

        <!-- price range (top products) -->
        <script src="js/jquery-ui.js"></script>
        <script>
            //<![CDATA[ 
            $(window).load(function () {
                $("#slider-range").slider({
                    range: true,
                    min: 0,
                    max: 9000,
                    values: [50, 6000],
                    slide: function (event, ui) {
                        $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                    }
                });
                $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

            }); //]]>
        </script>
        <!-- //price range (top products) -->

        <!-- flexisel (for special offers) -->
        <script src="js/jquery.flexisel.js"></script>
        <script>
            $(window).load(function () {
                $("#flexiselDemo1").flexisel({
                    visibleItems: 3,
                    animationSpeed: 1000,
                    autoPlay: true,
                    autoPlaySpeed: 3000,
                    pauseOnHover: true,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint: 480,
                            visibleItems: 1
                        },
                        landscape: {
                            changePoint: 640,
                            visibleItems: 2
                        },
                        tablet: {
                            changePoint: 768,
                            visibleItems: 2
                        }
                    }
                });

            });
        </script>
        <!-- //flexisel (for special offers) -->

        <!-- password-script -->
        <script>
            window.onload = function () {
                document.getElementById("password1").onchange = validatePassword;
                document.getElementById("password2").onchange = validatePassword;
            }

            function validatePassword() {
                var pass2 = document.getElementById("password2").value;
                var pass1 = document.getElementById("password1").value;
                if (pass1 != pass2)
                    document.getElementById("password2").setCustomValidity("Passwords Don't Match");
                else
                    document.getElementById("password2").setCustomValidity('');
                //empty string means no validation error
            }
        </script>
        <!-- //password-script -->

        <!-- smoothscroll -->
        <script src="js/SmoothScroll.min.js"></script>
        <!-- //smoothscroll -->

        <!-- start-smooth-scrolling -->
        <script src="js/move-top.js"></script>
        <script src="js/easing.js"></script>
        <script>
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();

                    $('html,body').animate({
                        scrollTop: $(this.hash).offset().top
                    }, 1000);
                });
            });
        </script>
        <!-- //end-smooth-scrolling -->

        <!-- smooth-scrolling-of-move-up -->
        <script>
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */
                $().UItoTop({
                    easingType: 'easeOutQuart'
                });

            });
        </script>
        <!-- //smooth-scrolling-of-move-up -->

        <!-- for bootstrap working -->
        <script src="js/bootstrap.js"></script>
        <!-- //for bootstrap working -->
        <!-- //js-files -->


    </body>

</html>
