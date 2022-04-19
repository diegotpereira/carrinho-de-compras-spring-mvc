<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>

            <head>
                <meta charset="ISO-8859-1">

                <!-- CSS  -->
                <link href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">

                <!-- JS  -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
                <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
                <script src="${pageContext.request.contextPath}/resource/js/produtoControle.js"></script>

                <title>Shop Online</title>
            </head>

            <body>
                <jsp:include page="/WEB-INF/pagina/navbar.jsp" />
                <div class="container" style="width: 1145px; margin-top: 20px; margin-bottom: 180px;">
                    <div ng-app="meuApp" ng-controller="meuControle" style="margin-bottom: 30px;">
                        <div ng-init="getCarrinho(${carrinhoId})">
                            <br> Lista de produtos compradas
                            <div>
                                <a href="" class="btn btn-danger pull-left" ng-click="limparCarrinho()" style="margin-top: 15px; margin-left: 20px;">
                                    <span class="glyphicon glyphicon-remove-sign">
									Limpar carrinho
								</span>
                                </a>
                            </div>
                            <div>
                                <c:url value="/pedido/${carrinhoId}" var="url1"></c:url>
                                <a href="${url1}" class="btn btn-danger pull-left" style="margin-top: 15px; margin-left: 20px;">
                                    <span class="glyphicon glyphicon-shipping-cart">
									Confirmar
								</span>
                                </a>
                            </div>
                            <table class="table table-hover" id="produtoLista">
                                <thead>
                                    <tr>
                                        <th>Nome do Produto</th>
                                        <th>Quantidade</th>
                                        <th>Pre�o</th>
                                        <th>Valor Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr ng-repeat="carrinho in carrinhos.carrinhoItem">
                                        <td>{{carrinho.produto.produtoNome}}</td>
                                        <td>{{carrinho.qualidade}}</td>
                                        <td>{{carrinho.produto.produtoPreco}}</td>
                                        <td>{{carrinho.preco}}</td>
                                        <td>
                                            <a href="#" class="btn btn-danger" ng-click="removerDoCarrinho(carrinho.carrinhoItemId)" style="margin-top: 0px;">
                                                <span class="glyphicon glyphicon-trash"></span> Remover
                                            </a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            Valor Total da Compra: {{ calcularValorTotal()}}
                        </div>
                        <c:url value="/getTodosProdutos" var="url"></c:url>
                        <a href="${url}" class="btn btn-default" style="margin-left: 20px;">
						Continue Comprando
					</a>
                    </div>
                </div>
                <jsp:include page="/WEB-INF/pagina/footer.jsp" />
            </body>

            </html>