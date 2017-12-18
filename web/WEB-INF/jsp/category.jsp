<%-- 
    Document   : category
    Created on : Dec 16, 2017, 8:45:41 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Primate</title>
        <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>
        <link  href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css">
        
    </head>
    <body>
        <div><jsp:include page="head.jsp"/></div>
        <h1 style="text-align: center">PICK YOUR PRIMATE</h1>
        <div class="container">
            <table class="table">
            
        <c:forEach var="i" items="${products}">
            <tr>
                <td>
                    <a href="/WebProject/product/${i.id}"><img src="<c:url value="/resources/monkey/${i.imagePath}"/>" width="100%" class="img-circle"></a>
                </td>
                <td>
                <a href="/WebProject/product/${i.id}">    
                    <h1>${i.productName}</h1>
                </a>
                </td>
                <td>
                    
                    <h1>Rp. <fmt:formatNumber value="${i.productPrice}"/></h1>
                </td>
                <td>
                    <a href="/WebProject/product/addCart/${i.id}"><button class="btn btn-info btn-lg"> <span class="glyphicon glyphicon-shopping-cart"></span> ADD TO CART</button></a>
                </td>
            </tr>
        </c:forEach>
        </table>
        </div>
        <hr>
        <img src="<c:url value="/resources/footer.jpg"/>" alt="Gorilla" width="100%" style=" bottom:0">
    </body>
</html>
