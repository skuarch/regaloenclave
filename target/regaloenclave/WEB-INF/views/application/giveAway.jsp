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
                            <br/>
                        </div>
                        <div class="panel-body">                                                        

                            <div id="contact-form" class="contatct-form">                                
                                <form action="gift" class="contactForm" name="giftForm" id="giftForm" method="post" role="form">
                                    <div id="step1">
                                        <br/>
                                        <div class="alert alert-info">
                                            Tus datos
                                        </div>                               
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="name2">
                                                    <strong>Nombre(s)</strong><span class="required">*</span>
                                                </label>                                        
                                                <input id="name2" name="name2" type="text" class="form-control" value="" size="30" tabindex="5">
                                            </div>                                    
                                            <div class="col-md-6">
                                                <label for="lastName2">
                                                    <strong>Apellidos</strong><span class="required">*</span>
                                                </label>                                        
                                                <input id="lastName2" name="lastName2" type="text" class="form-control" value="" size="30" required="required" tabindex="6">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="phone2">
                                                    <strong>Telefono</strong>
                                                </label>                                        
                                                <input id="phone2" name="phone2" type="number" class="form-control" value="" size="30" tabindex="7">
                                            </div>                                    
                                            <div class="col-md-6">
                                                <label for="email2">
                                                    <strong>Correo electronico</strong><span class="required">*</span>
                                                </label>                                        
                                                <input id="email2" name="email2" type="text" class="form-control" value="" size="30" required="required" tabindex="8">
                                            </div>
                                        </div>

                                        <br/>

                                        <div class="alert alert-warning">
                                            Elige a quien regalar
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="name1">
                                                    <strong>Nombre(s)</strong><span class="required">*</span>
                                                </label>                                            
                                                <input id="name1" name="name1" type="text" class="form-control" value="" size="30" maxlength="30" required="required" tabindex="1">
                                            </div>                                    
                                            <div class="col-md-6">
                                                <label for="lastName1">
                                                    <strong>Apellido(s)</strong><span class="required">*</span>
                                                </label>                                            
                                                <input id="lastName1" name="lastName1" type="text" class="form-control" value="" size="30" maxlength="30" required="required" tabindex="2">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="phone1">
                                                    <strong>Numero telefonico</strong>
                                                </label>                                            
                                                <input id="phone1" name="phone1" type="number" class="form-control" value="" size="30" tabindex="3">
                                            </div>                                    
                                            <div class="col-md-6">
                                                <label for="email1">
                                                    <strong>Correo electronico</strong><span class="required">*</span>
                                                </label>                                            
                                                <input id="email1" name="email1" type="email" class="form-control" value="" size="30" required="required" tabindex="4">
                                            </div>
                                        </div>
                                        <br/>
                                        <input type="submit" class="btn btn-block btn-success btn-lg" value="siguiente paso" tabindex="9">
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
                                                <input id="holder" name="holder" type="text" class="form-control" value="" size="30" maxlength="30" tabindex="10">
                                            </div>
                                            <div class="col-md-6">
                                                numero de tarjeta de credito:
                                                <input id="number" name="number" type="number" maxlength="16" class="form-control" tabindex="11">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">                                                
                                                <div class="col-md-6">
                                                    <div class="form-group">                                                    
                                                        valida: (mes)<br/>
                                                        <select id="month" name="month" class="form-control" tabindex="12">
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
                                                    <select id="year" name="year" class="form-control" tabindex="13">
                                                        <option>15</option>
                                                        <option>16</option>
                                                        <option>17</option>
                                                        <option>18</option>
                                                        <option>19</option>
                                                        <option>20</option>
                                                    </select>                                                    
                                                </div>                                            
                                            </div>

                                            <div class="col-md-6">
                                                codigo de validacion de la tarjeta de credito:
                                                <input id="secret" name="secret" type="number" class="form-control" tabindex="14">
                                            </div>
                                        </div>                                    
                                        <div class="row">
                                            <div class="col-md-12">
                                                Monto a regalar
                                                <input type="number" id="amount" name="amount" class="form-control" placeholder="cantidad minima $100 pesos, solo multiplos de 100" tabindex="15">
                                            </div>                                               
                                        </div>    
                                        <br/>
                                        <div class="alert alert-warning">
                                            en este paso todavia no se hace el cargo a la tarjeta de credito
                                        </div>    
                                        <div class="alert alert-success">
                                            regalo en clave no guardara los datos de la tarjeta de credito
                                        </div>    
                                        <br/>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <button type="button" class="btn btn-primary btn-lg btn-block" onclick="step1()" tabindex="16">
                                                    regresar 
                                                </button>
                                            </div>
                                            <div class="col-md-6">
                                                <button type="button" class="btn btn-success btn-lg btn-block" onclick="step3()" tabindex="17">
                                                    siguiente
                                                </button>
                                            </div>
                                        </div>                                        
                                    </div>                                   

                                    <div id="step3" style="display: none">
                                        <div id="cards" class="text-center">
                                            <br/>
                                            <br/>
                                            <div class="alert alert-info">
                                                selecciona la tarjeta para enviar tu regalo
                                            </div>
                                            <br/>
                                            <br/>                                        
                                            <input type="radio" name="card" value="1" id="card1" checked="checked"/>
                                            <label for="card1">
                                                <img src="http://static.regaloenclave.com/images/tarjeta_1.jpg"  width="260px" height="260px"/>
                                            </label>
                                            <input type="radio" name="card" value="2" id="card2"/>
                                            <label for="card2">
                                                <img src="http://static.regaloenclave.com/images/tarjeta_2.jpg"  width="260px" height="260px"/>
                                            </label>
                                            <input type="radio" name="card" value="3" id="card3"/>
                                            <label for="card3">
                                                <img src="http://static.regaloenclave.com/images/tarjeta_3.jpg"  width="260px" height="260px"/>
                                            </label>
                                            <br/>
                                            <input type="radio" name="card" value="4" id="card4"/>
                                            <label for="card4">
                                                <img src="http://static.regaloenclave.com/images/tarjeta_4.jpg"  width="260px" height="260px"/>
                                            </label>                                         
                                            <input type="radio" name="card" value="5" id="card5"/>
                                            <label for="card5">
                                                <img src="http://static.regaloenclave.com/images/tarjeta_5.jpg"  width="260px" height="260px"/>
                                            </label>                                        
                                            <input type="radio" name="card" value="6" id="card6"/>
                                            <label for="card6">
                                                <img src="http://static.regaloenclave.com/images/tarjeta_6.jpg"  width="260px" height="260px"/>
                                            </label>
                                            <br/>
                                            <input type="radio" name="card" value="7" id="card7"/>
                                            <label for="card7">
                                                <img src="http://static.regaloenclave.com/images/tarjeta_7.jpg"  width="260px" height="260px"/>
                                            </label>
                                            <input type="radio" name="card" value="8" id="card8"/>
                                            <label for="card8">
                                                <img src="http://static.regaloenclave.com/images/tarjeta_8.jpg"  width="260px" height="260px"/>
                                            </label>                                        
                                            <input type="radio" name="card" value="9" id="card9"/>
                                            <label for="card9">
                                                <img src="http://static.regaloenclave.com/images/tarjeta_9.jpg"  width="260px" height="260px"/>
                                            </label>
                                            <br/>
                                            <input type="radio" name="card" value="10" id="card10"/>
                                            <label for="card10">
                                                <img src="http://static.regaloenclave.com/images/tarjeta_10.jpg"  width="260px" height="260px"/>
                                            </label>                                        
                                            <input type="radio" name="card" value="11" id="card11"/>
                                            <label for="card11">
                                                <img src="http://static.regaloenclave.com/images/tarjeta_11.jpg"  width="260px" height="260px"/>
                                            </label>
                                            <input type="radio" name="card" value="12" id="card12"/>
                                            <label for="card12">
                                                <img src="http://static.regaloenclave.com/images/tarjeta_12.jpg"  width="260px" height="260px"/>
                                            </label>
                                        </div>

                                        <br/>
                                        <div class="row text-center">
                                            <div class="col-md-7 text-center">
                                                <strong>Mensaje</strong>
                                                <textarea id="message" cols="1" rows="3" placeholder="escribe un mensaje o dedicatoria al beneficiario" class="form-control"></textarea>
                                            </div>
                                        </div>    
                                        <br/>
                                        
                                        <div class="well alert-dismissable">
                                            Revisa que los datos sean correctos, acepta los terminos y condiciones y da click en el boton regalar para realizar tu regalo
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="alert alert-info" style="font-size: 16px;">                                                    
                                                    Nombre de quien recibe el regalo: <strong><span id="output1"></span></strong>
                                                    <br/>

                                                    Apellidos de quien recibe el regalo:<strong><span id="output2"></span></strong>
                                                    <br/>

                                                    Numero telefonico de quien recibe el regalo:<strong><span id="output3"></span></strong>
                                                    <br/>

                                                    Correo electronico de quien recibe el regalo:<strong><span id="output4"></span></strong>
                                                    <br/>
                                                </div>
                                            </div>    
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="alert alert-warning" style="font-size: 16px;">
                                                    Nombre de quien hace el regalo:<strong><span id="output5"></span></strong>
                                                    <br/>

                                                    Apellidos de quien hace el regalo:<strong><span id="output6"></span></strong>
                                                    <br/>

                                                    Numero telefonico de quien hace el regalo:<strong><span id="output7"></span></strong>
                                                    <br/>

                                                    Correo electronico de quien hace el regalo:<strong><span id="output8"></span></strong>
                                                    <br/>
                                                </div>   
                                            </div> 
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="alert alert-success" style="font-size: 16px;">
                                                    Nombre del titular:<strong><span id="output9"></span></strong>
                                                    <br/>

                                                    Monto:<strong><span id="output10"></span></strong>
                                                    <br/>
                                                </div>   
                                            </div> 
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <input type="checkbox" id="terms" name="terms" value="1" tabindex="18">
                                                <label for="terms">
                                                    <span id="terms">he leido y acepto los terminos y condiciones</span>
                                                </label>                                                
                                            </div>
                                        </div>
                                        <div id="message" class="alert alert-info" style="display: none"></div>
                                        <br/>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <button type="button" class="btn btn-primary btn-lg btn-block" onclick="step2()" tabindex="19">
                                                    regresar 
                                                </button>
                                            </div>
                                            <div class="col-md-6">
                                                <button type="button" class="btn btn-success btn-lg btn-block" onclick="step4()" tabindex="20">
                                                    regalar
                                                </button>
                                            </div>
                                        </div>                                        
                                    </div> 
                                    <div id="success" name="success" style="display: none" class="text-center">
                                        <img src="<c:url value="/resources/images/g1.png" />" width="15%" height="15%"/>
                                        <br/>
                                        tu regalo se realizo correctamente
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