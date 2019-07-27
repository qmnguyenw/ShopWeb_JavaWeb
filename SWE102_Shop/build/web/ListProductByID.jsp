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
                        <c:url value="/ProductController" var="list"></c:url>
                        <a href="${list}">
                            <span>P</span>hong
                            <span>V</span>u 
                            <span>D</span>igital
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
                            <a href="" data-toggle="" data-target="">
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
                    <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                            
                           
                               
                            <a href="Cart.jsp">
                                <button class="w3view-cart" type="submit" name="submit" >
                                    <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                                   
                                </button>
                        </a>
                        </div>
                    <!-- //cart details -->
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
       
         <!-- top Products -->
        <div class="ads-grid">
            <div class="container">

                <div class="side-bar col-md-3">
                    <!-- discounts -->
                    <div class="left-side">
                        <h3 class="agileits-sear-head">PRODUCER</h3>
                        <div class="list-group">
                            <c:url value='/ListProductByHID?id=1' var="URL1" />
                            <a href="${URL1}" class="list-group-item list-group-item-success">DELL</a>
                            <c:url value='/ListProductByHID?id=2' var="URL2" />
                            <a href="${URL2}" class="list-group-item list-group-item-info">HP</a>
                            <c:url value='/ListProductByHID?id=3' var="URL3" />
                            <a href="${URL3}" class="list-group-item list-group-item-warning">LENOVO</a>
                            <c:url value='/ListProductByHID?id=4' var="URL4" />
                            <a href="${URL4}" class="list-group-item list-group-item-danger">ACER</a>
                            <c:url value='/ListProductByHID?id=5' var="URL5" />
                            <a href="${URL5}" class="list-group-item list-group-item-danger">MSI</a>
                        </div>
                    </div>
                  
                </div>
                <!-- //product left -->
                <!-- product right -->
                <div class="agileinfo-ads-display col-md-9">
                    <div class="wrapper">
                        <!-- first section (nuts) -->
                        <div class="product-sec1">
                            <h3 class="heading-tittle"></h3>
                            <c:url value="/ListProductByHID" var="list"></c:url>
                            <form action="${list}" method="post">
                            <c:forEach items="${spp}" var="x">
                                <div class="col-md-4 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src=${x.picture} alt="" width="150" height="150">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">New</span>
                                        </div>
                                        <div class="item-info-product ">
                                            <h4>
                                                <a href="single.html">${x.sname}</a>
                                            </h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$${x.price}</span>
                                                <del>$280.00</del>
                                            </div>
                                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">     
                                                    <fieldset>
                                                        <input type="hidden" name="cmd" value="${x.sname}" />
                                                        <input type="hidden" name="add" value="1" />
                                                        <input type="hidden" name="business" value=" " />
                                                        <input type="hidden" name="item_name" value="Almonds, 100g" />
                                                        <input type="hidden" name="amount" value="149.00" />
                                                        <input type="hidden" name="discount_amount" value="1.00" />
                                                        <input type="hidden" name="currency_code" value="USD" />
                                                        <input type="hidden" name="return" value=" " />
                                                        <input type="hidden" name="cancel_return" value=" " />
                                                        <c:url value='/AddToCartController?id=${x.sid}&action=addcart' var="a"></c:url>
                                                     
                                                       <a href="AddToCartController?id=${x.sid}&action=addcart"><button type="button" class="btn btn-success">Add to Cart</button></a>
                                                    </fieldset>
                                                
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                            </form>


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
                    <h2>Get your Groceries delivered from local stores</h2>
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
        <!-- //newsletter -->
        <!-- footer -->
          <jsp:include page="footer.jsp"></jsp:include>
        <!-- //footer -->
        <!-- copyright -->
        <div class="copy-right">
            <div class="container">
                <p>� 2017 Grocery Shoppy. All rights reserved | Design by
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