<%-- 
    Document   : orderDetail
    Created on : Oct 31, 2022, 4:52:50 AM
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
        <title>Order detail</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        
            <div class="col-md-8 offset-md-2">
                <span class="anchor" id="formUserEdit"></span>
                <hr class="my-5">

                <!-- form user info -->
                <div class="card card-outline-secondary">



                    <div class="card-header">
                        <h3 class="mb-0">Thông tin đơn hàng</h3>
                    </div>
                    <div class="card-body">
                        <form class="form" role="form" autocomplete="off" action="pay" method="post">
                        
                            <div class="content-product row">

                               
                                <div class="col-3">
                                    <img src="${itemOrderDetail.p.image}" alt="">
                                </div>
                                <div class="col-9">
                                    <div class="product">
                                        <h6 class="product-name">${itemOrderDetail.p.name}</h6>
                                        <div class="product-price">
                                            <p>${itemOrderDetail.p.pricediscount} ₫</p>
                                            <p style="text-decoration: line-through;">${itemOrderDetail.p.price} ₫</p>
                                            <div>Giảm ${itemOrderDetail.p.discount}%</div>
                                        </div>
                                        <div class="product-quantity">
                                            <h6>Số lượng : </h6> 
                                            
                                            <input type="text" value="${itemOrderDetail.i.quantity}">
                                            
                                        </div>

                                        <div class="product-about">
                                            <div>
                                                ${itemOrderDetail.p.detail}</div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Họ Và Tên</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="${itemOrderDetail.i.fullname}" required name="fullname" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Số Điện Thoại</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="tel" value="${itemOrderDetail.i.sdt}" name="sdt" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Email</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="email" value="${itemOrderDetail.i.email}" name="email" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Địa Chỉ</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="${itemOrderDetail.i.address}" name="address" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Ngày đặt Hàng</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="date" value="${itemOrderDetail.i.date}" name="date" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-3 col-form-label form-control-label">Yêu cầu Khác</label>
                            <div class="col-lg-9">
                                <input class="form-control" type="text" value="${itemOrderDetail.i.note}" name="note" readonly>
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
