<%-- 
    Document   : detailproduct
    Created on : Dec 15, 2017, 4:42:38 PM
    Author     : user
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tmf" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primate Shop - ${product.productName}</title>
        <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>
        <link  href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css">
    </head>
    <body>
        <jsp:include page="head.jsp"/>  
        <div class="container">
        <h1>${product.productName}</h1>
        <img src="<c:url value="/resources/monkey/${product.imagePath}"/>">
        <h4>${product.productDescription}</h4>
        <h4>Category: ${product.productCategory} Primate</h4>
        
        <h2>Rp. <fmt:formatNumber value="${product.productPrice}"/></h2>
        <a href="addCart/${product.id}"><button class="btn btn-info btn-lg"> <span class="glyphicon glyphicon-shopping-cart"></span> ADD TO CART</button></a>
        </div>
        <hr>
        <img src="<c:url value="/resources/footer.jpg"/>" alt="Gorilla" width="100%" style="bottom:0">
    </body>
</html>
