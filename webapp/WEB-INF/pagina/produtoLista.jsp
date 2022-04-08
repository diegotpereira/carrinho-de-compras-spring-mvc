<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ page isELIgnored="false"%>
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
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
                <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
                <script src="${pageContext.request.contextPath}/resource/js/produtoControle.js"></script>

                <title>Gerenciamento Produto</title>
            </head>

            <body ng-app="meuApp">
                <jsp:include page="/WEB-INF/pagina/navbar.jsp" />
                <div class="container" id="produtoTabela" style="width: 1145px; margin-bottom: 180px;">
                    <h2>Gerenciamento de Produto</h2>
                    <p>A lista de produtos em nosso banco de dados</p>
                    <table class="table table-hover" id="produtoLista">
                        <thead>
                            <tr>
                                <th>Captura de tela</th>
                                <th>Id do Produto</th>
                                <th>Categoria</th>
                                <th>Nome do Produto</th>
                                <th>Preço do Produto</th>
                                <th>Quantidade em Estoque</th>
                                <th>Descrição</th>
                                <th>Fabricante</th>
                                <th>
                                    Exibir
                                    <security:authorize access="hasAnyRole('FUNCAO_USUARIO')">
                                    </security:authorize>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${produtos}" var="prod">
                                <tr>
                                    <td style="width: 171px;">
                                        <img src="<c:url value="/resource/imagens/produtos/${prod.produtoId}.jpg"/>" style="width: 100px; height: 90px;" ${prod.produtoNome}/>
                                    </td>
                                    <td>${prod.produtoId}</td>
                                    <td>${prod.produtoCategoria}</td>
                                    <td>${prod.produtoNome}</td>
                                    <td>${prod.produtoPreco}</td>
                                    <td>${prod.unidadeEstoque}</td>
                                    <td style="width: 180px;">${prod.produtoDescricao}</td>
                                    <td>${prod.produtoFabricante}</td>
                                    <td ng-controller="meuControle">
                                        <a href="getProdutoPorId/${prod.produtoId}" class="btn btn-info" role="button">
                                            <span class="glyphicon glyphicon-info-sign"></span>
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