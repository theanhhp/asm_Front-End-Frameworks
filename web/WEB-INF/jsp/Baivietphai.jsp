<%-- 
    Document   : Baivietphai
    Created on : Apr 18, 2019, 10:58:58 PM
    Author     : trant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <base href="${pageContext.servletContext.contextPath}/">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/angular.min.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">

                    <p class="navbar-brand"> Admin </p>
                </div>
                <ul class="nav navbar-nav">

                    <li class="active"><a href="Baivietphai.htm">Bảng Tin Bên Phải</a></li>
                    <li><a href="Hanggiua.htm">Bảng Tin Ở Giữa</a></li>   
                    <li><a href="Tintheothao.htm">Bảng Tin Thể Thao Dưới</a></li>
                    <li><a href="Tructiep.htm">Video Bóng đá</a></li>                   
                    <li><a href="Keo.htm">Kèo Bóng đá</a></li>   
                    <li><a href="XepHang.htm">Xếp Hạng Đội Bóng</a></li>
                </ul>

            </div>
        </nav>
        <br/><br/><br/><br/>
        <div class="container" ng-app="myapp" ng-controller="myctrl">
            <div> <h3 style="color: #F00"> ${message} </h3>
                <form:form action="Baivietphai.htm" modelAttribute="Baivietphai" method="get" name="frmBonus">

                    <div class="form-group ">
                        <label>Id</label>
                        <form:input path="id" cssClass="form-control" readonly="true"/>         
                    </div>
                    <div class="form-group">
                        <label>Tiêu Đề</label>
                        <form:input path="tieude" cssClass="form-control" ng-model="chu" required="required"  />
                        <span ng-show="frmBonus.tieude.$invalid">
                            Vui lòng nhập Tiêu đề
                        </span>
                    </div>

                    <div class="form-group">
                        <label>Link</label>
                        <form:input path="link" cssClass="form-control"ng-model="full" required="required"  />
                        <span ng-show="frmBonus.link.$invalid">
                            Vui lòng nhập Link
                        </span>
                    </div>



                    <div class="form-group text-center">
                        <button name="btnInsert" class="btn btn-success">Insert</button>
                        <button name="btnUpdate" class="btn btn-success">Update</button>
                        <button name="btnDelete" class="btn btn-success">Delete</button>
                        <button name="btnReset" class="btn btn-success">Reset</button>
                    </div>
                </form:form>

                <table class="table table-hover">
                    <tr>
                        <th>Id</th>
                        <th>Tiêu Đề</th>
                        <th>Link</th>

                        <th></th>
                    </tr>
                    <c:forEach var="m" items="${Baivietphais}">
                        <tr>
                            <td>${m.id}</td>   
                            <td>${m.tieude}</td>                     
                            <td>${m.link}</td>                         


                            <td><a href="Baivietphai/${m.id}.htm"/>Edit</a></td>
                        </tr>
                    </c:forEach>

                </table>
            </div>
            <script>
                var app = angular.module("myapp", []);
                app.controller("myctrl", function ($scope) {

                });
            </script>
    </body>
</html>
