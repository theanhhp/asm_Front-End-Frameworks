<%-- 
    Document   : Trangtructiep
    Created on : Apr 12, 2019, 7:46:46 AM
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
        <link href="css/element.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>

    </head>

    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.htm">Bóng Đá</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="index.htm">Home</a></li>
                    <li class="active"><a href="Trangtructiep.htm">Video</a></li>
                    <li><a href="Keohomnay.htm">Kèo Hôm Nay</a></li>   
                    <li><a href="Hoidap.htm">Hỏi Đáp</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Tiếng Việt <span class="caret"></span></a>
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
        <br/>
        <br/><br/>
        <div class="container">
            <div class="group-banner">              
                <div class="col-sm-12"> 
                    <img src="images/quangcao/quangcao.gif" width="1170" height="100" />  
                </div>                  
                <div class="col-sm-12"> 
                    <img src="images/quangcao/a.gif" width="1170" height="100" />                    
                </div>
                <div class="col-sm-12"> 
                    <img src="images/quangcao/b.gif" width="1170" height="100" />                    
                </div>
                <div class="col-sm-12"> 
                    <img src="images/quangcao/tren.gif" width="1170" height="100" />     
                </div>
                <div class="col-sm-12"> 
                    <img src="images/quangcao/tren1.gif" width="1170" height="100" />                    
                </div>
            </div>


            <div class="panel-group">
                <div class="panel panel-heading">                 
                        <h3> TƯỜNG THUẬT TRỰC TIẾP </h3>                                       
                </div>             
            </div>
            <div class="col-sm-2">
                <img src="images/quangcao/phai.gif" alt=""/>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover ">                  
                    <c:forEach var="m" items="${Tructieps}">
                        
                        <tr class="danger">                              
                            <td rowspan="2" style="text-align: center">${m.tengiai} <br/> ${m.thoigian}</td>  
                            <td ><image src="images/logo/${m.hinhcn}" style="height: 50px;width: 50px"/></td>                       
                            <td>${m.chunha}</td>                         
                            <td><h4>VS</h4></td>                 
                            <td>${m.khach}</td>        
                            <td ><image src="images/logo/${m.hinhdk}" style="height: 50px;width:50px"/></td>    

                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="col-sm-2">
                <%--   <div class="content-col-right">  --%>
                <img src="images/quangcao/trai3.gif" alt="theothao" width="227" height="270" />
                <img src="images/quangcao/trai1.gif" alt="theothao" width="227" height="270" />
                <img src="images/quangcao/trai2.gif" alt="theothao"width="227" height="270" />
                <img src="images/quangcao/trai.gif" alt="thethao"width="227" height="270" />
            </div>

        </div> <%--container --%>


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
