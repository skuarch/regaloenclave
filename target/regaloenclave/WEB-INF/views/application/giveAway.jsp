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
                <jsp:include page="navigation.jsp?active=5"/>                                
            </header>

            <!-- Start Page Banner -->
            <div class="page-banner" style="padding:40px 0;">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <h2>Regalar</h2>
                            <p>haz una sorpresa</p>
                        </div>
                        <div class="col-md-6">
                            <ul class="breadcrumbs">
                                <li><a href="welcome">Inicio</a></li>
                                <li>Regalar</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Page Banner -->

            <!-- Start Content -->
            <div id="content" style="padding: 15px;">

                <div class="container">

                    <!--<div class="row">
                        <div class="col-lg-12">
                            <img src="<c:url value="/resources/images/blog-02.jpg"/>">                        
                            <br/>
                            <br/>
                        </div>
                    </div>-->

                    <div class="panel panel-default">
                        <div class="panel-heading" style="text-align: center">
                            <br/>
                            <h1>Estas a un paso de dar una sorpresa</h1>
                            <a class="btn-link" href="">ya regale</a>
                            <br/>
                            <br/>
                        </div>
                        <div class="panel-body">                            
                            <br/>
                            <div class="alert alert-info">
                                elige a quien regalar
                            </div>                            
                            <div id="contact-form" class="contatct-form">                                
                                <form action="gift" class="contactForm" name="giftForm" id="giftForm" method="post">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="recipientName">
                                                <strong>Nombre(s)</strong><span class="required">*</span>
                                            </label>                                            
                                            <input id="recipientName" name="recipientName" type="text" value="" size="30" required="required" tabindex="1">
                                        </div>                                    
                                        <div class="col-md-6">
                                            <label for="recipientLastName">
                                                <strong>Apellido(s)</strong><span class="required">*</span>
                                            </label>                                            
                                            <input id="name" name="recipientLastName" type="text" value="" size="30" required="required" tabindex="2">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="recipientPhone">
                                                <strong>Numero telefonico</strong><span class="required">*</span>
                                            </label>                                            
                                            <input id="recipientPhone" name="recipientPhone" type="text" value="" size="30" required="required" tabindex="3">
                                        </div>                                    
                                        <div class="col-md-6">
                                            <label for="recipientEmail">
                                                <strong>Correo electronico</strong><span class="required">*</span>
                                            </label>                                            
                                            <input id="recipientEmail" name="recipientEmail" type="text" value="" size="30" required="required" tabindex="4">
                                        </div>
                                    </div>

                                    <br/>

                                    <div class="alert alert-info">
                                        Tus datos
                                    </div>                               
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="shopperName">
                                                <strong>Nombre(s)</strong><span class="required">*</span>
                                            </label>                                        
                                            <input id="shopperName" name="shopperName" type="text" value="" size="30" tabindex="5">
                                        </div>                                    
                                        <div class="col-md-6">
                                            <label for="shopperLastName">
                                                <strong>Apellidos</strong><span class="required">*</span>
                                            </label>                                        
                                            <input id="shopperLastName" name="shopperLastName" type="text" value="" size="30" required="required" tabindex="6">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="shopperPhone">
                                                <strong>Telefono</strong><span class="required">*</span>
                                            </label>                                        
                                            <input id="shopperPhone" name="shopperPhone" type="text" value="" size="30" tabindex="7">
                                        </div>                                    
                                        <div class="col-md-6">
                                            <label for="shopperEmail">
                                                <strong>Correo electronico</strong><span class="required">*</span>
                                            </label>                                        
                                            <input id="shopperEmail" name="shopperEmail" type="text" value="" size="30" required="required" tabindex="8">
                                        </div>
                                    </div>
                                    <input type="button" class="btn btn-block btn-success btn-lg" value="siguiente paso" tabindex="11">
                                </form>
                            </div>
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