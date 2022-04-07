<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ page isELIgnored="false" %>

                <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                <html>

                <head>
                    <meta charset="ISO-8859-1">

                    <!-- CSS  -->
                    <link href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                    <link href="${pageContext.request.contextPath}/resource/css/overall.css" rel="stylesheet" type="text/css">

                    <!-- CSS  -->
                    <script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
                    <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
                    <title>Adicionar Produto</title>
                </head>

                <body>
                    <jsp:include page="/WEB-INF/pagina/navbar.jsp" />
                    <div class="container" style="margin-bottom: 19px;">
                        <h1 class="well">Adicionar Produto</h1>
                        <div class="col-lg-12 well">
                            <div class="row">

                                <!--Form de RegistroServlet-->
                                <c:url value="/admin/produto/addProduto" var="url"></c:url>
                                <form:form method="post" action="${url}" commandName="produtoFormObj" enctype="multipart/form-data">
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-sm-6 form-group">
                                                <form:label path="produtoId">Id do Produto</form:label>
                                                <form:input type="text" placeholder="Digite id do Produto" class="form-control" path="produtoId" disabled="true" />
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <form:label path="produtoNome">Nome do Produto</form:label>
                                                <form:input type="text" placeholder="Digite nome do Produto" class="form-control" path="produtoNome" />

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="produtoDescricao">Descrição do Produto</form:label>
                                            <form:textarea type="text" placeholder="Digite descrição do Produto" class="form-control" path="produtoDescricao" />
                                        </div>
                                        <div class="form-group">
                                            <form:label path="produtoCategoria">Categoria do Produto</form:label>
                                            <form:radiobutton path="produtoCategoria" value="Android" /> Android
                                            <form:radiobutton path="produtoCategoria" value="Windows" /> Windows
                                            <form:radiobutton path="produtoCategoria" value="Linux" /> Linux
                                            <form:radiobutton path="produtoCategoria" value="Mac" /> Mac
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-4 form-group">
                                                <form:label path="produtoFabricante">Nome do Fabricante</form:label>
                                                <form:input type="text" placeholder="Digite nome do Fabricante" class="form-control" path="produtoFabricante" />

                                            </div>
                                            <div class="col-sm-4 form-group">
                                                <form:label path="produtoPreco">Preço do Produto</form:label>
                                                <form:input type="text" placeholder="Digite o valor do Produto" class="form-control" path="produtoPreco" />

                                            </div>
                                            <div class="col-sm-4 form-group">
                                                <form:label path="unidadeEstoque">Quantidade em Estoque</form:label>
                                                <form:input type="text" placeholder="Digite a Quantidade em Estoque" class="form-control" path="unidadeEstoque" />

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="produtoImagem">Imagem do Produto</form:label>
                                            <form:input type="file" path="produtoImagem" />
                                        </div>
                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-lg btn-info">Enviar</button>
                                        </div>
                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                    <jsp:include page="/WEB-INF/pagina/footer.jsp" />
                </body>

                </html>