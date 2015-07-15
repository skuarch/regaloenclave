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
                <jsp:include page="navigation.jsp?active=6"/>                                
            </header>            

            <!-- Start Map -->
            <div id="map" data-position-latitude="20.652541" data-position-longitude="-103.425677"></div>           
            <!-- End Map -->

            <!-- Start Content -->
            <div id="content">
                <div class="container">

                    <div class="row">

                        <div class="col-md-8">

                            <!-- Classic Heading -->
                            <h4 class="classic-title"><span>Contactanos</span></h4>

                            <!-- Start Contact Form -->
                            <div id="contact-form" class="contatct-form">
                                <div class="loader"></div>
                                <form action="mail.php" class="contactForm" name="cform" method="post">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="name"><strong>Nombre</strong><span class="required">*</span></label>                                            
                                            <input id="name" name="name" type="text" value="" size="30">
                                        </div>
                                        <div class="col-md-4">
                                            <label for="e-mail"><strong>Correo electronico</strong><span class="required">*</span></label>                                            
                                            <input id="e-mail" name="email" type="text" value="" size="30">
                                        </div>
                                        <div class="col-md-4">
                                            <label for="url"><strong>Website</strong></label>
                                            <input id="url" name="url" type="text" value="" size="30">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label for="message"><strong>Comentarios</strong></label>                                            
                                            <textarea id="message" name="message" cols="45" rows="10"></textarea>
                                            <input type="submit" name="submit" class="button btn-danger" id="submit_btn" value="enviar mensaje">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- End Contact Form -->

                        </div>

                        <div class="col-md-4">

                            <!-- Classic Heading -->
                            <h4 class="classic-title"><span>Information</span></h4>

                            <!-- Some Info -->
                            <p>Si tienes alguna, duda, sugerencia o comentario no dudes en contactarnos por nuestros diferentes medios</p>

                            <!-- Divider -->
                            <div class="hr1" style="margin-bottom:10px;"></div>

                            <!-- Info - Icons List -->
                            <ul class="icons-list">
                                <li><i class="fa fa-globe">  </i> <strong>Direccion:</strong> Av. Manuel J. Clouthier, Zapopan, Jalisco, Mexico</li>
                                <li><i class="fa fa-envelope-o"></i> <strong>Email:</strong> contacto@regaloenclave.com</li>
                                <li><i class="fa fa-mobile"></i> <strong>Telefono:</strong>(33) 1817 6000</li>
                            </ul>

                            <!-- Divider -->
                            <div class="hr1" style="margin-bottom:15px;"></div>

                            <!-- Classic Heading -->
                            <h4 class="classic-title"><span>Working Hours</span></h4>

                            <!-- Info - List -->
                            <ul class="list-unstyled">
                                <li><strong>Lunes - Viernes</strong> - 9am a 6pm</li>
                                <li><strong>Sabados</strong> - 9am a 2pm</li>
                                <li><strong>Domingo</strong> - Cerrado</li>
                            </ul>

                        </div>

                    </div>

                </div> <!-- End Container -->

            </div> <!-- End Content -->
            
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
        <script src="https://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script>
        <script>
            (function ($) {
                $.fn.CustomMap = function (options) {

                    var posLatitude = $('#map').data('position-latitude'),
                            posLongitude = $('#map').data('position-longitude');

                    var settings = $.extend({
                        home: {latitude: posLatitude, longitude: posLongitude},
                        text: '<div class="map-popup"><h4>Web Development | ZoOm-Arts</h4><p>A web development blog for all your HTML5 and WordPress needs.</p></div>',
                        icon_url: $('#map').data('marker-img'),
                        zoom: 15
                    }, options);

                    var coords = new google.maps.LatLng(settings.home.latitude, settings.home.longitude);

                    return this.each(function () {
                        var element = $(this);

                        var options = {
                            zoom: settings.zoom,
                            center: coords,
                            mapTypeId: google.maps.MapTypeId.ROADMAP,
                            mapTypeControl: false,
                            scaleControl: false,
                            streetViewControl: false,
                            panControl: true,
                            disableDefaultUI: true,
                            zoomControlOptions: {
                                style: google.maps.ZoomControlStyle.DEFAULT
                            },
                            overviewMapControl: true,
                        };

                        var map = new google.maps.Map(element[0], options);

                        var icon = {
                            url: settings.icon_url,
                            origin: new google.maps.Point(0, 0)
                        };

                        var marker = new google.maps.Marker({
                            position: coords,
                            map: map,
                            icon: icon,
                            draggable: false
                        });

                        var info = new google.maps.InfoWindow({
                            content: settings.text
                        });

                        google.maps.event.addListener(marker, 'click', function () {
                            info.open(map, marker);
                        });

                        var styles = [{"featureType": "landscape", "stylers": [{"saturation": -100}, {"lightness": 65}, {"visibility": "on"}]}, {"featureType": "poi", "stylers": [{"saturation": -100}, {"lightness": 51}, {"visibility": "simplified"}]}, {"featureType": "road.highway", "stylers": [{"saturation": -100}, {"visibility": "simplified"}]}, {"featureType": "road.arterial", "stylers": [{"saturation": -100}, {"lightness": 30}, {"visibility": "on"}]}, {"featureType": "road.local", "stylers": [{"saturation": -100}, {"lightness": 40}, {"visibility": "on"}]}, {"featureType": "transit", "stylers": [{"saturation": -100}, {"visibility": "simplified"}]}, {"featureType": "administrative.province", "stylers": [{"visibility": "on"}]}, {"featureType": "water", "elementType": "labels", "stylers": [{"visibility": "on"}, {"lightness": -25}, {"saturation": -100}]}, {"featureType": "water", "elementType": "geometry", "stylers": [{"hue": "#ffff00"}, {"lightness": -25}, {"saturation": -97}]}];

                        map.setOptions({styles: styles});
                    });

                };
            }(jQuery));

            jQuery(document).ready(function () {
                jQuery('#map').CustomMap();
            });
        </script>
    </body>
</html>