<%-- 
    Document   : register
    Created on : Apr 18, 2019, 11:59:37 PM
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
    </head>
    <body>
      
        
         <div class="box"> <h1>Đăng Kí tài Khoản</h1></div>  
        ${message}
        <form:form action="user/register.htm" modelAttribute="user">
            <div class="form-group">
                <label>Tên đang nhập</label>
                <form:input path="username" cssClass="form-control"/>
                <form:errors path="username"/>
            </div>

            <div class="form-group">
                <label>Mật Khẩu</label>
                <form:input path="password" cssClass="form-control"/>
                 <form:errors path="password"/>
            </div>

            <div class="form-group">
                <label>Họ và Tên</label>
                <form:input path="fullname" cssClass="form-control"/>
                 <form:errors path="fullname"/>
            </div>

            <div class="box">
                <button >Register</button>
            </div>
        </form:form>
        
        

        <footer style="background-color: #ff6633;width: 100%; height:200px; text-align: center">
            </br> <br/>

            <h1 >Mọi chi tiết xin liên Admin </h>
                </br> 
                <h4>  Email: trantheanh495@gmail.com </h4>
        </footer>
    </body>
</html>
