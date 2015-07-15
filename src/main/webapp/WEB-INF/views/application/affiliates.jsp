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
    <body onload="affiliatesAjax()">        
        <div id="container" class="boxed-page">            
            <div class="hidden-header"></div>
            <header class="clearfix">
                <jsp:include page="navigation.jsp"/>                                
            </header>
            
            <!-- Start Page Banner -->
            <div class="page-banner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <h2>Afiliados</h2>
                            <p>Lugares donde puedes cambiar tus regalos</p>
                        </div>
                        <div class="col-md-6">
                            <ul class="breadcrumbs">
                                <li><a href="welcome">Inicio</a></li>
                                <li>afiliados</li>
                            </ul>
                        </div>                        
                    </div>
                </div>
            </div>
            <!-- End Page Banner -->

            <!-- Start Content -->
            <div id="content">
                <div class="container">
                    
                    Negocios afiliados a regalo en clave
                    <br/><br/><br/>
                    <div id="output">cargando...</div>
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