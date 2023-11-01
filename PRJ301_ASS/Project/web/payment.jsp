<%-- 
    Document   : payment
    Created on : Oct 28, 2022, 1:04:14 AM
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
        <link rel="stylesheet" href="./assets/orderstyle.css">
        <link rel="stylesheet" href="./assets/style.css"/>
        <title>Thông Tin Đặt Hàng</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <c:set value="${sessionScope.acc}" var="acc"></c:set>
            <div class="col-md-8 offset-md-2">
                <span class="anchor" id="formUserEdit"></span>
                <hr class="my-5">

                <!-- form user info -->
                <div class="card card-outline-secondary">



                    <div class="card-header">
                        <h3 class="mb-0">Thông Tin Đặt Hàng</h3>
                    </div>
                    <div class="card-body">
                        <form class="form" role="form" autocomplete="off" action="pay" method="post">
                        <c:forEach items="${sessionScope.listI}" var="o">
                            <div class="content-product row">

                                <a href="deleteitem?iid=${o.iID}" class="content-close"><span class="bi bi-x-lg"></span></a>

                                <div class="col-3">
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
                                            <h6>Số lượng :   </h6> 
                                            
                                            <input type="text" value="${o.quantity}" readonly>
                                            
                                        </div>

                                        <div class="product-about">
                                            <div>
                                                ${o.p.detail}</div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Họ Và Tên</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="${acc.fullName}" required name="fullname">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Số Điện Thoại</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="tel" value="${acc.sdt}" name="sdt">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Email</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="email" value="${acc.email}" name="email">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Địa Chỉ</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="${acc.address}" name="address">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Yêu cầu Khác</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="" name="note">
                            </div>
                        </div>


                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label"></label>
                            <div class="col-lg-9">

                                <input type="submit" class="btn btn-primary" value="Mua Ngay">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /form user info -->

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
    </body>
</html>
