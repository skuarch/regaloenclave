<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html>
    <head>
        <title><spring:message code="text1"/></title>
        <jsp:include page="../application/head.jsp" />        
        <!--[if IE 8]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    </head>
    <body>        
        <div id="container" class="boxed-page">            
            <div class="hidden-header"></div>
            <header class="clearfix">
                <jsp:include page="navigation.jsp"/>                                
            </header>
            <jsp:include page="../application/slider.jsp"/>

            <!-- Start Content -->
            <div id="content">
                <div class="container">

                    <!-- Start Services Icons -->
                    <div class="row">

                        <!-- Start Service Icon 1 -->
                        <div class="col-md-3 col-sm-6 service-box service-center">
                            <div class="service-icon">
                                <i class="fa fa-heart icon-large"></i>
                            </div>
                            <div class="service-content">
                                <h4>Regalo en clave</h4>
                                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor.</p>
                            </div>
                        </div>
                        <!-- End Service Icon 1 -->

                        <!-- Start Service Icon 2 -->
                        <div class="col-md-3 col-sm-6 service-box service-center">
                            <div class="service-icon">
                                <i class="fa fa-magic icon-large"></i>
                            </div>
                            <div class="service-content">
                                <h4>La magia de regalar</h4>
                                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor.</p>
                            </div>
                        </div>
                        <!-- End Service Icon 2 -->

                        <!-- Start Service Icon 3 -->
                        <div class="col-md-3 col-sm-6 service-box service-center">
                            <div class="service-icon">
                                <i class="fa fa-gift icon-large"></i>
                            </div>
                            <div class="service-content">
                                <h4>Todo en un solo lugar</h4>
                                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor.</p>
                            </div>
                        </div>
                        <!-- End Service Icon 3 -->

                        <!-- Start Service Icon 4 -->
                        <div class="col-md-3 col-sm-6 service-box service-center">
                            <div class="service-icon">
                                <i class="fa fa-rocket icon-large"></i>
                            </div>
                            <div class="service-content">
                                <h4>La manera mas rapida</h4>
                                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor.</p>
                            </div>
                        </div>
                        <!-- End Service Icon 3 -->

                    </div>
                    <!-- End Services Icons -->

                    <!-- Divider -->
                    <div class="hr5" style="margin-top:25px; margin-bottom:45px;"></div>

                    <div class="row">

                        <!-- Start Big Heading -->
                        <div class="big-title text-center">
                            <h1>La forma mas<span class="accent-color"> flexible</span> y <span class="accent-color">facil</span> de usar.</h1>
                            <p class="title-desc">Lorem Ipsum is simply dummy text of the typesetting industry.</p>
                        </div>
                        <!-- End Big Heading -->

                        <!-- Divider -->
                        <div class="hr1" style="margin-top:20px; margin-bottom:20px;"></div>

                        <!-- Start Service Icon 1 -->
                        <div class="col-md-4 service-box service-icon-left">
                            <div class="service-icon">
                                <i class="fa fa-magic icon-mini-effect icon-effect-3 gray-icon"></i>
                            </div>
                            <div class="service-content">
                                <h4>Regalo en Clave</h4>
                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia dolores.</p>
                            </div>
                        </div>
                        <!-- End Service Icon 1 -->

                        <!-- Start Service Icon 1 -->
                        <div class="col-md-4 service-box service-icon-left">
                            <div class="service-icon">
                                <i class="fa fa-magic icon-mini-effect icon-effect-3 gray-icon"></i>
                            </div>
                            <div class="service-content">
                                <h4>Regalo en Clave</h4>
                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia dolores.</p>
                            </div>
                        </div>
                        <!-- End Service Icon 1 -->

                        <!-- Start Service Icon 1 -->
                        <div class="col-md-4 service-box service-icon-left">
                            <div class="service-icon">
                                <i class="fa fa-magic icon-mini-effect icon-effect-3 gray-icon"></i>
                            </div>
                            <div class="service-content">
                                <h4>Regalo en Clave</h4>
                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia dolores.</p>
                            </div>
                        </div>
                        <!-- End Service Icon 1 -->

                        <!-- Start Service Icon 2 -->
                        <div class="col-md-4 service-box service-icon-left">
                            <div class="service-icon">
                                <i class="fa fa-rocket icon-mini-effect icon-effect-6 gray-icon"></i>
                            </div>
                            <div class="service-content">
                                <h4>Regalo en Clave</h4>
                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia dolores.</p>
                            </div>
                        </div>
                        <!-- End Service Icon 2 -->

                        <!-- Start Service Icon 3 -->
                        <div class="col-md-4 service-box service-icon-left">
                            <div class="service-icon">
                                <i class="fa fa-eye icon-mini-effect icon-effect-5 gray-icon"></i>
                            </div>
                            <div class="service-content">
                                <h4>Regalo en Clave</h4>
                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia dolores.</p>
                            </div>
                        </div>
                        <!-- End Service Icon 3 -->

                        <!-- Start Service Icon 4 -->
                        <div class="col-md-4 service-box service-icon-left">
                            <div class="service-icon">
                                <i class="fa fa-pencil icon-mini-effect icon-effect-4 gray-icon"></i>
                            </div>
                            <div class="service-content">
                                <h4>Regalo en Clave</h4>
                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia dolores.</p>
                            </div>
                        </div>
                        <!-- End Service Icon 4 -->

                    </div>

                    <!-- Divider -->
                    <div class="hr5" style="margin-top:50px; margin-bottom:55px;"></div>

                    <div class="row">

                        <div class="col-md-3">
                            <!-- Start Big Heading -->
                            <div class="big-title">
                                <h1>Aficiones <span class="accent-color"></span></h1>
                                <p class="title-desc">Algunas de las cosas que tenemos para ti</p>
                            </div>
                            <!-- End Big Heading -->

                            <!-- Some Text -->
                            <p>Lorem ipsum dolor sit amet, consectetur adi elit, sed do eiusmod tempor incididunt.</p>

                            <!-- Divider -->
                            <div class="hr1" style="margin-bottom:10px;"></div>

                            <!-- Some Text -->
                            <p>Lorem ipsum dolor sit amet, consectetur adi elit, sed do eiusmod tempor incididunt enim labore et dolore magna aliqua. Ut enim nisi minim veniam, quis nostrud exercitation do ullamco laboris nisi ut aliquip ex commodo.</p>
                        </div>

                        <!-- Start Memebr 1 -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="team-member">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="<c:url value="/resources/images/team/face_1.png" />" />
                                    <div class="member-name">John Doe <span>Developer</span></div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p>
                                </div>
                                <!-- Memebr Social Links -->
                                <div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Memebr 1 -->

                        <!-- Start Memebr 2 -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="team-member">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="<c:url value="/resources/images/team/face_2.png" />" />
                                    <div class="member-name">Silly Sally <span>Developer</span></div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p>
                                </div>
                                <!-- Memebr Social Links -->
                                <div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Memebr 2 -->

                        <!-- Start Memebr 3 -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="team-member">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="<c:url value="/resources/images/team/face_3.png" />" />
                                    <div class="member-name">Chris John <span>Developer</span></div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p>
                                </div>
                                <!-- Memebr Social Links -->
                                <div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- End Memebr 3 -->

                    </div>

                    <!-- Divider -->
                    <div class="hr5" style="margin-top:55px; margin-bottom:55px;"></div>

                    <div class="row">


                        <div class="col-md-3">
                            <!-- Start Big Heading -->
                            <div class="big-title">
                                <h1>Lo <span class="accent-color">mas relevante</span></h1>
                                <p class="title-desc">tendencias del momento</p>
                            </div>
                            <!-- End Big Heading -->
                        </div>

                        <div class="col-md-9">
                            <!--Start Clients Carousel-->
                            <div class="our-clients">
                                <div class="clients-carousel custom-carousel touch-carousel navigation-2" data-appeared-items="4" data-navigation="true">

                                    <!-- Client 1 -->
                                    <div class="client-item item">
                                        <a href="#"><img src="<c:url value="/resources/images/c1.png" />" alt="" /></a>
                                    </div>

                                    <!-- Client 2 -->
                                    <div class="client-item item">
                                        <a href="#"><img src="<c:url value="/resources/images/c2.png" />" alt="" /></a>
                                    </div>

                                    <!-- Client 3 -->
                                    <div class="client-item item">
                                        <a href="#"><img src="<c:url value="/resources/images/c3.png" />" alt="" /></a>
                                    </div>

                                    <!-- Client 4 -->
                                    <div class="client-item item">
                                        <a href="#"><img src="<c:url value="/resources/images/c4.png" />" alt="" /></a>
                                    </div>

                                    <!-- Client 5 -->
                                    <div class="client-item item">
                                        <a href="#"><img src="<c:url value="/resources/images/c5.png" />" alt="" /></a>
                                    </div>

                                    <!-- Client 6 -->
                                    <div class="client-item item">
                                        <a href="#"><img src="<c:url value="/resources/images/c6.png" />" alt="" /></a>
                                    </div>

                                    <!-- Client 7 -->
                                    <div class="client-item item">
                                        <a href="#"><img src="<c:url value="/resources/images/c7.png" />" alt="" /></a>
                                    </div>

                                    <!-- Client 8 -->
                                    <div class="client-item item">
                                        <a href="#"><img src="<c:url value="/resources/images/c8.png" />" alt="" /></a>
                                    </div>

                                </div>
                            </div>
                            <!--End Clients Carousel-->
                        </div>


                    </div>

                </div>
            </div>
            <!-- End Content -->
            <jsp:include page="footer.jsp" />
        </div>
        <!-- End Container -->

        <!-- Go To Top Link -->
        <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

        <div id="loader">
            <div class="spinner">
                <div class="dot1"></div>
                <div class="dot2"></div>
            </div>
        </div>
        <jsp:include page="scripts.jsp" />
    </body>
</html>