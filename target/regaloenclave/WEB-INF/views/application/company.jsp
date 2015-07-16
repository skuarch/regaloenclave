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
                <jsp:include page="navigation.jsp?active=2"/>                                
            </header>

            <!-- Start Page Banner -->
            <div class="page-banner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <h2>¿Que es Regalo en Clave?</h2>
                            <p>listo para cualquier ocasion</p>
                        </div>
                        <div class="col-md-6">
                            <ul class="breadcrumbs">
                                <li><a href="welcome">Inicio</a></li>
                                <li>Que es</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Page Banner -->


            <!-- Start Content -->
            <div id="content">
                <div class="container">
                    <div class="page-content">


                        <div class="row">

                            <div class="col-md-7">

                                <!-- Classic Heading -->
                                <h4 class="classic-title"><span>¿Que es Regalo En Clave?</span></h4>

                                <!-- Some Text -->
                                <p>Regaloenclave.com es una manera diferente de hacer un obsequio, buscando que quién lo recibe, realmente disfrute un regalo totalmente a su gusto y tenga la oportunidad de poder elegir productos o servicios de acuerdo a necesidades propias y aprovechar la oportunidad de disfrutar y dar el mejor uso a su presente y que se puede usar como tarjeta/monedero electrónico virtual.</p>                                

                            </div>

                            <div class="col-md-5"> 

                                <!-- Start Touch Slider -->
                                <div class="touch-slider" data-slider-navigation="true" data-slider-pagination="true">
                                    <div class="item"><img alt="" src="<c:url value="/resources/images/about-01.jpg" />"></div>
                                    <div class="item"><img alt="" src="<c:url value="/resources/images/about-02.jpg" />"></div>
                                    <div class="item"><img alt="" src="<c:url value="/resources/images/about-03.jpg" />"></div>
                                </div>
                                <!-- End Touch Slider -->

                            </div>

                        </div>

                        <!-- Divider -->
                        <div class="hr1" style="margin-bottom:50px;"></div>

                        <div class="row">

                            <div class="col-md-6">

                                <!-- Classic Heading -->
                                <h4 class="classic-title">
                                    <span>Regalo en clave es lo que tu quieras</span>
                                </h4> 
                                <p>
                                    Posee características de Tarjeta de Regalo y Monedero Electrónico virtuales.
                                    La moneda de cambio es una CLAVE que se genera en el sistema y se cambia por productos y servicios en puntos de venta en todo el país que han aceptado recibir esta clave como forma de pago en sus tiendas y establecimientos.
                                    Estos puntos de venta pueden ser tiendas de cualquier producto (comida, ropa, zapatos, regalos, equipos médicos, medicamentos, electrónicos, cómputo y otros), establecimientos de servicios de cualquier índole (hospitales, hoteles, clínicas, talleres, consultorios, restaurantes, bares, espectáculos y otros).
                                    Está pensado para todo aquel, que por cualquier motivo decide trasladar al festejado la opción de elegir un regalo.
                                </p>

                            </div>

                            <div class="col-md-6">

                                <!-- Classic Heading -->
                                <h4 class="classic-title"><span>Caracteristicas de Regalo En Clave</span></h4>
                                <p>
                                    El comprador de un regaloenclave.com se registra en el sistema y compra pagando con TDC o TDD, al mismo tiempo se envía automáticamente la CLAVE de regalo al beneficiario a quien se le sugiere haga efectivo su regalo en una de las tiendas afiliadas al sistema Regalo en Clave.

El comprador al registrarse, tiene acceso en el mismo sistema a un reporte con el número de regalos que ha realizado y el importe de los mismos a tiempo de consulta.
                                </p>
                            </div>
                        </div>

                    </div>

                    <!-- Divider -->
                    <div class="hr1" style="margin-bottom:50px;"></div>

                    <!-- Start Clients Carousel -->
                    <div class="our-clients">

                        <!-- Classic Heading -->
                        <h4 class="classic-title"><span>Asociados</span></h4>

                        <div class="clients-carousel custom-carousel touch-carousel" data-appeared-items="5">

                            <!-- Client 1 -->
                            <div class="client-item item">
                                <a href="#"><img src="<c:url value="/resources/images/c1.png"/>" alt="" /></a>
                            </div>

                            <!-- Client 2 -->
                            <div class="client-item item">
                                <a href="#"><img src="<c:url value="/resources/images/c2.png"/>" alt="" /></a>
                            </div>

                            <!-- Client 3 -->
                            <div class="client-item item">
                                <a href="#"><img src="<c:url value="/resources/images/c3.png"/>" alt="" /></a>
                            </div>

                            <!-- Client 4 -->
                            <div class="client-item item">
                                <a href="#"><img src="<c:url value="/resources/images/c4.png"/>" alt="" /></a>
                            </div>

                            <!-- Client 5 -->
                            <div class="client-item item">
                                <a href="#"><img src="<c:url value="/resources/images/c5.png"/>" alt="" /></a>
                            </div>

                            <!-- Client 6 -->
                            <div class="client-item item">
                                <a href="#"><img src="<c:url value="/resources/images/c6.png"/>" alt="" /></a>
                            </div>

                            <!-- Client 7 -->
                            <div class="client-item item">
                                <a href="#"><img src="<c:url value="/resources/images/c7.png"/>" alt="" /></a>
                            </div>

                            <!-- Client 8 -->
                            <div class="client-item item">
                                <a href="#"><img src="<c:url value="/resources/images/c8.png"/>" alt="" /></a>
                            </div>

                        </div>
                    </div>
                    <!-- End Clients Carousel -->


                </div>
            </div><!-- End content -->
        </div>
        <jsp:include page="footer.jsp" />
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