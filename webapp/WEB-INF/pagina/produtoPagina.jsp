<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
    <%@ page isELIgnored="false"%>

        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
                <meta name="viewport" content="width=device-width, initial-scale=1">

                <!-- CSS  -->
                <link href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                <link href="${pageContext.request.contextPath}/resource/css/overall.css" rel="stylesheet" type="text/css">

                <!-- CSS  -->
                <script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
                <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
                <script src="${pageContext.request.contextPath}/resource/js/produtoControle.js"></script>

                <title>Produto</title>
            </head>

            <body>
                <jsp:include page="/WEB-INF/pagina/navbar.jsp" />
                <div ng-app="meuApp">
                    <div class="container" style="width: 829px;">
                        <h2>Detalhe do Produto</h2>
                        <table class="table table-bordered" id="prod">
                            <tbody>
                                <tr>
                                    <td>Imagem do Produto</td>
                                    <td>
                                        <img src="<c:url value="/resource/imagens/produtos/${produtoObj.produtoId}.jpg"/>" width="40%" alt="${produtoObj.produtoNome}" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Id do Produto</td>
                                    <td>${produtoObj.produtoId}</td>
                                </tr>
                                <tr>
                                    <td>Nome do Produto</td>
                                    <td>${produtoObj.produtoNome}</td>
                                </tr>
                                <tr>
                                    <td>Categoria do Produto</td>
                                    <td>${produtoObj.produtoCategoria}</td>
                                </tr>
                                <tr>
                                    <td>Descrição do Produto</td>
                                    <td>${produtoObj.produtoDescricao}</td>
                                </tr>
                                <tr>
                                    <td>Fabricante do Produto</td>
                                    <td>${produtoObj.produtoFabricante}</td>
                                </tr>
                                <tr>
                                    <td>Preço do Produto</td>
                                    <td>${produtoObj.produtoPreco}</td>
                                </tr>
                                <tr>
                                    <td>Unidades em Estoque</td>
                                    <td>${produtoObj.unidadeEstoque}</td>
                                </tr>
                                <tr>
                                    <td>Adicionar no Carrinho:</td>
                                    <td>
                                        <c:url value="/carrinho/add/${produtoObj.produtoId}" var="addCarrinho"></c:url>
                                        <div ng-controller="meuControle">
<%--                                             <security:authorize access="hasRole('FUNCAO_USUARIO')"> --%>
                                            <a href="#" ng-click="addNoCarrinho(${produtoObj.produtoId})" class="btn btn-info" style="margin-top: 0px; width: 150px; float: left; margin-right: 31px;">
                                                <span class="glyphicon glyphicon-shopping-cart"></span>
                                            </a>
<%--                                             </security:authorize> --%>
                                            <a href="<c:url value="/getTodosProdutos"/>" class="btn btn-info" style="margin-top: 0px; width: 150px; float: left; margin-right: 31px;">
                                                <span class="glyphicon glyphicon-arrow-left"></span>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <jsp:include page="/WEB-INF/pagina/footer.jsp" />
            </body>

            </html>