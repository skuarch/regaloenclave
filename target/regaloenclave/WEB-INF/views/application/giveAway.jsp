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

                            <div id="contact-form" class="contatct-form">                                
                                <form action="gift" class="contactForm" name="giftForm" id="giftForm" method="post" role="form">
                                    <div id="step1">
                                        <br/>
                                        <div class="alert alert-info">
                                            elige a quien regalar
                                        </div>
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
                                                    <strong>Numero telefonico</strong>
                                                </label>                                            
                                                <input id="recipientPhone" name="recipientPhone" type="text" value="" size="30" tabindex="3">
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
                                                    <strong>Telefono</strong>
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
                                        <input type="button" class="btn btn-block btn-success btn-lg" value="siguiente paso" tabindex="11" onclick="step2();">
                                    </div>
                                    <div id="step2" style="display: none">
                                        <br/>
                                        <div class="alert alert-info">
                                            Para realizar su pago con tarjeta de crédito Visa o MasterCard, llene la
                                            siguiente información.
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                titular de la tarjeta de credito:
                                                <input id="titular" name="titular" type="text" value="" size="30" tabindex="7">
                                            </div>
                                            <div class="col-md-6">
                                                numero de tarjeta de credito:
                                                <input id="numero" name="numero" type="text" tabindex="7">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">                                                
                                                <div class="col-md-6">
                                                    <div class="form-group">                                                    
                                                    valida: (mes)<br/>
                                                    <select class="form-control">
                                                        <option>01</option>
                                                        <option>02</option>
                                                        <option>03</option>
                                                        <option>04</option>
                                                        <option>05</option>
                                                        <option>06</option>
                                                        <option>07</option>
                                                        <option>08</option>
                                                        <option>09</option>
                                                        <option>10</option>
                                                        <option>11</option>
                                                        <option>12</option>
                                                    </select>  
                                                    </div>
                                                </div>                                                
                                                <div class="col-md-6">
                                                    / (año)<br/>
                                                    <select class="form-control">
                                                        <option>2015</option>
                                                        <option>2016</option>
                                                        <option>2017</option>
                                                        <option>2018</option>
                                                        <option>2019</option>
                                                        <option>2020</option>
                                                    </select>                                                    
                                                </div>                                            
                                            </div>
                                        
                                            <div class="col-md-6">
                                                codigo de validacion de la tarjeta de credito:
                                                <input id="codigo" name="codigo" type="text" tabindex="7">
                                            </div>
                                        </div>                                    
                                        <div class="row">
                                            <div class="col-md-12">
                                                Monto a regalar
                                                <input type="text" id="monto" name="monto" placeholder="cantidad minima 100 pesos, solo multiplos de 100">
                                            </div>                                               
                                        </div>    
                                        <br/>
                                        <div class="alert alert-warning">
                                            en este paso todavia no se hace el cargo a la tarjeta de credito
                                        </div>    
                                        <br/>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <button type="button" class="btn btn-primary btn-lg btn-block" onclick="step1()">
                                                    regresar 
                                                </button>
                                            </div>
                                            <div class="col-md-6">
                                                <button type="button" class="btn btn-success btn-lg btn-block" onclick="step3()">
                                                    siguiente
                                                </button>
                                            </div>
                                        </div>                                        
                                    </div>
                                    <div id="step3" style="display: none">
                                        <br/>
                                        <div class="alert alert-info">
                                            Revisa que los datos sean correctos, acepta los terminos y condiciones y da click en el boton regalar para cobrar tu regalo
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="well alert-info" style="font-size: 16px;">
                                                    Nombre de quien recibe el regalo: <strong>alfredo bello mon</strong>
                                                    <br/>

                                                    Apellidos de quien recibe el regalo:<strong></strong>
                                                    <br/>

                                                    Numero telefonico de quien recibe el regalo:<strong></strong>
                                                    <br/>

                                                    Correo electronico de quien recibe el regalo:<strong></strong>
                                                    <br/>
                                                </div>
                                            </div>    
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="well alert-info" style="font-size: 16px;">
                                                    Nombre de quien hace el regalo:<strong></strong>
                                                    <br/>

                                                    Apellidos de quien hace el regalo:<strong></strong>
                                                    <br/>

                                                    Numero telefonico de quien hace el regalo:<strong></strong>
                                                    <br/>

                                                    Correo electronico de quien hace el regalo:<strong></strong>
                                                    <br/>
                                                </div>   
                                            </div> 
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="well alert-success" style="font-size: 16px;">
                                                    nombre del ttitular:<strong></strong>
                                                    <br/>

                                                    Apellidos de quien hace el regalo:<strong></strong>
                                                    <br/>

                                                    Numero telefonico de quien hace el regalo:<strong></strong>
                                                    <br/>

                                                    Correo electronico de quien hace el regalo:<strong></strong>
                                                    <br/>
                                                </div>   
                                            </div> 
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <input type="checkbox" id="terminos" name="terminos">
                                                <label for="terminos">
                                                    he leido y acepto los terminos y condiciones
                                                </label>                                                
                                            </div>
                                        </div>
                                        <br/>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <button type="button" class="btn btn-primary btn-lg btn-block" onclick="step2()">
                                                    regresar 
                                                </button>
                                            </div>
                                            <div class="col-md-6">
                                                <button type="button" class="btn btn-success btn-lg btn-block" onclick="regalar()">
                                                    regalar
                                                </button>
                                            </div>
                                        </div>                                        
                                    </div>   
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