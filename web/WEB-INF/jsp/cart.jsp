<%-- 
    Document   : cart
    Created on : Dec 15, 2017, 9:16:57 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
        <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>
        <link  href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css">
        
    </head>
    <body>
        <jsp:include page="head.jsp"/>
                    <h1 style="text-align: center">CART</h1><hr>
        <div class="container panel panel-body">
            <table class="table">
            <c:forEach var="x" items="${cartBean.cartList}">
            <tr>
                <td>${x.value.productName}</td>
                <td>
                    Rp. <fmt:formatNumber value="${x.value.productPrice}"/>
                    
                </td>
                <td>
                    <a href="/WebProject/product/remove/${x.key}"><button class="btn btn-danger btn-sm">          <span class="glyphicon glyphicon-trash"></span> REMOVE</button></a>
                </td>
            </tr>
            </c:forEach>
            
        </table>
            <c:if test="${not empty sessionScope.cartBean.cartList}">
            <h2>Total : Rp. ${hargaTotal}</h2>
            <form:form action="${pageContext.request.contextPath}/product/checkout" modelAttribute="addressBean" method="POST">
                <table class="table table-condensed">
                    <tr>
                        <td>
                            <form:label path="address">Address</form:label>
                        </td>
                        <td>
                            <form:textarea path="address" required="TRUE"></form:textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="city">City</form:label>
                        </td>
                        <td>
                            <form:input path="city" required="true"></form:input>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="state">State</form:label>                            
                        </td>
                        <td>
                            <form:input path="state" required="true"></form:input>                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                         <form:button name="submitButton" value="Submit" class="btn-primary form-control">CHECK OUT</form:button>                            
                        </td>
                    </tr>
                </table>  
            </form:form>
            

            </c:if>
            <c:if test="${empty sessionScope.cartBean.cartList}">
            <h2>Your cart is still empty.</h2>
            </c:if>
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br>
        <hr>
        <img src="<c:url value="/resources/footer.jpg"/>" alt="Gorilla" width="100%" style="position: initial; bottom: 0">
    </body>
</html>
