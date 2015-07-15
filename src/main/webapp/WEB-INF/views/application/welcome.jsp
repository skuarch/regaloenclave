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
                <jsp:include page="navigation.jsp?active=1"/>                                
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
                                <h4><spring:message code="text1" /></h4>
                                <p>Toda una experiencia de hacerte presente de manera práctica, sutil y con clase.</p>
                            </div>
                        </div>
                        <!-- End Service Icon 1 -->

                        <!-- Start Service Icon 2 -->
                        <div class="col-md-3 col-sm-6 service-box service-center">
                            <div class="service-icon">
                                <i class="fa fa-magic icon-large"></i>
                            </div>
                            <div class="service-content">
                                <h4>la magia de regalar</h4>
                                <p>Vive en equilibrio perfecto  la increíble satisfacción de dar y recibir.</p>
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
                                <p>Encuentra con nosotros la respuesta al ¡QUE! ¡COMO! ¡CUANDO! Y ¡DONDE! Regala y regálate lo que tú quieras.</p>
                            </div>
                        </div>
                        <!-- End Service Icon 3 -->

                        <!-- Start Service Icon 4 -->
                        <div class="col-md-3 col-sm-6 service-box service-center">
                            <div class="service-icon">
                                <i class="fa fa-diamond icon-large"></i>
                            </div>
                            <div class="service-content">
                                <h4>Motivos</h4>
                                <p>Siempre hay un motivo para regalar.
                                    Cumpleaños, Santo, Aniversario, Navidad, Reyes, San Valentín, Día de la madre, del padre, del niño y...
                                <strong>SOLO PORQUE SÍ</strong>.</p>
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
                            <h1>La forma mas<span class="accent-color"> segura</span> y <span class="accent-color">facil</span> de usar.</h1>
                            <p class="title-desc">todos los dias son buenos para regalar.</p>
                            <a href="<c:url value="/giveAway" />" class="slider btn btn-success">
                                <span class="fa fa-gift"></span>
                                hacer un regalo hoy
                            </a>
                            <br/>                            
                        </div>
                        <!-- End Big Heading -->
                    </div>



                    <!-- Divider -->
                    <div class="hr5" style="margin-top:50px; margin-bottom:55px;"></div>

                    <div class="row">

                        <div class="col-md-3">
                            <!-- Start Big Heading -->
                            <div class="big-title">
                                <h1>Opciones <span class="accent-color"></span></h1>
                                <p class="title-desc">

                                </p>
                            </div>
                            <!-- End Big Heading -->

                            <!-- Some Text -->
                            <p>
                                Algunas de las cosas que tenemos para ti.
                                Encuentra tu regalo exacto, lo que más te guste, lo que necesites en el momento, cambia tus 
                                Regalos en Clave por los productos o servicios que nuestros Socios Afiliados te ofrecen, 
                                seguro que encuentras aquello que estabas deseando.
                            </p>
                            <!-- Divider -->
                            <div class="hr1" style="margin-bottom:10px;"></div>

                        </div>

                        <!-- Start Memebr 1 -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="team-member">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="<c:url value="/resources/images/team/face_1.png" />" />
                                    <div class="member-name">Sanborns <span>Departamental</span></div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p>
                                </div>
                                <!-- Memebr Social Links -->
                                <!--<div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>-->
                            </div>
                        </div>
                        <!-- End Memebr 1 -->

                        <!-- Start Memebr 2 -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="team-member">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="<c:url value="/resources/images/team/face_2.png" />" />
                                    <div class="member-name">Suburbia <span>Departamental</span></div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p>
                                </div>
                                <!-- Memebr Social Links -->
                                <!--<div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>-->
                            </div>
                        </div>
                        <!-- End Memebr 2 -->

                        <!-- Start Memebr 3 -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="team-member">
                                <!-- Memebr Photo, Name & Position -->
                                <div class="member-photo">
                                    <img alt="" src="<c:url value="/resources/images/team/face_3.png" />" />
                                    <div class="member-name">Palacio de Hierro <span>Departamental</span></div>
                                </div>
                                <!-- Memebr Words -->
                                <div class="member-info">
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat.</p>
                                </div>
                                <!-- Memebr Social Links -->
                                <!--<div class="member-socail">
                                    <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                    <a class="gplus" href="#"><i class="fa fa-google-plus"></i></a>
                                    <a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                    <a class="flickr" href="#"><i class="fa fa-flickr"></i></a>
                                    <a class="mail" href="#"><i class="fa fa-envelope"></i></a>
                                </div>-->
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