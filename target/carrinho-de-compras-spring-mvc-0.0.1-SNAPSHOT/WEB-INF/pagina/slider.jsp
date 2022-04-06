<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html lang="pt-br">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">

            <!-- CSS  -->
            <link href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <link href="${pageContext.request.contextPath}/resource/css/overall.css" rel="stylesheet" type="text/css">

            <!-- CSS  -->
            <script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
            <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
            <title>Document</title>
        </head>

        <body>
            <!--slider-->
            <div class="jumbotron">
                <div class="container">
                    <br>
                    <div class="carousel slide" id="myCarousel" data-ride="carousel">
                        <!--indicadores-->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>
                            <li data-target="#myCarousel" data-slide-to="4"></li>
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="<c:url value="/resource/imagens/oppo.jpg"/>" alt="Image1" width="460" height="345">
                            </div>
                            <div class="item">
                                <img src="<c:url value="/resource/imagens/oppo1.jpg"/>" alt="Image2" width="460" height="345">
                            </div>
                            <div class="item">
                                <img src="<c:url value="/resource/imagens/oppo2.jpg"/>" alt="Image3" width="460" height="345">
                            </div>
                            <div class="item">
                                <img src="<c:url value="/resource/imagens/oppo3.jpg"/>" alt="Image4" width="460" height="345">
                            </div>
                            <div class="item">
                                <img src="<c:url value="/resource/imagens/oppo4.png"/>" alt="Image5" width="460" height="345">
                            </div>
                        </div>

                        <!--controle esquerdo e direito-->
                        <a href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Anterior</span>
                        </a>
                        <a href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Proxímo</span>
                        </a>
                    </div>
                </div>
            </div>
        </body>

        </html>