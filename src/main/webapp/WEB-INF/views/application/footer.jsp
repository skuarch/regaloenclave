<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Start Footer -->
<footer>
    <div class="container">
        <div class="row footer-widgets">

            <!-- Start Subscribe & Social Links Widget -->
            <div class="col-md-3">
                <div class="footer-widget mail-subscribe-widget">
                    <h4>Sigue en Contacto<span class="head-line"></span></h4>
                    <p>Unete a nuestra lista para estar actualizado</p>
                    <form class="subscribe">
                        <input type="text" placeholder="correo@ejemplo.com" id="subscriberEmail">
                        <input type="button" class="btn main-button btn-success" value="enviar" onclick="addSubscriber()">
                    </form>
                </div>
                <div class="footer-widget social-widget">
                    <h4>Siguenos<span class="head-line"></span></h4>
                    <ul class="social-icons">
                        <li>
                            <a class="facebook" href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li>
                            <a class="twitter" href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li>
                            <a class="google" href="#" target="_blank"><i class="fa fa-google-plus"></i></a>
                        </li>
                        <li>
                            <a class="dribbble" href="#" target="_blank"><i class="fa fa-dribbble"></i></a>
                        </li>
                        <li>
                            <a class="linkdin" href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </li>
                        <li>
                            <a class="flickr" href="#" target="_blank"><i class="fa fa-flickr"></i></a>
                        </li>
                        <li>
                            <a class="tumblr" href="#" target="_blank"><i class="fa fa-tumblr"></i></a>
                        </li>
                        <li>
                            <a class="instgram" href="#" target="_blank"><i class="fa fa-instagram"></i></a>
                        </li>
                        <li>
                            <a class="vimeo" href="#" target="_blank"><i class="fa fa-vimeo-square"></i></a>
                        </li>
                        <li>
                            <a class="skype" href="#" target="_blank"><i class="fa fa-skype"></i></a>
                        </li>
                    </ul>
                </div>
            </div><!-- .col-md-3 -->
            <!-- End Subscribe & Social Links Widget -->


            <!-- Start Twitter Widget -->
            <div class="col-md-3">
                <div class="footer-widget twitter-widget">
                    <h4>Informacion<span class="head-line"></span></h4>
                    <ul>
                        <li>
                            <p><a href="/freelancer">Unete a nuestro equipo, </a>se parte de nuestro equipo de freelancers</p>
                            <span><a href="/freelancer">mas informacion >></a></span>
                        </li>
                        <li>
                            <p><a href="#">Aumenta tus ingresos, </a>los afiliados a regalo en clave aumentan sus ingresos facilmente</p>
                            <span><a href="<c:url value="/affiliate"/>">mas informacion >></a></span>
                        </li>
                        <li>
                            <p><a href="faq">Preguntas frecuentes, </a>resuelve tus dudas.</p>
                            <span><a href="<c:url value="/faq"/>">mas informacion >></a></span>
                        </li>
                    </ul>
                </div>
            </div><!-- .col-md-3 -->
            <!-- End Twitter Widget -->


            <!-- Start Flickr Widget -->
            <div class="col-md-3">
                <div class="footer-widget flickr-widget">
                    <h4>Negocios Afiliados<span class="head-line"></span></h4>
                    <ul class="flickr-list">
                        <li>
                            <a href="<c:url value="/resources/images/flickr-01.jpg" />" class="lightbox">
                               <img alt="" src="<c:url value="/resources/images/flickr-01.jpg" />">
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="/resources/images/flickr-02.jpg" />" class="lightbox">
                               <img alt="" src="<c:url value="/resources/images/flickr-02.jpg" />">
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="/resources/images/flickr-03.jpg" />" class="lightbox">
                               <img alt="" src="<c:url value="/resources/images/flickr-03.jpg" />">
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="/resources/images/flickr-04.jpg" />" class="lightbox">
                               <img alt="" src="<c:url value="/resources/images/flickr-04.jpg" />">
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="/resources/images/flickr-05.jpg" />" class="lightbox">
                               <img alt="" src="<c:url value="/resources/images/flickr-05.jpg" />">
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="/resources/images/flickr-06.jpg" />" class="lightbox">
                               <img alt="" src="<c:url value="/resources/images/flickr-06.jpg" />">
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="/resources/images/flickr-07.jpg" />" class="lightbox">
                               <img alt="" src="<c:url value="/resources/images/flickr-07.jpg" />">
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="/resources/images/flickr-08.jpg" />" class="lightbox">
                               <img alt="" src="<c:url value="/resources/images/flickr-08.jpg" />">
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="/resources/images/flickr-09.jpg" />" class="lightbox">
                               <img alt="" src="<c:url value="/resources/images/flickr-09.jpg" />">
                            </a>
                        </li>
                    </ul>
                    <a href="<c:url value="/affiliates"/>">ver todos >></a>                    
                </div>
            </div><!-- .col-md-3 -->
            <!-- End Flickr Widget -->


            <!-- Start Contact Widget -->
            <div class="col-md-3">
                <div class="footer-widget contact-widget">
                    <h4>
                        <!--<img src="<c:url value="/resources/images/footer-margo.png"/>" class="img-responsive" alt="Footer Logo" />-->
                        <span class="red">Regalo</span> en Clave
                    </h4>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
                    <ul>
                        <li><span>Phone Number:</span>(33) 1817 6000</li>
                        <li><span>Email:</span> contacto@regaloenclave.com</li>
                        <li><span>Website:</span> www.regaloenclave.com</li>
                    </ul>
                </div>
            </div><!-- .col-md-3 -->
            <!-- End Contact Widget -->


        </div><!-- .row -->

        <!-- Start Copyright -->
        <div class="copyright-section">
            <div class="row">
                <div class="col-md-6">
                    <p>&copy; 2015 Regalo en clave -  All Rights Reserved</p>
                </div>
                <div class="col-md-6">
                    <ul class="footer-nav">
                        <li><a href="<c:url value="/sitemap"/>">mapa de sitio</a></li>
                        <li><a href="<c:url value="/privacyPolicy"/>">Politicas de privacidad</a></li>
                        <li><a href="<c:url value="/contact"/>">Contacto</a></li>
                    </ul>
                </div>						
            </div>
        </div>
        <!-- End Copyright -->

    </div>
</footer>
<!-- End Footer -->