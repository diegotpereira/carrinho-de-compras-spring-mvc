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
            <title>Shop Online</title>
        </head>

        <body>
            <jsp:include page="/WEB-INF/pagina/navbar.jsp" />
            <div class="row" style="margin-top: 4px; margin-right: 0px; margin-left: 0px; margin-bottom: 19px;">
                <div class="col-sm-4" style="margin-top: 0px;">
                    <h3>Quem sou eu?</h3>
                    <img src="<c:url value="/resource/imagens/aboutImage.png"/>" class="img-circle" alt="Sobre" width="350" height="350">
                    <h3>Loja Online E-Commerce Site</h3>
                </div>
            </div>
            <div class="container-fluid bg-2 text-center">
                <h3>Quem sou eu?</h3>
                <div id="para">
                    <p>
                        Loja Online criada no Rio Grande do Sul
                    </p>
                </div>
                <div id="para">
                    <p>
                        Uma história de sucesso
                    </p>
                </div>
            </div>
            <jsp:include page="/WEB-INF/pagina/footer.jsp" />
        </body>

        </html>