<%-- 
    Document   : manageacc
    Created on : Oct 26, 2022, 5:35:41 AM
    Author     : trant
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="./assets/style.css">
        <title>Manage Account</title>
    </head>
    <body>
        <c:set var="a" value="${sessionScope.acc}"></c:set>
        <jsp:include page="headeradmin.jsp"></jsp:include>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Roll</th>
                        <th scope="col">FullName</th>
                        <th scope="col">Email</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Address</th>
                        <th scope="col">Date of Birth</th>
                        <th scope="col">UserName</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${listA}" var="acc">
                    <c:if test="${acc.username!=a.username}">
                    <tr>
                        <th>${acc.roll} <a href="setroll?roll=${acc.roll}&username=${acc.username}">Set</a></th>
                        <td>${acc.fullName}</td>
                        <td>${acc.email}</td>
                        <td>${acc.sdt}</td>
                        <td>${acc.address}</td>
                        <td>${acc.date}</td>
                        <td>${acc.username}</td>
                    </tr>
                    </c:if>
                </c:forEach>
            </tbody>
        </table>



        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    </body>
</html>
