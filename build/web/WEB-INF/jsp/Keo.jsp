<%-- 
    Document   : Keo
    Created on : Mar 28, 2019, 11:24:43 PM
    Author     : trant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <base href="${pageContext.servletContext.contextPath}/">
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            th, td {
                padding: 5px;
                text-align: left;    
            }
        </style>
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
                    <li class="active"><a href="Keo.htm">Kèo Bóng đá</a></li>   
                    <li><a href="XepHang.htm">Xếp Hạng Đội Bóng</a></li>
                </ul>
            </div>
        </nav>
        <br/><br/><br/><br/>
        <div class="container">
            <div> <h3 style="color: #F00"> ${message} </h3>
                <form:form action="Keo.htm"modelAttribute="Keo" method="get">

                    <div class="form-group ">
                        <label>Id</label>
                        <form:input path="id" cssClass="form-control" readonly="true"/>         
                    </div>


                    <div class="form-group">
                        <label>Tên Đội Bóng Chủ Nhà </label>
                        <form:input path="chunha" cssClass="form-control" />
                    </div>


                    <div class="form-group">
                        <label>Ngày</label>                                      
                        <form:input type="date" path="ngay" cssClass="form-control"/>
                    </div>

                    <div class="form-group">
                        <label>Giờ</label>
                        <form:input  path="gio" type="time" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Tên Đội Bóng Khách</label>
                        <form:input path="doikhach" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Tỷ Lệ Lượt Chấp Chủ Nhà</label>
                        <form:input path="luocchapcn" cssClass="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Tỷ Lệ Lượt Chấp Khách</label>
                        <form:input path="luotchapkhach" cssClass="form-control"/>
                    </div>

                    <div class="form-group">
                        <label>Phần Trăm Ăn chủ nhà</label>
                        <form:input path="phantramancn" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Phần Trăm Ăn Đội Khách</label>
                        <form:input path="phantramandk" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Tài Xỉu</label>
                        <form:input path="taixui" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Phần Trăm Ăn Tài Xỉu chủ nhà</label>
                        <form:input path="luotaancn" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Phần Trăm Ăn Tài Xỉu Đội Khách</label>
                        <form:input path="luotandk" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>1X2</label>
                        <form:input path="mxh" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Tỷ Lệ Lượt Chấp Hiệp 1 Chủ Nhà</label>
                        <form:input path="luotchapcnhd" cssClass="form-control"/>
                    </div>
                    <div class="form-group">
                        <label>Tỷ Lệ Lượt Chấp Hiệp 1 Đội Khách</label>
                        <form:input path="luotchapkhd" cssClass="form-control"/>
                    </div>

                    <div class="form-group">
                        <label>Phần Trăm Ăn chủ nhà Hiệp 1</label>
                        <form:input path="phanancnhd" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Phần Trăm Ăn Đội Khách Hiệp 1</label>
                        <form:input path="phanandkhd" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Tài Xỉu Hiệp 1</label>
                        <form:input path="taixuihd" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Phần Trăm Ăn Tài Xỉu chủ nhà Hiệp 1</label>
                        <form:input path="ptacn" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Phần Trăm Ăn Tài Xỉu Đội Khách Hiệp 1</label>
                        <form:input path="ptadk" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>1X2 Hiệp 1</label>
                        <form:input path="mxhhd" cssClass="form-control" />
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
                        <th rowspan="2">id</th>
                        <th rowspan="2">Ngày</th>
                        <th rowspan="2">Tên Đội Bóng</th>
                        <th colspan="4">&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp  Cả Trận</th>
                        <th colspan="4">&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbspHiệp 1</th>
                        <th></th>
                    </tr>
                    <tr class="btn-danger">
                        <th colspan="2"> &nbsp &nbsp &nbsp &nbsp Tỷ Lệ</th>
                        <th>Tài Xỉu</th>
                        <th>1X2</th>
                        <th colspan="2"> &nbsp &nbsp &nbsp &nbsp Tỷ Lệ</th>
                        <th>Tài Xỉu</th>
                        <th>1X2</th>  
                        <th></th>
                    </tr>

                    <c:forEach var="m" items="${Keos}">
                        <tr>
                            <td>${m.id}</td>                      
                            <td style="text-align: center"> <br/>  ${m.ngay} <br/></td>                       
                            <td style="text-align: center">${m.chunha}<br/>${m.gio}<br/>${m.doikhach}</td>
                            <td>${m.luocchapcn}<br/><br/><br/> ${m.luotchapkhach}</td>
                            <td> ${m.phantramancn}<br/><br/><br/> ${m.phantramandk}</td>                                                                        
                            <td>${m.taixui} &nbsp ${m.luotaancn}<br/><br/><br/> &nbsp &nbsp &nbsp &nbsp ${m.luotandk}</td>                       
                            <td>${m.mxh}</td>
                            <td>${m.luotchapcnhd}<br/><br/><br/>${m.luotchapkhd}</td>                        
                            <td>${m.phanancnhd}<br/><br/><br/>${m.phanandkhd}</td>                                             
                            <td>${m.taixuihd} &nbsp ${m.ptacn}<br/><br/><br/> &nbsp &nbsp &nbsp &nbsp ${m.ptadk}</td>                      
                            <td>${m.mxhhd}</td>                        
                            <td><a href="Keo/${m.id}.htm">Edit</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>

            <br/>
           
    </body>
</html>
