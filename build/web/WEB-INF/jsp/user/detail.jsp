<%-- 
    Document   : detail
    Created on : Apr 18, 2019, 11:55:09 PM
    Author     : trant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <base href="${pageContext.servletContext.contextPath}/">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
         <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.htm">WebSiteName</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.htm">Home</a></li>
                    <li><a href="Trangtructiep.htm">Video</a></li>
                    <li><a href="Keohomnay.htm">Kèo Hôm Nay</a></li>   
                    <li><a href="Hoidap.htm">Hỏi đáp</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Tiếng việt <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">English</a></li>                          
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
            </div>
        </nav>
          <h1 class="w3-xxxlarge w3-text-red"><b>User Details</b></h1>
        <hr style="width:50px;border:5px solid red" class="w3-round">
        <ul>
            <li>Tên đang nhập: ${user.username}</li>
            <li>Mật Khẩu: ${user.password}</li>
            <li>Họ và Tên: ${user.fullname}</li>

        </ul>
            
             <br/>
          <br/>
         <footer style="background-color: #ff6633;width: 100%; height:200px; text-align: center">
            </br> <br/>

            <h1 >Mọi chi tiết xin liên Admin </h>
                </br> 
                <h4>  Email: trantheanh495@gmail.com </h4>
        </footer>
    </body>
</html>
