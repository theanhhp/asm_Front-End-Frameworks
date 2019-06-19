<%-- 
    Document   : bangbongda
    Created on : Mar 27, 2019, 10:49:38 PM
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
                    <li><a href="Tinthethao.htm">Bảng Tin Thể Thao Dưới</a></li>
                     <li><a href="Tructiep.htm">Video Bóng đá</a></li>
                    <li><a href="Keo.htm">Kèo Bóng đá</a></li>   
                    <li class="active"><a href="XepHang.htm">Xếp Hạng Đội Bóng</a></li>
                </ul>
               
            </div>
        </nav>
        <br/><br/><br/><br/>
        <div class="container">
        <div> <h3 style="color: #F00"> ${message} </h3>
            <form:form action="XepHang.htm" modelAttribute="XepHang" method="get">

                <div class="form-group ">
                    <label>Id</label>
                    <form:input path="id" cssClass="form-control" readonly="true"/>         
                </div>
                <div class="form-group">
                    <label>Tên Đội Bóng</label>
                    <form:input path="tendoibong" cssClass="form-control" />
                </div>
                
                <div class="form-group">
                    <label>Số Trận Đã Đá</label>
                    <form:input path="sotran" cssClass="form-control" />
                </div>
                
                <div class="form-group">
                    <label>Số Trận Thắng</label>
                    <form:input path="thang" cssClass="form-control"/>
                </div>
                
                <div class="form-group">
                    <label>Số Trận Hòa</label>
                    <form:input path="hoa" cssClass="form-control" />
                </div>
                
                <div class="form-group">
                    <label>Số Trận Thua</label>
                    <form:input path="bai" cssClass="form-control" />
                </div>
                
                <div class="form-group">
                    <label>Tổng Số Bàn Thắng</label>
                    <form:input path="sobanthang" cssClass="form-control"/>
                </div>
                
                 <div class="form-group">
                    <label>Điẻm</label>
                    <form:input path="diem" cssClass="form-control" />
                </div>
                
                <div class="form-group text-center">
                    <button name="btnInsert" class="btn btn-default">Insert</button>
                    <button name="btnUpdate" class="btn btn-default">Update</button>
                    <button name="btnDelete" class="btn btn-default">Delete</button>
                    <button name="btnReset" class="btn btn-default">Reset</button>
                </div>
            </form:form>

            <table class="table table-hover">
                <tr>
                    <th>Id</th>
                    <th>Tên Đội Bóng</th>
                     <th>Số Trận Đá</th>
                    <th>Số Trận Thắng</th>
                     <th>Số Trận Hòa</th>
                    <th>Số Trận Thua</th>
                     <th>Số bàn Thắng</th>
                    <th>Điểm</th>
                    <th></th>
                </tr>
                <c:forEach var="m" items="${XepHangs}">
                    <tr>
                        <td>${m.id}</td>
                        <td>${m.tendoibong}</td>
                        <td>${m.sotran}</td>
                        <td>${m.thang}</td>
                        <td>${m.hoa}</td>
                        <td>${m.bai}</td>
                        <td>${m.sobanthang}</td>
                        <td>${m.diem}</td>
                        <td><a href="XepHang/${m.id}.htm">Edit</a></td>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </body>
</html>





