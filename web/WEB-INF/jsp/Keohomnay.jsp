<%-- 
    Document   : Keohomnay
    Created on : Apr 10, 2019, 8:06:29 AM
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
    
    <body style="background-image: url(images/quangcao/back.jpg); background-repeat: repeat-x;">
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.htm">Bóng Đá</a>
                </div>
                <ul class="nav navbar-nav">
                    <li ><a href="index.htm">Home</a></li>
                    <li><a href="Trangtructiep.htm">Video</a></li>
                    <li class="active"><a href="Keohomnay.htm">Kèo Hôm Nay</a></li>   
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
        <br/><br/>  <br/>
        <div class="container">
            <div class="col-12">
                <img src="images/quangcao/t1.gif" alt="" width="1140" height="100"/>
                <img src="images/quangcao/t2.gif" alt=""width="1140" height="120"/>
                <img src="images/quangcao/t3.gif" alt=""width="1140"/>
            </div>  
            <br/>
        <p>
            Tỷ lệ bóng đá : cập nhật kèo bóng đá của các trận đấu trong ngày HÔM NAY liên tục khi trận đấu đang diễn ra và thông báo khi tỷ lệ cá cược có sự thay đổi , tự động cập nhật sau 30s bạn không cần phải tải lại trang web !
            Hãy theo dõi sự lên xuống của tỉ lệ cược để có nhận định chính xác nhất về kèo mà bạn đang quan tâm .          
            Chúc các bạn may mắn !
        </p>
        <div> 

            <table class="table ">
                <strong style="color: red"> KEO BONG DA TRUC TUYEN </strong>
                <tr class="btn-danger">                   
                    <th rowspan="2">Ngày</th>
                    <th rowspan="2" style="text-align: center">Tên Đội Bóng</th>
                    <th colspan="4" style="text-align: center"> Cả Trận</th>
                    <th colspan="4"style="text-align: center"> Hiệp 1</th>                      
                </tr>
                <tr class="btn-danger">
                    <th colspan="2" style="text-align: center"> Tỷ Lệ</th>
                    <th>Tài Xỉu</th>
                    <th>1X2</th>
                    <th colspan="2" style="text-align: center">Tỷ Lệ</th>
                    <th>Tài Xỉu</th>
                    <th>1X2</th>  

                </tr>

                <c:forEach var="m" items="${Keos}">
                    <tr  class="table table-hover">

                        <td> <br/> ${m.ngay} <br/></td>                       
                        <td>${m.chunha}<br/>${m.gio}<br/>${m.doikhach}</td>
                        <td>${m.luocchapcn}<br/><br/><br/> ${m.luotchapkhach}</td>
                        <td> ${m.phantramancn}<br/><br/><br/> ${m.phantramandk}</td>                                                                        
                        <td>${m.taixui} &nbsp ${m.luotaancn}<br/><br/><br/> &nbsp &nbsp &nbsp &nbsp ${m.luotandk}</td>                       
                        <td>${m.mxh}</td>
                        <td>${m.luotchapcnhd}<br/><br/><br/>${m.luotchapkhd}</td>                        
                        <td>${m.phanancnhd}<br/><br/><br/>${m.phanandkhd}</td>                                             
                        <td>${m.taixuihd} &nbsp ${m.ptacn}<br/><br/><br/> &nbsp &nbsp &nbsp &nbsp ${m.ptadk}</td>                      
                        <td>${m.mxhhd}</td>                        
                    </tr>
                </c:forEach>
            </table>
            <p style="text-align: center;font-style: initial">188BET THƯỞNG 100% GỬI TIỀN LÊN ĐẾN 1,500,000VNĐ VÀ CƠ HỘI TRÚNG IPHONE 8! </p>
        </div>
    </div>
    <br/>
    <footer style="background-color: #ff6633;width: 100%; height:200px; text-align: center">
        </br> <br/>
        <h1 >Mọi chi tiết xin liên Admin </h>
            </br> 
            <h4>  Email: trantheanh495@gmail.com </h4>
    </footer>
</body>
</html>
