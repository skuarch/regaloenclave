<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="cons" class="model.logic.Constants" />
<c:choose>
    <c:when test="${fn:length(affiliates) <= 0}">
        <div class="alert alert-warning">
            no hay afiliados que mostrar
        </div>
    </c:when>
    <c:otherwise>
        <div class="row">
            <c:forEach var="a" items="${affiliates}">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            &nbsp;
                            ${a.getBrand()}
                        </div>
                        <div class="panel-body text-center">
                            <br/>
                            <span class="text-center box150x150" style="width: 150px; height: 150px;">
                                <a class="text-center" href="javascript:realocate(${a.getId()},${a.getType()});">
                                    <img width="150" height="150" src="${a.getLogo()}" />
                                </a>                      
                            </span>
                            <br/><br/>
                            <input type="button" value="detalles" class="btn btn-default btn-block text-center" onclick="javascript:realocate(${a.getId()},${a.getType()});">
                        </div>
                        <div class="panel-footer">
                            <c:forEach var="c" items="${a.getCategory()}" begin="0" end="2" varStatus="s">                                                    
                                <span class="label label-info">
                                    ${c.getName()}
                                </span>&nbsp;
                            </c:forEach>
                        </div>
                    </div>                    
                    <br/>
                    <br/>
                </div>    
            </c:forEach>
            <br/><br/><br/>
            <br/>
        </div>
    </c:otherwise>
</c:choose>
<script type="text/javascript">eval("${js}");</script>        
