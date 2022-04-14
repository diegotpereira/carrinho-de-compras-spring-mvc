<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
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
            <title>Shop Online</title>
        </head>

        <body ng-app="meuApp">
        <jsp:include page="/WEB-INF/pagina/navbar.jsp" />
            <div>
                <div ng-controller="meuControle" ng-init="getProdutoLista()">
                    <div class="container" id="produtoTabela" style="width: 1145px; margin-bottom: 180px;">
                        <h2>Gerenciamento de Produto</h2>
                        <p>A lista de produtos em nosso banco de dados.</p>
                        Pesquisar:
                        <input type="text" ng-model="buscarCondicao" placeholder="Pesquisar Produto" />
                        <table class="table table-hover" id="produtoLista">
                            <thead>
                                <tr>
                                    <th>Captura de tela</th>
                                    <th>Id Produto</th>
                                    <th>Categoria</th>
                                    <th>Nome Produto</th>
                                    <th>Preço Produto</th>
                                    <th>Unidades em Estoque</th>
                                    <th>Descrição</th>
                                    <th>Fabricante</th>
                                    <th>
                                        Exibir
                                        <security:authorize ifAnyGranted="FUNCAO_USUARIO">
                                            / Add No Carrinho
                                        </security:authorize>
                                        <!--visualizações apenas para o administrador-->
                                        <security:authorize ifAnyGranted="FUNCAO_ADMIN">
                                            /Editar/Deletar
                                        </security:authorize>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr ng-repeat="b in produtos | filter:buscarCondicao">
                                    <td style="width: 171px;">
                                        <img src="<c:url value="../resource/imagens/produtos/{{b.produtoId}}.jpg "/>" style="width: 100px; height: 90px;" {{b.produtoNome}}/>
                                    </td>
                                    <td>{{b.produtoId}}</td>
                                    <td>{{b.produtoCategoria}}</td>
                                    <td>{{b.produtoNome}}</td>
                                    <td>{{b.produtoPreco}}</td>
                                    <td>{{b.unidadeEstoque}}</td>
                                    <td style="width: 180px;">{{b.produtoDescricao}}</td>
                                    <td>{{b.produtoFabricante}}</td>
                                    <td>
                                        <a href="getProdutoPorId/{{b.produtoId}}" class="btn btn-info" role="button">
                                            <span class="glyphicon glyphicon-info-sign"></span>
                                        </a>
                                        <!--ver apenas para o usuário-->
                                        <security:authorize ifAnyGranted="FUNCAO_USUARIO">
                                            <a href="#" ng-click="addNoCarrinho(${b.produtoId})" class="btn btn-primary" style="margin-left: 5px;">
                                                <span class="glyphicon glyphicon-shopping-cart"></span>
                                            </a>
                                        </security:authorize>
                                        <!--ver apenas para o administrador-->
                                        <security:authorize ifAnyGranted="FUNCAO_ADMIN">
                                            <a href="admin/produto/editarProduto/{b.produtoId}" class="btn btn-success" style="margin-left: 5px;">
                                                <span class="glyphicon glyphicon-edit"></span>
                                            </a>
                                            <a href="admin/delete/{{b.produtoId}}" class="btn btn-danger" style="margin-left: 5px;">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </security:authorize>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <jsp:include page="/WEB-INF/pagina/footer.jsp" />
        </body>

        </html>