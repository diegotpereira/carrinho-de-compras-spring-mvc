<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ page isELIgnored="false"%>

            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="ISO-8859-1">

                <!-- CSS  -->
                <link href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                <!--<link href="${pageContext.request.contextPath}/resource/css/overall.css" rel="stylesheet" type="text/css">-->
                <link href="${pageContext.request.contextPath}/resource/css/ProdutoLista.css" rel="stylesheet">

                <!-- CSS  -->
                <script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
                <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
                <title>Shop Online</title>
            </head>

            <body>
                <jsp:include page="/WEB-INF/pagina/navbar.jsp" />
                <div class="container" id="usuarioTabela" style="width: 1145px; margin-bottom: 180px;">
                    <h2>Gerenciamento de Usuários</h2>
                    <p>A lista de usuários em nosso banco de dados</p>
                    <table class="table table-hover" id="usuarioLista">
                        <thead>
                            <tr>
                                <th>Id do UsuÃ¡rio</th>
                                <th>Nome</th>
                                <th>Sobrenome</th>
                                <th>Endereço</th>
                                <th>Gênero</th>
                                <th>Estado</th>
                                <th>Cidade</th>
                                <th>Número do Telefone</th>
                                <th>Endereço de Email</th>
                                <th>Senha</th>
                                <th>Função</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${usuarios}" var="usuario">
                                <tr>
                                    <td>${usuario.usuarioId}</td>
<%--                                     <td>${usuario.nome}</td> --%>
<%--                                     <td>${usuario.sobrenome}</td> --%>
<%--                                     <td>${usuario.endereco}</td> --%>
<%--                                     <td>${usuario.genero}</td> --%>
<%--                                     <td>${usuario.estado}</td> --%>
<%--                                     <td>${usuario.cidade}</td> --%>
<%--                                     <td>${usuario.telNumero}</td> --%>
                                    <td>${usuario.emailId}</td>
<%--                                     <td>${usuario.password}</td> --%>
<%--                                     <td>${usuario.funcaoTipo}</td> --%>

                                    <td>
                                        <a href="usuario/deletar/${usuario.usuarioId}">
                                            <span class="glyphicon glyphicon-trash"></span>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <jsp:include page="/WEB-INF/pagina/footer.jsp" />
            </body>

            </html>