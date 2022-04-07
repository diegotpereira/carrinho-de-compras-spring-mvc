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

            <!-- CSS  -->
            <script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
            <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>

            <title>Informação do Usuário</title>
        </head>

        <body>
            <jsp:include page="/WEB-INF/pagina/navbar.jsp" />
            <h3>Olá: ${usuario.emailId}</h3>

            Usuário Nome: <b>${usuario.emailId}</b> <br />

            <jsp:include page="/WEB-INF/pagina/footer.jsp" />
        </body>

        </html>