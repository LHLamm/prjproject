<%-- 
    Document   : search
    Created on : Oct 24, 2022, 2:49:36 AM
    Author     : trant
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="./assets/style.css"/>
        <title>Search</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="content row">
            <c:forEach items="${listProduct}" var="product">  
                <div class="col-md-4">
                    <div class="product-item">
                        <img src="${product.image}" alt="" width="600px" height="350px">
                        <div class="discount">Giảm ${product.discount}%</div>
                          <a class="text name" href="product?pid=${product.id}">${product.name}</a>

                        
                        <div class="text price">${product.pricediscount} ₫ <span style="text-decoration: line-through;">${product.price} ₫</span> </div>
                        <div class="">
                            <span class="bi bi-star checked"></span>
                            <span class="bi bi-star checked"></span>
                            <span class="bi bi-star checked"></span>
                            <span class="bi bi-star"></span>
                            <span class="bi bi-star"></span>
                        </div>
                        <a class="buy" href="product?pid=${product.id}">Buy</a>
<!--                        <a class="buy" href="product?pid=${product.id}">Buy</a>
                                  <button class="buy">Buy</button>-->




                    </div>
                </div>
            </c:forEach>  



        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <jsp:include page="login-signin.jsp"></jsp:include>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
        <script src="./assets/js/mycode.js"></script>
    </body>
</html>
