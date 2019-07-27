<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>Sign Up</title>
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
        <!-- header-bot-->
        <div class="header-bot">
            <div class="header-bot_inner_wthreeinfo_header_mid">
                <!-- header-bot-->
                <div class="col-md-4 logo_agile">
                    <h1>
                         <c:url value="/ProductController" var="list"></c:url>
                        <a href="${list}">
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
                      
                            <li>
                                <a href="Login.jsp" data-toggle="" data-target="Login.jsp">
                                    <span class="fa fa-unlock-alt" aria-hidden="true"></span> Sign In </a>
                            </li>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal2">
                                    <span class="fa fa-pencil-square-o" aria-hidden="true"></span> Sign Up </a> 
                            </li>  
                       
                  
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


        
            <div class="container">

                <div class="side-bar col-md-3">



                    <!-- discounts -->
               
                </div>
                <!-- //product left -->
                <!-- product right -->
                <div class="agileinfo-ads-display col-md-9">
                    <div class="wrapper">
                        <!-- first section (nuts) -->
                        <div class="product-sec1">
                            <h3 class="heading-tittle"></h3>

                            <div class="modal-dialog">
                <!-- Modal content-->
               
                   
                    <div class="modal-body modal-body-sub_agile">
                        <div class="main-mailposi">
                            <span class="fa fa-envelope-o" aria-hidden="true"></span>
                        </div>
                        <div class="modal_body_left modal_body_left1">
                            <h3 class="agileinfo_sign">Sign Up</h3>
                            <p>
                                Come join the Computer Shop! Let's set up your Account.
                            </p>
                            <c:url value="/SignUpController" var="x"></c:url>
                             <form action="${x}" method="post">
                                <div class="styled-input agile-styled-input-top">
                                    <input type="text" placeholder="Name" name="Name" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="text" placeholder="Address" name="Address" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="text" placeholder="Phone" name="Phone" required="">
                                </div>
                                 <div class="styled-input">
                                    <input type="text" placeholder="Username" name="Username" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="password" placeholder="Password" name="password" id="password1" required="">
                                </div>
                                <div class="styled-input">
                                    <input type="password" placeholder="Confirm Password" name="Confirm Password" id="password2" required="">
                                </div>
                                <input type="submit" value="Sign Up">
                            </form> 
                        </div>
                    </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <!-- //product right -->
            </div>
        </div>
        <!-- //top products -->

        <!-- newsletter -->
        <div class="footer-top">
            <div class="container-fluid">
                <div class="col-xs-8 agile-leftmk">
                    <h2>Get your Computer delivered from local stores</h2>
                    <p>Free Delivery on your first order!</p>
                    <form action="#" method="post">
                        <input type="email" placeholder="E-mail" name="email" required="">
                        <input type="submit" value="Subscribe">
                    </form>
                    <div class="newsform-w3l">
                        <span class="fa fa-envelope-o" aria-hidden="true"></span>
                    </div>
                </div>
                <div class="col-xs-4 w3l-rightmk">
                    <img src="images/tab3.png" alt=" ">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
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