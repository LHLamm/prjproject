<%-- 
    Document   : signup
    Created on : Oct 24, 2022, 4:42:58 AM
    Author     : trant
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="./assets/logincss.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="logreg-forms">
            
            <form action="signup" class="form-signup" style="display: block" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign Up</h1>
<!--                <div class="social-login">
                    <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign up with Facebook</span> </button>
                </div>
                <div class="social-login">
                    <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign up with Google+</span> </button>
                </div>

                <p style="text-align:center">OR</p>-->
                
                <input type="text" id="user-name" class="form-control" placeholder="Full name" required="" autofocus="" name="fullname">
                <input type="email" id="user-email" class="form-control" placeholder="Email address" required autofocus="" name="email">
                <input type="text" id="user-address" class="form-control" placeholder="Address" required autofocus="" name="address">
                <input type="date" id="user-email" class="form-control" placeholder="BirthDay" required autofocus="" name="date">
                <input type="text" id="user-sdt" class="form-control" placeholder="SÐT" required autofocus="" name="sdt">
                <input type="text" id="user-username" class="form-control" placeholder="UserName" required autofocus="" name="username">
            
                <input type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="" name="password">
                
                <input type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="" name="re-password">
                <h6>${error}</h6>
                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                
            </form>
            <br>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                
    </body>
</html>
