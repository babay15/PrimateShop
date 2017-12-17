<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Primate Shop</title>
        <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>
        <link  href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css">
        
    </head>

    <body>
        <div><jsp:include page="head.jsp"/></div>        
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
                <a href="product/5">
                    <img src="<c:url value="/resources/Monkey.jpg"/>" alt="Gorilla" width="100%">
                    
                </a>
              </div>

            <div class="item">
                <a href="product/8">
              <img src="<c:url value="/resources/Monkey2.jpg"/>" width="100%">
              </a>
              </div>

            <div class="item">
                <a href="product/6">
                <img src="<c:url value="/resources/Monkey3.jpg"/>" width="100%">
                </a>
            </div>
          </div>
        </div>
            <h1 style="text-align: center">ALL YOUR PRIMATE MATE</h1>
            <hr>
        
<!--        <img src="<c:url value="/resources/Monkey.jpg"/>" width="100%">!-->
        <div class="container">
                <div class="row">
            <c:forEach var="i" items="${products}">
                
                <div class="col-md-3">
                    <div class="panel-primary">
                        <div class="row">
                            <div class="col-md-10">
                                <a href="product/${i.id}"><img src="<c:url value="resources/monkey/${i.imagePath}"/>" width="100%" class="img-circle"></a>
                            <hr>    
                            </div>
                        </div>
                    </div>
                </div>
                
            </c:forEach>
        </div>

        </div>
        <hr>
        <img src="<c:url value="/resources/footer.jpg"/>" alt="Gorilla" width="100%" style="bottom:0">
    </body>
    
</html>
