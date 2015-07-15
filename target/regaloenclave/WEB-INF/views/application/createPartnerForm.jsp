<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../application/noCache.jsp"/>
<!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html>
    <head>
        <title><spring:message code="text1"/></title>
        <jsp:include page="../application/head.jsp" />        
        <META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">  
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
                            <h2>Afiliarse</h2>
                            <p>aumentar tus ingresos</p>
                        </div>
                        <div class="col-md-6">
                            <ul class="breadcrumbs">
                                <li><a href="welcome">Inicio</a></li>
                                <li>Afiliarse</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Page Banner -->

            <!-- Start Content -->
            <div id="content">
                <div class="container">

                    <p>Para nosotros tu eres muy importante, por eso te ofrecemos incrementar sustancialmente tus ingresos, con tan solo afiliarte a regalo en clave
                        la afiliacion no tiene costo</p>
                    <br/><br/>
                    <div id="contact-form" class="contatct-form">                                
                        <form action="gift" class="contactForm" name="createPartnerForm" id="createPartnerForm" method="post">                                                       
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="name">
                                        <strong>Nombre(s)</strong><span class="required">*</span>
                                    </label>                                        
                                    <input id="name" name="name" type="text" value="" size="30" required="required" tabindex="1">
                                </div>                                    
                                <div class="col-md-6">
                                    <label for="lastName">
                                        <strong>Apellidos</strong><span class="required">*</span>
                                    </label>                                        
                                    <input id="lastName" name="lastName" type="text" value="" size="30" required="required" tabindex="2">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="phone">
                                        <strong>Telefono</strong><span class="required">*</span>
                                    </label>                                        
                                    <input id="phone" name="phone" type="text" value="" size="30" tabindex="3">
                                </div>                                    
                                <div class="col-md-6">
                                    <label for="email">
                                        <strong>Correo electronico</strong><span class="required">*</span>
                                    </label>                                        
                                    <input id="email" name="email" type="text" value="" size="30" required="required" tabindex="4">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="password">
                                        <strong>Contraseña</strong><span class="required">*</span>
                                    </label>                                        
                                    <input id="password" name="password" type="password" class="form-control" value="" size="10" required="required" tabindex="5">
                                </div>                                    
                                <div class="col-md-6">
                                    <label for="passwordConfirm">
                                        <strong>Confirmar contraseña</strong><span class="required">*</span>
                                    </label>                                    
                                    <input id="passwordConfirm" name="passwordConfirm" type="password" value="" class="form-control" size="10" required="required" tabindex="6">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="gender">
                                        <strong>Genero</strong><span class="required">*</span>
                                    </label>
                                    <select id="gender" name="gender" class="form-control" tabindex="7">
                                        <option value="1">masculino</option>
                                        <option value="2">femenino</option>
                                    </select>
                                </div>
                            </div> 
                            <br/>
                            <input type="submit" id="buttonForm" name="buttonForm" class="btn btn-block btn-success btn-lg" value="afiliarme a regalo en clave" tabindex="8">
                        </form>
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
        <script src="<c:url value="/resources/js/md5.js"/>" type="text/javascript"></script>
    </body>
</html>