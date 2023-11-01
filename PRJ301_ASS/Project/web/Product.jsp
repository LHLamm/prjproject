<%-- 
    Document   : Product
    Created on : Oct 24, 2022, 12:53:03 AM
    Author     : trant
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./themify-icons/themify-icons.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="./assets/style.css"/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <c:set var="p" value="${requestScope.product}"/>


        <div class="container mt-2">
            <div class=" border p-3 main-section bg-white">

                <div class="row m-0">
                    <div class="col-lg-4 left-side-product-box pb-3">
                        <img src="${p.image}" class="border p-3">

                    </div>
                    <div class="col-lg-8">
                        <div class="right-side-pro-detail border p-3 m-0">
                            <div class="row">
                                <div class="col-lg-12">

                                    <p class="m-0 p-0" style="font-size: 39px;
                                       font-weight: bold;">${p.name}</p>
                                </div>
                                <div class="col-lg-12">
                                    <h3 class="m-0 p-0 price-pro" style="color: red;">${p.pricediscount} ₫</h3>
                                    <p class="m-0 p-0 price-pro" style="text-decoration: line-through;">${p.price} ₫</p>
                                    <hr class="p-0 m-0">
                                </div>
                                <div class="col-lg-12 pt-2">
                                    <h5>Product Detail</h5>
                                    <div>${p.detail}</div>
                                    <hr class="m-0 pt-2 mt-2">
                                </div>
                                <div class="col-lg-12 pt-2">
                                    <h5>Quantity available: </h5>
                                    <span>${p.quantity}</span>
                                    <hr class="m-0 pt-2 mt-2">
                                </div>
                                <form action="addtocart" class="col-lg-12" method="post">
                                    <div class="col-lg-12">
                                        <input type="text" class="form-control text-center w-100" value="${p.id}" name="pid" style="">
                                        <input type="text" class="form-control text-center w-100" value="${sessionScope.acc.username}" name="username" style="">
                                        <h6>Quantity :</h6>
                                        <input type="number" class="form-control text-center w-100" value="1" max="${p.quantity}" min="1" name="quantity">
                                    </div>
                                    <div class="col-lg-12 mt-3">
                                        <div class="row">
                                            <div class="col-lg-6 pb-2">
                                                <c:if test="${sessionScope.acc != null}">
                                                    <input type="submit" class="btn btn-danger w-100" value="Thêm vào giỏ hàng">
                                                </c:if>
                                                <c:if test="${sessionScope.acc == null}">
                                                    <a href="login.jsp" class="btn btn-danger w-100">Thêm vào giỏ hàng</a>
                                                </c:if>
                                            </div>
                                            <div class="col-lg-6">
                                                <a href="#" class="btn btn-success w-100">Mua Ngay</a>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 text-left pt-3" style="text-align: left;">
                        <h4>More Information</h4>
                        <pre>${p.information}</pre>
                    </div>
                </div>

            </div>
        </div>



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
