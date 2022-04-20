<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">

            <!-- CSS  -->
            <link href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <link href="${pageContext.request.contextPath}/resource/css/overall.css" rel="stylesheet" type="text/css">

            <!-- JS  -->
            <script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
            <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
            <title>Shop Online</title>
        </head>

        <body>
            <div class="container-wrapper">
                <div class="container">
                    <section>
                        <div class="jumbotron">
                            <div class="container">
                                <h1>Agradeço pelos seus serviços!</h1>
                                <p>Seu pedido será entregue em</p>
                            </div>
                        </div>
                        <jsp:include page="/WEB-INF/pagina/countdown.jsp" />
                    </section>
                    <section class="container" style="margin-bottom: 30px;">
                        <p style="text-align: center;">
                            <a href="<spring:url value="/"/>" class="btn btn-default">OK</a>
                        </p>
                    </section>
                </div>
            </div>
        </body>

        </html>
        <jsp:include page="/WEB-INF/pagina/countdown.jsp" />