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
                <span> <img src="<c:url value="/resources/images/logo45x45.png"/>"/></span>
                <strong class="red">Regalo</strong>en<strong>Clave</strong>
            </a>
        </div>
        <div class="navbar-collapse collapse">            
            <!-- Start Navigation List -->
            <ul class="nav navbar-nav navbar-right">
                <li><a <c:if test="${param.active == 1}">class="active"</c:if> href="<c:url value="/welcome" />"><spring:message code="text2"/></a></li>
                <li><a <c:if test="${param.active == 5}">class="active"</c:if> href="<c:url value="/giveAway" />">Regalar</a></li>
                <li><a <c:if test="${param.active == 2}">class="active"</c:if> href="<c:url value="/company" />">Que es</a></li>
                <li><a <c:if test="${param.active == 3}">class="active"</c:if> href="<c:url value="/how" />">Como</a></li>
                <li><a <c:if test="${param.active == 6}">class="active"</c:if> href="<c:url value="/contact" />">Contacto</a></li>                
            </ul>
            <!-- End Navigation List -->
        </div>
    </div>
</div>
<!-- End Header ( Logo & Naviagtion ) -->