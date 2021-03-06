<%-- 
    Document   : checkout
    Created on : Dec 16, 2017, 4:08:45 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checking Out</title>
        <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>
        <link  href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css">

    </head>
    <body>
        <div><jsp:include page="head.jsp"/></div>
        
        <div class="container">
        <c:if test="${not empty sessionScope.user}">
            <h1>Check out successful!</h1>
            <h3>The total payment is: Rp. ${hargaan}</h3>
            <h3>Your order will be sent to the address below:</h3>
            <h3>${addressBean.address}</h3>
            <h3>${addressBean.city} City, ${addressBean.state}</h3>
            <h1> Thank you for using our service.</h1>

        </c:if>
        <c:if test="${empty sessionScope.user}">
            <h1>You need to <a href="/WebProject/login/checkout">log in</a> first in order to process forward.</h1>
        </c:if>
        

        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br><hr>
                            <img src="<c:url value="/resources/footer.jpg"/>" alt="Gorilla" width="100%" style="position: static; bottom:0">

        
    </body>
</html>
