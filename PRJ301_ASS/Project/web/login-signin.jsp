<%-- 
    Document   : login-signin
    Created on : Oct 24, 2022, 2:16:29 AM
    Author     : trant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="input-box">
    <div class="input-container">
        <div class="input-close" onclick="closeInput(0)">
            <span class="bi bi-x-lg"></span>
        </div>
        <div class="input-body">
            <h1>Login</h1>
            <div class="row input-input ">
                <div class="input-icon col-2"><span class="ti-user"></span></div>
                <div class="col-10 "><input type="text" placeholder="UserName" name="username"></div>
            </div>
            <div class="row input-input">
                <div class="input-icon col-2"><span class="ti-lock"></span></div>
                <div class="col-10 "><input type="password" placeholder="Password" name="password"></div>

            </div>
        </div>

        <div class="input-buttom">
            <button type="submit">Login</button>
            <p>Not a member?<a href="">Sign up now</a></p>
        </div>
    </div>
</div>
<div class="input-box">
    <div class="input-container">
        <div class="input-close" onclick="closeInput(1)">
            <span class="bi bi-x-lg"></span>
        </div>
        <div class="input-body">
            <h1>Sign Up</h1>

            <div class="row input-input ">
                <div class="input-icon col-2"><span class="ti-user"></span></div>
                <div class="col-10 "><input type="text" placeholder="FullName " name="FullName "></div>
            </div>
            <div class="row input-input ">
                <div class="input-icon col-2"><span class="ti-email"></span></div>
                <div class="col-10 "><input type="text" placeholder="Email" name="Email"></div>
            </div>
            <div class="row input-input ">
                <div class="input-icon col-2"><span class="ti-user"></span></div>
                <div class="col-10 "><input type="text" placeholder="SĐT" name="SĐT"></div>
            </div>

            <div class="row input-input ">
                <div class="input-icon col-2"><span class="ti-user"></span></div>
                <div class="col-10 "><input type="text" placeholder="UserName" name="username"></div>
            </div>
            <div class="row input-input">
                <div class="input-icon col-2"><span class="ti-lock"></span></div>
                <div class="col-10 "><input type="password" placeholder="Password" name="password"></div>

            </div>
            <div class="row input-input">
                <div class="input-icon col-2"><span class="ti-lock"></span></div>
                <div class="col-10 "><input type="password" placeholder="Confirm Password" name="Confirm Password"></div>
            </div>
        </div>


        <div class="input-buttom">
            <button type="submit">Sign Up</button>

        </div>
    </div>
</div>
