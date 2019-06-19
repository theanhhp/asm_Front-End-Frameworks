<%-- 
    Document   : index
    Created on : Apr 9, 2019, 8:16:16 AM
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
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <base href="${pageContext.servletContext.contextPath}/">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
            /* Make the image fully responsive */
            .carousel-inner img {
                width: 100%;
                height: 10px;

            }
        </style>
    </head>
    <body style="background:#66512c ">

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.htm">Bóng Đá</a>
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

        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/hinhnen/c.jpg" alt="Los Angeles">
                </div>

                <div class="item">
                    <img src="images/hinhnen/d.jpg" alt="Chicago">
                </div>

                <div class="item">
                    <img src="images/hinhnen/a.JPG" alt="New York">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <!--===============================================================================================-->


        <!--===============================================================================================-->
        <div class="container" >
            <div class="row" >
                <div class="col-md-12">
                    <div class="col-md-8">
                        <div class="panel panel-default" >
                            <div class="panel-heading">
                                <h3 class="panel-title">Bài Viết</h3> 
                            </div>
                            <div class="panel-body">

                                <p class="article-thumbnail">
                                    <a href="https://news.zing.vn/khi-park-ji-sung-cung-chao-thua-son-heung-min-post937013.html">
                                        <img src="images/i.jpg" alt="" height="300px" width="500px"/>
                                    </a>
                                </p>              
                                <header>
                                    <p class="article-title">
                                        <a href="https://news.zing.vn/khi-park-ji-sung-cung-chao-thua-son-heung-min-post937013.html"
                                           title="Khi Park Ji-sung cũng chào thua Son Heung-min.">
                                            Khi Park Ji-sung cũng chào thua Son Heung-min</a>
                                    </p>
                                    <p class="article-meta">

                                        <span class="category">Thời sự</span>

                                        <span class="article-publish">
                                            <span class="time">13:11</span>
                                            <span class="date">15/03/2019</span>
                                        </span>


                                    </p>
                                    <p class="article-summary">Tiền đạo người Hàn Quốc có một năm bùng nổ cùng Tottenham Hotspur khi liên tiếp tỏa sáng trong những trận đấu quan trọng của mùa giải..</p>

                                    <ul class="article-related">
                                        <li class=" type-video"><a href="https://news.zing.vn/con-ai-noi-var-giet-chet-cam-xuc-cua-bong-da-post937009.html"
                                                                   title="Còn ai nói VAR giết chết cảm xúc của bóng đá?">
                                                Còn ai nói VAR giết chết cảm xúc của bóng đá?</a></li>
                                    </ul>

                                </header>
                            </div>
                        </div>
                          <img src="images/quangcao/1a.gif" height="125px" width="727px"alt=""/>
                    </div> 
                   
                    <!--===============================================================================================-->
                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Bài Viết Nhất </h3> 
                            </div>
                            <div class="panel-body">
                                <table>
                                    <c:forEach var="m" items="${Baivietphais}">
                                
                                            <tr>     
                                                <td style=" padding:10px" > <a href="${m.link}">* ${m.tieude}</a></td>                                                                                                               
                                            </tr>                                       
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                    </div>   
                </div>
                <br/>
                <!--===============================================================================================-->

                <br/>
                <div class="row">
                    <div class="col-md-12 thumbnail">
                        <c:forEach var="m" items="${Hanggiuas}">                     
                            <div class="col-md-3 col-lg-3" style=" padding: 20px;">                                      
                                <image src="images/${m.hinh}" style="height: 207px;width: 258px"/> 
                                <br/>
                                <p style="text-align: justify; width: 258px; height: 30px"> ${m.tieude}</p>                                                                
                            </div>    
                        </c:forEach>
                    </div>
                </div> 

                <!--===============================================================================================-->
                <header>
                    <strong> <h3 style="color: #F00">MỚI NHẤT</h3></strong>
                </header>
                <!--===============================================================================================-->
                <div class="row">
                    <div class="col-md-8 thumbnail">
                        <table>
                            <c:forEach var="m" items="${Tinthethaos}">

                                <tr >
                                    <th rowspan="3" style="margin-bottom: 10px; border: 15px solid #fff;">
                                        <image src="images/${m.hinh}" style="height:150px;width:250px"/>
                                    </th>
                                    <td>
                                        <br/>
                                        <strong>  <span style="font-variant: all-petite-caps">${m.tieude}</span> </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>  
                                        ${m.gio} &nbsp  ${m.ngay}
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p > <strong style="text-align: justify;">  ${m.mota} </strong></p>
                                    </td>
                                </tr>

                            </c:forEach>

                        </table>
                    </div> 
                    <!--===============================================================================================-->

                    <div class="col-md-4"> 
                        <table class="table-bordered" style="background-color: #fff" >
                            <tr class="btn-danger">
                                <td>Tên Đội Bóng</td>
                                <td>Số Trận Đá</td>
                                <td>Số Trận Thắng</td>
                                <td>Số Trận Hòa</td>
                                <td>Số Trận Thua</td>
                                <td>Số bàn Thắng</td>
                                <td>Điểm</td>
                            </tr>
                            <c:forEach var="m" items="${XepHangs}">
                                <tr>
                                    <td>${m.tendoibong}</td>
                                    <td>${m.sotran}</td>
                                    <td>${m.thang}</td>
                                    <td>${m.hoa}</td>
                                    <td>${m.bai}</td>
                                    <td>${m.sobanthang}</td>
                                    <td>${m.diem}</td>                                  
                                </tr>
                            </c:forEach>
                        </table>
                        <br/><br/><br/>
                        <div style="text-align: center">
                            <img src="images/quangcao/q.jpg" alt=""/>
                        </div>
                    </div>




                    <!--===============================================================================================-->

                    <!--===============================================================================================-->
                </div> 
            </div><!--container-->
        </div>
        <!--===============================================================================================-->
        <br/>
        <footer style="background-color: #ff6633;width: 100%; height:200px; text-align: center">
            </br> <br/>

            <h1 >Mọi chi tiết xin liên hệ
                
                Admin </h>
                </br> 
                <h4>  Email: trantheanh495@gmail.com </h4>
        </footer>
    </body>
</html>
