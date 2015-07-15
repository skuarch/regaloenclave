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

            <!-- Start Content -->            
            <div class="container">
                <p>
                <br/>
                <h1>Aviso de privacidad</h1>
                <br/>
                <br/>
                Easy Jeam Group, S.A. de C.V., con domicilio en Av. Manuel J. Clouthier 1873 Col. Villas del
                Tepeyac, Zapopan, Jalisco CP. 45058 es responsable de recabar sus datos personales, del uso que se
                le dé a los mismos y de su protección
                <br/>
                <br/>
                Su información personal será utilizada para proveer los servicios y productos que ha solicitado,
                informarle sobre cambios en los mismos y evaluar la calidad del servicio que le brindamos.
                <br/>
                <br/>
                Para las finalidades antes mencionadas, requerimos obtener los siguientes datos personales:
                Nombre completo, teléfono y correo electrónico, considerado como sensible según la Ley Federal
                de Protección de Datos Personales en posesión de los Particulares, sus datos del domicilio particular
                los cuales no requerimos directamente.
                <br/>
                <br/>
                Usted tiene derecho de acceder, rectificar y cancelar sus datos personales, así como de oponerse al
                tratamiento de los mismos o revocar el consentimiento que para tal fin nos haya otorgado, a través
                de los procedimientos que hemos implementado. Para conocer dichos procedimientos, los
                requisitos y plazos, se puede poner en contacto con nuestro departamento de datos personales en
                el domicilio arriba mencionado, al teléfono <strong>33-9627-3089</strong> y en el correo electrónico
                <strong>contacto@regaloenclave.com</strong> o visitar nuestra página de Internet <strong>www.regaloenclave.com</strong>
                <br/>
                <br/>
                Asimismo, le informamos que sus datos personales pueden ser transferidos y tratados dentro y
                fuera del país, por personas distintas a esta empresa. En ese sentido, su información puede ser
                compartida con empresas de productos y/o servicios que tengan alianzas de negocio con nuestra
                empresa, para que usted tenga acceso a las oportunidades de negocio que estas les ofrecen a
                nuestros socios. Si usted no manifiesta su oposición para que sus datos personales sean
                transferidos se entenderá que ha otorgado su consentimiento para ello.
                <br/>
                <br/>
                Si usted desea dejar de recibir mensajes promocionales de nuestra parte puede solicitarlo a través
                del teléfono <strong>33-9627-3089</strong> y en el correo electrónico <strong>contacto@regaloenclave.com</strong>
                Cualquier modificación a este aviso de privacidad podrá consultarla en <strong>www.regaloenclave.com</strong>
                <br/>
                <br/>
                <br/>
                <br/>
                Fecha de última actualización 01/junio/2015
                <br/>
                <br/>
                <br/>
                </p>
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