<%-- 
    Document   : profile
    Created on : Dec 16, 2017, 7:20:44 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${user.userName} Profile</title>
        <script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js"/>" type="text/javascript"></script>
        <link  href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css">
    </head>
    <body>
                <jsp:include page="head.jsp"/>
                <div class="container">
                    <div class="container-fluid">
                    <table class="table">
                        <tr>
                            <td>
                                Username
                            </td>
                            <td>
                                ${user.userName}
                            </td>
                        </tr>                        
                        <tr>
                            <td>
                                Full Name
                            </td>
                            <td>
                                ${user.fullName}
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Phone Number
                            </td>
                            <td>
                                ${user.phoneNumber}
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email
                            </td>
                            <td>
                                ${user.email}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><a href="/WebProject/registration/edit"><button class="btn-success form-control"> <span class="glyphicon glyphicon-pencil"></span> Edit Profile</button></a></td>
                        </tr>

                    </table>
                    </div>
                </div>
    </body>
</html>
