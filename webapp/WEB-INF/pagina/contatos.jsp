<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ page isELIgnored="false" %>

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
            <!--Conteudo Topo -->
            <div class="top-content">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1>
                                <strong>ShopOnline</strong> FormulÃ¡rio de Contato
                            </h1>
                            <div class="description">
                                <p>
                                    Se vocÃª precisar de alguma ajuda de nÃ³s, entre em contato conosco. Escreva sua Pergunta.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                            <div class="form-top">
                                <div class="form-top-left">
                                    <h1>Contate nós</h1>
                                </div>
                                <div class="form-top-right">
                                    <i class="fa-fa-envelope"></i>
                                </div>
                            </div>
                            <div class="form-bottom contact-form">
                                <c:url value="/contatos" var="url"></c:url>
                                <form:form role="form" method="post" action="${url}" commandName="contato">
                                    <div class="form-group">
                                        <label for="contato-email" class="sr-only">Email</label>
                                        <form:input path="email" type="text" class="contact-email form-control" placeholder="Email..." required="required" />
                                    </div>
                                    <div class="form-group">
                                        <label for="contato-assunto" class="sr-only">Assunto</label>
                                        <form:input path="assunto" type="text" class="contact-assunto form-control" placeholder="Assunto..." required="required" />
                                    </div>
                                    <div class="form-group">
                                        <label for="contato-assunto" class="sr-only">Assunto</label>
                                        <form:input path="mensagem" type="text" class="contact-mensagem form-control" placeholder="Mensagem..." required="required" />
                                    </div>
                                    <button type="submit" class="btn">Enviar Mensagem</button>
                                    <button style="float: right;" type="button" class="btn" onclick="window.location.href='<c:url value="/index1"/>'">
										Voltar para página principal
								    </button>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="/WEB-INF/pagina/footer.jsp" />
        </body>

        </html>