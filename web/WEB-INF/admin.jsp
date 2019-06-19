<%-- 
    Document   : admin
    Created on : Apr 12, 2019, 11:51:47 PM
    Author     : trant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.css">      
        <link rel="stylesheet" href="css/style.css">
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
        <section id="gtco-hero" class="gtco-cover" style="background-image: url(images/icons/img_bg_4.jpg);"  data-section="home"  data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-md-offset-0 text-center">
                        <div class="display-t">

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="img-shadow" align="center">
            <img src="images/icons/img_1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by GetTemplates.co">
        </div>


        <section id="gtco-our-team" data-section="our-team">
            <div class="container">
                <div class="row row-pb-md">
                    <div class="col-md-8 col-md-offset-2 heading animate-box" data-animate-effect="fadeIn">
                    </div>
                </div>
                <div class="row team-item gtco-team-reverse">
                    <div class="col-md-6 col-md-push-7 animate-box" data-animate-effect="fadeInRight">
                        <div class="img-shadow">
                            <img src="images/icons/img_team_1.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by GetTemplates.co">
                        </div>
                    </div>
                    <div class="col-md-6  col-md-pull-6 animate-box" data-animate-effect="fadeInRight">
                    </div>
                </div>
                <div class="row team-item gtco-team">
                    <div class="col-md-6 col-md-pull-1 animate-box"  data-animate-effect="fadeInLeft">
                        <img src="images/icons/img_team_2.jpg" class="img-responsive" alt="Free HTML5 Bootstrap Template by GetTemplates.co">
                    </div>
                </div>
            </div>

        </section>
        <br/>
        <br/>
        <footer>
            <div class="a"> Admin</div>
        </footer>

    </body>
</html>






