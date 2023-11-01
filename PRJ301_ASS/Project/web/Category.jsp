<%-- 
    Document   : Category
    Created on : Oct 21, 2022, 5:12:12 PM
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
        <c:set var="c" value="${requestScope.category}"/>
        <jsp:include page="header.jsp"></jsp:include>


        <!--        <div class="slider row">
                    <div class="col-md-3">
        
                        <div class="nav-menu">
                            <h2>danh mục</h2>
                            <ul class="product-list">
        <c:forEach items="${listCategory}"  var="i">
            <li class="list-group-item "><a href="category?cid=${i.id}" class="nav-link active">${i.categoryName}</a></li>
            
        </c:forEach>


</ul>
</div>
</div>
<div class="col-md-9">
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
<div class="carousel-inner">
    <div class="carousel-item active">
        <img src="./assets/Slider/apple-du-kien-ra-mat-iphone-man-hinh-gap-ifan-da-gom-du-lua-chua-220108055847.jpg"
             class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
        <img src="./assets/Slider/apple-macbook-air-2015-11-6inch.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
        <img src="./assets/Slider/mpl1661130075.jpg" class="d-block w-100" alt="...">
    </div>
</div>
<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
</a>
<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
</a>
</div>
</div>
</div>-->


        <div class="content">
            <div class="category row">

                <h1>${anh}</h1>
            </div>
            <div class="subcategory row">
                <div class="list-brand">
                    <c:forEach items="${listSubCategory}" var="o">
                        <a href="subcategory?cid=<%=request.getParameter("cid")%>&scid=${o.id}">${o.name}</a>
                    </c:forEach>

                </div>
            </div>
            <div class="products row">
                <c:forEach items="${listProductOfCategory}" var="product">  
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
                        </div>
                    </div>
                </c:forEach>  
            </div>
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
