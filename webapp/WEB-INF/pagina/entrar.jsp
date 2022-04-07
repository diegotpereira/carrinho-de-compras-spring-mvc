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
            <div class="container" style="margin-top: 30px; margin-bottom: 180px;">
                <div class="col-md-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title" align="center">Entrar</h3>
                        </div>
                        <div class="panel-body">
                            <form name="loginForm">
                                <fieldset>
                                    <div class="form-group">
                                        <input type="email" class="form-group" placeholder="E-mail" name="j_usuarionome" />
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-group" placeholder="Senha" name="j_password" />
                                    </div>
                                    <div class="checkbox">
                                        <div class="error" style="color: #ff0000"></div>
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