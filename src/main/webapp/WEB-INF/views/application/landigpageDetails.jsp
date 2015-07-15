<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="row">
    <div class="col-lg-12 text-center">        
        <c:choose>
            <c:when test="affiliateCompanyBasic.getLogo() == null">
                <img src="<c:url value="/resources/images/noLogo.gif" />"/>
            </c:when>
            <c:otherwise>
                <img src="${affiliateCompanyBasic.getLogo()}">
            </c:otherwise>
        </c:choose>        
    </div> 
    <div class="col-lg-12 text-center">
        <div class="panel panel-default">
            <div class="panel-heading">
                <br/>
                <h1>${affiliateCompanyBasic.getBrand()}</h1>
                <br/>
            </div>
            <div class="panel-body">
                <br/>
                ${affiliateCompanyBasic.getDescription()}
                <br/>
                <br/>
            </div>
            <div class="panel-footer">                
                <div class="pull-right">
                    <a href="${affiliateCompanyBasic.getWebsite()}" target="_blank">
                        <i class="fa fa-facebook-official fa-2x"></i>
                    </a>
                    <a href="${affiliateCompanyBasic.getFacebook()}" target="_blank">
                        <i class="fa fa-globe fa-2x"></i>
                    </a>
                </div>
                <br/>
            </div>
        </div>
    </div>
    <div class="col-lg-12">
        <div>En los siguientes establecimientos puede hacer valer tu clave</div>
        <br/>
        <c:choose>
            <c:when test="${fn:length(affiliateCompanyBasic.getEstablishment()) <= 0}">
                <div class="alert alert-warning">
                    este afiliado no cuenta con establecimientos
                </div>
            </c:when>
            <c:otherwise>
                <c:forEach var="e" items="${affiliateCompanyBasic.getEstablishment()}">
                    <div class="alert alert-info">
                        ${e.address.getAll()}
                    </div>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </div>
    <div class="col-lg-12">
        <br/>
        <br/>
        <input type="button" class="btn btn-block btn-success btn-lg" value="regresar" onclick="javascript:history.go(-1);"/>
    </div>
</div>
