<%-- 
    Document   : Order
    Created on : Oct 24, 2022, 1:45:49 AM
    Author     : trant
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<!--        <link rel="stylesheet" href="./themify-icons/themify-icons.css">-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Giỏ Hàng</title>
        <link rel="stylesheet" href="./assets/orderstyle.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="content">
                <div class="content-header">
                    <a href="homeControl" class="go-back"><span class="bi bi-arrow-left"></span>Trở về</a>
                    <div class="title">Giỏ Hàng</div>
                </div>
                
                <form action="pay" method="post">
                <c:forEach items="${listI}" var="o">

                    <div class="content-product row">
                        <input class="col-1" type="checkbox" name="selectproduct" value="${o.iID}">
                        <a href="deleteitem?iid=${o.iID}" class="content-close"><span class="bi bi-x-lg"></span></a>

                        <div class="col-2">
                            <img src="${o.p.image}" alt="">
                        </div>
                        <div class="col-9">
                            <div class="product">
                                <h6 class="product-name">${o.p.name}</h6>
                                <div class="product-price">
                                    <p>${o.p.pricediscount} ₫</p>
                                    <p style="text-decoration: line-through;">${o.p.price} ₫</p>
                                    <div>Giảm ${o.p.discount}%</div>
                                </div>
                                <div class="product-quantity">
                                    <h6>Chọn số lượng :   </h6> 
                                    <a href="changequantity?iid=${o.iID}&type=down"> - </a>
                                    <input type="text" value="${o.quantity}" readonly>
                                    <a href="changequantity?iid=${o.iID}&type=up"> + </a>
                                </div>

                                <div class="product-about">
                                    <div>
                                        ${o.p.detail}</div>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>

                <div class="content-footer">
                    <div class="total">Tổng tiền tạm tính : ${total} ₫</div>
                    <div class="btn-submit">
                        <a href="payment.jsp">Tiến hành Đặt hàng</a>
                        <a href="homeControl">Chọn thêm sản phẩm khác</a>
                    </div>
                </div>
            </form>

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
