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
      
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <p class="navbar-brand"> Admin </p>
                </div>
                <ul class="nav navbar-nav">
                   <ul class="nav navbar-nav">
                   <li><a href="Baivietphai.htm">Bảng Tin Bên Phải</a></li>
                    <li><a href="Hanggiua.htm">Bảng Tin Ở Giữa</a></li>                     
                    <li><a href="Tinthethao.htm">Bảng Tin Thể Thao Dưới</a></li>
                    <li class="active"><a href="Tructiep.htm">Video Bóng đá</a></li>
                    <li><a href="Keo.htm">Kèo Bóng đá</a></li>   
                    <li><a href="XepHang.htm">Xếp Hạng Đội Bóng</a></li>
                </ul>
                </ul>
               
            </div>
        </nav>
        
        <br/><br/><br/><br/>
        <div class="container">
            <div><h3 style="color: #F00"> ${message} </h3>
                <form:form action="Tructiep.htm"modelAttribute="Tructiep" method="get">

                    <div class="form-group ">
                        <label>Id</label>
                        <form:input path="id" cssClass="form-control" readonly="true"/>         
                    </div>

                    <div class="form-group">
                        <label>Tên Giải Đấu</label>
                        <form:select path="tengiai" cssClass="form-control">
                            <form:option value="UEFA Champions League">UEFA Champions League</form:option>
                            <form:option value="UEFA Europa League">UEFA Europa League</form:option>
                            <form:option value="UEFA Cup Winners' Cup">UEFA Cup Winners' Cup</form:option>
                            <form:option value="Premier League">Premier League</form:option>
                            <form:option value="Ekstraklasa">Ekstraklasa</form:option>
                            <form:option value="Jupiler Pro League">Jupiler Pro League</form:option>
                            <form:option value="Primeira Liga">Primeira Liga</form:option>
                            <form:option value="Bundesliga">Bundesliga</form:option>
                            <form:option value="Ligue 1">Ligue 1</form:option>
                            <form:option value="Chempionat Rossii po Futbolu">Chempionat Rossii po Futbolu</form:option>
                            <form:option value="La Liga">La Liga</form:option>
                            <form:option value="Allsvenskan">Allsvenskan</form:option>
                            <form:option value="Super League">Super League</form:option>
                            <form:option value="Serie A">Serie A</form:option>
                            <form:option value="CONCACAF Champions League">CONCACAF Champions League</form:option>
                            
                        </form:select>
                    </div>

                    <div class="form-group">
                        <label>Thời Gian</label>                                      
                        <form:input path="thoigian"  type="time" cssClass="form-control"/>
                    </div>

                    <div class="form-group">
                        <label>Hình chủ nhà</label>
                        <form:input  path="hinhcn" type="file" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Đội Chủ Nhà</label>
                        <form:input  path="chunha" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Hình Đội Khách</label>
                        <form:input path="hinhdk" type="file" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Đội Đội Khách</label>
                        <form:input path="khach" cssClass="form-control" />
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
                        <th>Tên Giải Đấu</th>
                        <th >Thời Gian</th>
                        <th >Hình chủ nhà</th>
                        <th >Đội Chủ Nhà</th>
                        <th >Hình Đội Khách</th>
                        <th >Đội Đội Khách</th>
                        <th></th>
                    </tr>
                    <c:forEach var="m" items="${Tructieps}">
                        <tr>
                            <td>${m.id}</td>   
                            <td>${m.tengiai}</td>  
                            <td ><image src="images/${m.hinhcn}" style="height: 50px;width: 50px"/></td>                       
                            <td>${m.chunha}</td>                         
                            <td>${m.thoigian}}</td>
                            <td>${m.khach}</td>        
                            <td ><image src="images/${m.hinhdk}" style="height: 50px;width:50px"/></td>    
                            <td><a href="Tructiep/${m.id}.htm"/>Edit</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
    </body>
</html>
