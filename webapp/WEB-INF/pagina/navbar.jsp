<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
            <%@ page isELIgnored="false"%>

                <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                <html lang="pt-br">

                <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">

                    <!-- CSS  -->
                    <link href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                    <link href="${pageContext.request.contextPath}/resource/css/overall.css" rel="stylesheet" type="text/css">

                    <!-- CSS  -->
                    <script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
                    <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>

                    <title>Document</title>
                </head>

                <body>
                    <nav class="navbar navbar-inverse">
                        <div class="container-fluid">
                            <div class="nav navbar">
                                <img class="navbar-brand" src="<c:url value="/resource/imagens/shopieasy-logo.png "/>" href="<c:url value="/inddex"/>" width="200px" height="100px" alt="logo-image"></img>
                            </div>

                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
                                <a class="navbar-brand" href="<c:url value="index1"/>">Shop Online</a>
                            </div>
                            <div class="collapse navbar-collapse" id="myNavbar">
                                <ul class="nav navbar-nav">
                                    <li><a href="<c:url value="/index1"/>">Home</a></li>
                                    <li><a href="<c:url value="/getTodosProdutos"/>">Lista de Produtos</a></li>
                                    <li><a href="<c:url value="/sobre"/>">Sobre Nós</a></li>
                                    <li><a href="<c:url value="/contatos"/>">Contato</a></li>
                                    <li><a href="<c:url value="/admin/produto/addProduto"/>">Add Produto</a></li>
                                </ul>

                                <ul class="nav navbar-nav navbar-right">
                                    <c:if test="${!empty pageContext.request.userPrincipal.name}">
                                        <li>
                                            <a href="<c:url value="/index1"/>">
                                                <span class="glyphicon glyphicon-shopping-user"></span> Bem vindo
                                            </a>
                                        </li>
                                        <security:authorize access="hasRole('FUNCAO_USUARIO')">
                                        <li>
                                            <a href="<c:url value="/carrinho/getCarrinhoPorId"/>">
                                                <span class="glyphicon glyphicon-shopping-cart"></span> Meu Carrinho
                                            </a>
                                        </li>
                                        </security:authorize>
                                        <li>
                                            <a href="<c:url value="/sair"/>">
                                                <span class="glyphicon glyphicon-log-out"></span> Sair
                                            </a>
                                        </li>
                                    </c:if>
                                </ul>

                                <ul class="nav navbar-nav navbar-right">
                                    <c:if test="${pageContext.request.userPrincipal.name==null}">
                                        <li>
                                            <a href="<c:url value="/carrinho"/>">
                                                <span class="glyphicon glyphicon-shopping-cart"></span> Meu Carrinho
                                            </a>
                                        </li>
                                        <li>
                                            <a href="<c:url value="/cliente/registrar"/>">
                                                <span class="glyphicon glyphicon-log-user"></span> Cadastre-se
                                            </a>
                                        </li>
                                        <li>
                                            <a href="<c:url value="/entrar"/>">
                                                <span class="glyphicon glyphicon-log-in"></span> Entrar
                                            </a>
                                        </li>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </body>

                </html>