<%-- 
    Document   : header
    Created on : Oct 24, 2022, 2:06:19 AM
    Author     : trant
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="header">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="homeControl">
            <img src="./assets/Apple_logo_black.svg.png" width="30" height="30" alt="">
        </a>

        <a class="navbar-brand" href="homeControl">STORE</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">

                <li class="nav-item dropdown">
                    <!--                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                           aria-haspopup="true" aria-expanded="false">
                                            PRODUCT
                                        </a>-->
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                
                <li class="nav-item active">
                    <c:if test="${sessionScope.acc == null}">
                    <a class="nav-link" href="login.jsp">Đơn Hàng <span class="sr-only">(current)</span></a>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                    <a class="nav-link" href="loadOrder?accName=${sessionScope.acc.username}">Đơn Hàng <span class="sr-only">(current)</span></a>
                    </c:if>
                </li>
                
                
                <li class="nav-item active">
                    <c:if test="${sessionScope.acc == null}">
                    <a class="nav-link" href="login.jsp">Giỏ Hàng <span class="sr-only">(current)</span></a>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                    <a class="nav-link" href="cart?accName=${sessionScope.acc.username}">Giỏ Hàng <span class="sr-only">(current)</span></a>
                        
                    </c:if>
                </li>

            </ul>
            <form class="form-inline my-2 my-lg-0 search" action="search" method="post">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="text">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>

            </form>
            <c:if test="${sessionScope.acc == null}">
                <form class="form-inline my-2 my-lg-0">
                    <a href="login.jsp" class="btn btn-outline-success my-2 my-sm-0 btn-nav">Login</a>
                    <a href="signup.jsp" class="btn btn-outline-success my-2 my-sm-0 btn-nav">Sign Up</a>
                </form>
            </c:if>
            <c:if test="${sessionScope.acc != null}">            
                <form class="form-inline my-2 my-lg-0">
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            ${sessionScope.acc.fullName}
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="profile.jsp">Profile</a>
                            <a class="dropdown-item" href="changepassword.jsp">Change Password</a>
                            <a class="dropdown-item" href="logout">Logout</a>
                        </div>
                    </div>
                </form>
            </c:if>
            <c:if test="${sessionScope.acc != null && sessionScope.acc.roll == 1}">  
                <form class="form-inline my-2 my-lg-0">
                    <a href="admin.jsp" class="btn btn-outline-success my-2 my-sm-0 btn-nav">Admin</a>

                </form>
            </c:if>
        </div>
    </nav>
</div>

