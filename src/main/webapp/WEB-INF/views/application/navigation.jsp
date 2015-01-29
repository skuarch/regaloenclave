<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Start Header ( Logo & Naviagtion ) -->
<div class="navbar navbar-default navbar-top">
    <div class="container">
        <div class="navbar-header">
            <!-- Stat Toggle Nav Link For Mobiles -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <i class="fa fa-bars"></i>
            </button>
            <!-- End Toggle Nav Link For Mobiles -->
            <a class="navbar-brand" href="<c:url value="/welcome"/>">
                <!--<img alt="" src="<c:url value="/resources/images/margo.png"/>">-->
                <span class="fa fa-gift"></span>
                <strong class="red">Regalo</strong>en<strong>Clave</strong>
            </a>
        </div>
        <div class="navbar-collapse collapse">
            <!-- Stat Search -->
            <!--<div class="search-side">
                <a href="#" class="show-search"><i class="fa fa-search"></i></a>
                <div class="search-form">
                    <form autocomplete="off" role="search" method="get" class="searchform" action="#">
                        <input type="text" value="" name="s" id="s" placeholder="Search the site...">
                    </form>
                </div>
            </div>-->
            <!-- End Search -->
            <!-- Start Navigation List -->
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a class="active" href="<c:url value="/welcome" />"><spring:message code="text2"/></a>                                    
                    <ul class="dropdown">
                        <li><a href="?lang=es">Español</a></li>
                        <li><a href="?lang=en">English</a></li>                        
                    </ul>                    
                </li>
                <li>
                    <a href="about.html">Que es</a>
                    <ul class="dropdown">
                        <li><a href="about.html">About</a></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="right-sidebar.html">Right Sidebar</a></li>
                        <li><a href="left-sidebar.html">Left Sidebar</a></li>
                        <li><a href="404.html">404 Page</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">Como</a>
                    <ul class="dropdown">
                        <li><a href="tabs.html">Tabs</a></li>
                        <li><a href="buttons.html">Buttons</a></li>
                        <li><a href="action-box.html">Action Box</a></li>
                        <li><a href="testimonials.html">Testimonials</a></li>
                        <li><a href="latest-posts.html">Latest Posts</a></li>
                        <li><a href="latest-projects.html">Latest Projects</a></li>
                        <li><a href="pricing.html">Pricing Tables</a></li>
                        <li><a href="animated-graphs.html">Animated Graphs</a></li>
                        <li><a href="accordion-toggles.html">Accordion & Toggles</a></li>
                    </ul>
                </li>
                <li>
                    <a href="portfolio-3.html">Regalar</a>
                    <ul class="dropdown">
                        <li><a href="portfolio-2.html">2 Columns</a></li>
                        <li><a href="portfolio-3.html">3 Columns</a></li>
                        <li><a href="portfolio-4.html">4 Columns</a></li>
                        <li><a href="single-project.html">Single Project</a></li>
                    </ul>
                </li>
                <li>
                    <a href="blog.html">Recomendar</a>
                    <ul class="dropdown">
                        <li><a href="blog.html">Blog - right Sidebar</a></li>
                        <li><a href="blog-left-sidebar.html">Blog - Left Sidebar</a></li>
                        <li><a href="single-post.html">Blog Single Post</a></li>
                    </ul>
                </li>
                <li><a href="contact.html">Contacto</a></li>
            </ul>
            <!-- End Navigation List -->
        </div>
    </div>
</div>
<!-- End Header ( Logo & Naviagtion ) -->