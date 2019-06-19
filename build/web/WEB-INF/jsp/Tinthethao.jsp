<%-- 
    Document   : Tinthethao
    Created on : Apr 11, 2019, 11:13:57 PM
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
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/angular.min.js" type="text/javascript"></script>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <p class="navbar-brand"> Admin </p>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="Baivietphai.htm">Bảng Tin Bên Phải</a></li>
                    <li><a href="Hanggiua.htm">Bảng Tin Ở Giữa</a></li>                     
                    <li class="active"><a href="Tinthethao.htm">Bảng Tin Thể Thao Dưới</a></li>
                    <li><a href="Tructiep.htm">Video Bóng đá</a></li>
                    <li><a href="Keo.htm">Kèo Bóng đá</a></li>   
                    <li><a href="XepHang.htm">Xếp Hạng Đội Bóng</a></li>
                </ul>
            </div>
        </nav>
        <br/><br/><br/><br/>
        <div class="container" ng-app="myapp" ng-controller="myctrl" >
            <div><h3 style="color: #F00"> ${message} </h3>
                <form:form action="Tinthethao.htm"modelAttribute="Tinthethao" method="get">

                    <div class="form-group ">
                        <label>Id</label>
                        <form:input path="id" cssClass="form-control" readonly="true"/>         
                    </div>


                    <div class="form-group">
                        <label>Hình ảnh </label>
                        <form:input path="hinh" type="file" cssClass="form-control" />
                    </div>


                    <div class="form-group">
                        <label>Tiêu Đề</label>                                      
                        <form:input path="tieude" cssClass="form-control" ng-model="chu" required="required" />
                         <span ng-show="frmBonus.tieude.$invalid">
                            Vui lòng nhập Tiêu đề
                        </span>
                    </div>

                    <div class="form-group">
                        <label>Giờ</label>
                        <form:input  path="gio" type="time"  cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Ngày</label>
                        <form:input  path="ngay" type="date"  cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Mô Tả</label>
                        <form:input path="mota" cssClass="form-control"  ng-model="ca" required="required" />
                         <span ng-show="frmBonus.mota.$invalid">
                            Vui lòng nhập mô tả
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
                    <tr class="btn-danger">
                        <th >Id</th>
                        <th>Hình ảnh</th>
                        <th >Tiêu Đề </th>
                        <th >Ngày Giờ</th>
                        <th >Mô Tả</th>
                        <th></th>
                    </tr>

                    <c:forEach var="m" items="${Tinthethaos}">
                        <tr>
                            <td>${m.id}</td>                      
                            <td ><image src="images/${m.hinh}" style="height: 100px;width: 170px"/></td>                       
                            <td>${m.tieude}</td>
                            <td>${m.gio} ${m.ngay}</td>
                            <td>${m.mota}</td>                                                                                                                                           
                            <td><a href="Tinthethao/${m.id}.htm"/>Edit</a></td>
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
