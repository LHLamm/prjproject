<%-- 
    Document   : order
    Created on : Oct 31, 2022, 3:59:03 AM
    Author     : trant
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <link rel="stylesheet" href="./themify-icons/themify-icons.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Đơn Hàng</title>
        <link rel="stylesheet" href="./assets/orderstyle.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="content">
                <div class="content-header">
                    <a href="homeControl" class="go-back"><span class="bi bi-arrow-left"></span>Trở về</a>
                    <div class="title">Đơn Hàng</div>
                </div>
            <c:forEach items="${listOD}" var="o">
                <div class="content-product row">



                    <div class="col-3">
                        <img src="${o.p.image}" alt="">
                    </div>
                    <div class="col-9">
                        <div class="product">
                            <a href="orderdetail?oid=${o.i.id}&pid=${o.p.id}&username=${sessionScope.acc.username}" class="product-name">${o.p.name}</a>
                            <div class="product-price">
                                <p>${o.p.pricediscount} ₫</p>
                                <p style="text-decoration: line-through;">${o.p.price} ₫</p>
                                <div>Giảm ${o.p.discount}%</div>
                            </div>
                            <div class="product-quantity">
                                <h6>Số lượng :   </h6> 

                                <input type="text" value="${o.i.quantity}" readonly>

                            </div>
                            <div class="product-quantity">
                                <h6>Ngày :   </h6> 

                                <p>${o.i.date}</p>

                            </div> 



                        </div>
                    </div>
                </div>
            </c:forEach>



        </div>




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
