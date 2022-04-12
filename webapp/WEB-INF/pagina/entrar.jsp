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
            <link href="${pageContext.request.contextPath}/resource/css/header.css" rel="stylesheet" type="text/css">

            <!-- CSS  -->
            <script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
            <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
            <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>

            <title>Shop Online</title>

            <style type="text/css">
                @media ( min-width: 1200px).container {
                    width: 1300 px;
                }
                
                @media ( min-width: 992px).col-md-4 {
                    margin-left: 330px;
                }
            </style>
        </head>

        <body>

            <jsp:include page="/WEB-INF/pagina/navbar.jsp" />
            <div class="container" style="margin-top: 30px; margin-bottom: 180px;">
                <div class="col-md-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title" align="center">Entrar</h3>
                        </div>
                        <!--será exibido após o formulário contato for registrado com sucesso-->
                        <div class="panel-body">
                            <c:if test="${!empty consultaSucesso}">
                                <div class="error" style="color: #ff0000;">${consultaSucesso}</div>
                            </c:if>
                            <form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
                                <fieldset>
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="E-mail" name="j_username" />
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Senha" name="j_password" />
                                    </div>
                                    <div class="checkbox">
                                        <div class="error" style="color: #ff0000;"></div>
                                    </div>
                                    <div id="button">
                                        <button type="submit" class="btn btn-sm btn-success" style="margin-right: 79px; margin-left: 60px;">
											Entrar
										</button>
                                        <a href="/cliente/registrar" class="btn btn-sm btn-success">Registrar</a>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="/WEB-INF/pagina/footer.jsp" />
        </body>

        </html>