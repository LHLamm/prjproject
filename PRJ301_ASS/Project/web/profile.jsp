<%-- 
    Document   : profile
    Created on : Oct 25, 2022, 6:43:19 PM
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
        <title>Profile</title>
    </head>
    <body>
    
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container-xl px-4 mt-4">
            <!-- Account page navigation-->


            <div class="row">
                <!-- <div class="col-xl-4">
                      
                      <div class="card mb-4 mb-xl-0">
                          <div class="card-header">Profile Picture</div>
                          <div class="card-body text-center">
                              
                              <img class="img-account-profile rounded-circle mb-2" src="http://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                              
                              <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                         
                              <button class="btn btn-primary" type="button">Upload new image</button>
                          </div>
                      </div>
                  </div> -->
                <div class="col-xl-8 mx-auto">
                    <!-- Account details card-->
                    <div class="card mb-4">
                        <div class="card-header">Account Details</div>
                        <div class="card-body">
                            <form action="profile" method="post">
                                <!-- Form Group (username)-->

                                <!-- Form Row-->
                                <div class="row gx-3 mb-3">
                                    <!-- Form Group (first name)-->
                                    <div class="col-md-12" style="display: none">
                                        <label class="small mb-1" for="inputFirstName">UserName</label>
                                        <input class="form-control" id="inputFirstName" type="text" placeholder="Enter your UserName"
                                               value="${sessionScope.acc.username}" name="username">
                                    </div>
                                    <div class="col-md-12" style="display: none">
                                        <label class="small mb-1" for="inputFirstName">Pass</label>
                                        <input class="form-control" id="inputFirstName" type="password" placeholder="Enter your Password"
                                               value="${sessionScope.acc.password}" name="password">
                                    </div>
                                    <!-- Form Group (last name)-->

                                </div>
                                <div class="row gx-3 mb-3">
                                    <!-- Form Group (first name)-->
                                    <div class="col-md-12">
                                        <label class="small mb-1" for="inputFirstName">FullName</label>
                                        <input class="form-control" id="inputFirstName" type="text" placeholder="Enter your FullName"
                                               value="${sessionScope.acc.fullName}" name="fullname">
                                    </div>
                                    <!-- Form Group (last name)-->

                                </div>
                                <!-- Form Row        -->
                                <div class="row gx-3 mb-3">
                                    <!-- Form Group (organization name)-->

                                    <!-- Form Group (location)-->
                                    <div class="col-md-12">
                                        <label class="small mb-1" for="inputLocation">Location</label>
                                        <input class="form-control" id="inputLocation" type="text" placeholder="Enter your location"
                                               value="${sessionScope.acc.address}" name="address">
                                    </div>
                                </div>
                                <!-- Form Group (email address)-->
                                <div class="mb-3">
                                    <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                    <input class="form-control" id="inputEmailAddress" type="email" placeholder="Enter your email address"
                                           value="${sessionScope.acc.email}" name="email">
                                </div>
                                <!-- Form Row-->
                                <div class="row gx-3 mb-3">
                                    <!-- Form Group (phone number)-->
                                    <div class="col-md-6">
                                        <label class="small mb-1" for="inputPhone">Phone number</label>
                                        <input class="form-control" id="inputPhone" type="tel" placeholder="Enter your phone number"
                                               value="${sessionScope.acc.sdt}" name="sdt">
                                    </div>
                                    <!-- Form Group (birthday)-->
                                    <div class="col-md-6">
                                        <label class="small mb-1" for="inputBirthday">Birthday</label>
                                        <input class="form-control" id="inputBirthday" type="date" name="date" placeholder="Enter your birthday" value="${sessionScope.acc.date}" min="1990-01-01" max="2022-26-10" name="date">
                                    </div>
                                </div>

                                <!-- Save changes button-->
                                <button class="btn btn-primary" type="submit">Save changes</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
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
