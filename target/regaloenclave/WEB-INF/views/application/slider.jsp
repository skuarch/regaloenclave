<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Start HomePage Slider -->
<section id="home">	
    <!-- Carousel -->
    <div id="main-slide" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#main-slide" data-slide-to="0" class="active"></li>
            <li data-target="#main-slide" data-slide-to="1"></li>
            <li data-target="#main-slide" data-slide-to="2"></li>
        </ol><!--/ Indicators end-->

        <!-- Carousel inner -->
        <div class="carousel-inner">
            <div class="item active">
                <img class="img-responsive" src="<c:url value="/resources/images/slider/slidder1.jpg"/>" alt="slider">
                <div class="slider-content">
                    <div class="col-md-12 text-center">
                        <h2 class="animated2 white text-shadow">
                            <span class="red">Regalo en <strong class="white">clave </strong></span>
                        </h2>
                        <h3 class="animated3 text-shadow orange">
                            <span>La nueva forma de hacer regalos</span>
                        </h3>
                        <p class="animated4">
                            <a href="<c:url value="/giveAway" />" class="slider btn btn-success">
                                <span class="fa fa-gift"></span>
                                hacer un regalo hoy
                            </a>
                        </p>
                    </div>
                </div>
            </div><!--/ Carousel item end -->
            <div class="item">
                <img class="img-responsive" src="<c:url value="/resources/images/slider/slidder2.2.jpg"/>" alt="slider">
                <div class="slider-content">
                    <div class="col-md-12 text-center">
                        <h2 class="animated4 white text-shadow">
                            <span><strong class="red">Para</strong>cualquier persona</span>
                        </h2>
                        <h3 class="animated5 text-shadow orange">
                            <span>siempre hay motivos para regalar</span>
                        </h3>		
                        <a href="<c:url value="/giveAway" />" class="animated4 slider btn btn-success">
                            <span class="fa fa-gift"></span>
                            hacer un regalo hoy
                        </a>
                    </div>
                </div>
            </div><!--/ Carousel item end -->
            <div class="item">
                <img class="img-responsive" src="<c:url value="/resources/images/slider/slidder3.3.jpg"/>" alt="slider">
                <div class="slider-content">
                    <div class="col-md-12 text-center">
                        <h2 class="animated7 white text-shadow">
                            <span><strong>Haz una sorpresa</strong></span>
                        </h2>
                        <h3 class="animated8 orange text-shadow">
                            <span>las sorpresas siempre son <span class="red">agradables</span></span>
                        </h3>		
                        <div class="animated8">
                            <a href="<c:url value="/giveAway" />" class="slider btn btn-success">
                                <span class="fa fa-gift"></span>
                                hacer un regalo hoy
                            </a>
                        </div>     
                    </div>
                </div>
            </div><!--/ Carousel item end -->
        </div><!-- Carousel inner end-->

        <!-- Controls -->
        <a class="left carousel-control" href="#main-slide" data-slide="prev">
            <span><i class="fa fa-angle-left"></i></span>
        </a>
        <a class="right carousel-control" href="#main-slide" data-slide="next">
            <span><i class="fa fa-angle-right"></i></span>
        </a>
    </div><!-- /carousel -->    	
</section>
<!-- End HomePage Slider -->