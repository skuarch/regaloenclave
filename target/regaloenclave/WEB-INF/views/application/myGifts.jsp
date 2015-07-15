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

            <!-- Start Page Banner -->
            <div class="page-banner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <h2>Mis Regalos</h2>
                            <p></p>
                        </div>
                        <div class="col-md-6">
                            <ul class="breadcrumbs">
                                <li><a href="welcome">Inicio</a></li>
                                <li>mis regalos</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Page Banner -->

            <!-- Start Content -->
            <div id="content">
                <div class="container">
                    <div id="contact-form" class="contatct-form">                                                        
                        Por favor escribe tu correo y nosotros te enviamos informacion de tus regalos
                        <br/>
                        <br/>
                        <label for="recipientLastName">
                            <strong>Correo electronico</strong><span class="required">*</span>
                        </label>                                            
                        <input id="email" name="email" type="text" placeholder="correo@algo.com" size="30" required="required">                        
                        <input type="button" id="send" class="btn btn-block btn-success" value="recibir informacion de mis regalos" onclick="myGifts()" />
                        <br/>
                        <div id="message" class="alert alert-success" style="display: none">
                            sí tienes regalos, nosotros te enviamos la informacion a tu correo
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