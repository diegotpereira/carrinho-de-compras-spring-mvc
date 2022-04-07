<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
            <%@ page isELIgnored="false"%>

                <!DOCTYPE html>
                <html>

                <head>
                    <meta charset="UTF-8">

                    <!-- CSS  -->
                    <link href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                    <link href="${pageContext.request.contextPath}/resource/css/overall.css" rel="stylesheet" type="text/css">
                    <link href="${pageContext.request.contextPath}/resource/css/register.css" rel="stylesheet" type="text/css">


                    <!-- CSS  -->
                    <script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
                    <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
                    <title>Shop Online</title>
                </head>

                <body>
                    <jsp:include page="/WEB-INF/pagina/navbar.jsp" />
                    <div class="container" style="margin-bottom: 19px;">
                        <h1 class="well">Cadastre-se Aqui!</h1>
                        <div class="col-lg-12 well">
                            <div class="row">

                                <!--form registroServlet-->
                                <form:form method="post" action="${ url }" commandName="cliente">
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div>
                                                <center>User Details</center>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <form:label path="nome">Nome</form:label>
                                                <form:input type="text" placeholder="Digite seu Nome..." class="form-control" path="nome"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <form:label path="sobrenome">Sobrenome</form:label>
                                                <form:input type="text" placeholder="Digite seu Sobrenome..." class="form-control" path="sobrenome"></form:input>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6 form-group">
                                                <form:label path="usuarios.emailId">Email Id</form:label>
                                                <form:input type="text" placeholder="Digite seu Email..." class="form-control" path="usuarios.emailId"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <form:label path="clienteTelefone">Telefone Número</form:label>
                                                <form:input type="text" placeholder="Digite seu Número de Telefone..." class="form-control" path="clienteTelefone"></form:input>
                                            </div>
                                        </div>
                                        <hr>
                                        <div>
                                            <center>Endereço de entrega</center>
                                        </div>
                                        <div class="form-group">
                                            <form:label path="enderecoEntrega.endereco">Entrega</form:label>
                                            <form:textarea type="text" placeholder="Digite seu endereço de entrega..." class="form-control" path="enderecoEntrega.endereco"></form:textarea>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6 form-group">
                                                <form:label path="enderecoEntrega.cidade">Cidade</form:label>
                                                <form:input type="text" placeholder="Digite sua cidade..." class="form-control" path="enderecoEntrega.cidade"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <form:label path="enderecoEntrega.estado">Estado</form:label>
                                                <form:input type="text" placeholder="Digite seu Estado..." class="form-control" path="enderecoEntrega.estado"></form:input>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6 form-group">
                                                <form:label path="enderecoEntrega.pais">País</form:label>
                                                <form:input type="text" placeholder="Digite seu País..." class="form-control" path="enderecoEntrega.pais"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <form:label path="enderecoEntrega.cep">Cep</form:label>
                                                <form:input type="text" placeholder="Digite seu cep..." class="form-control" path="enderecoEntrega.cep"></form:input>
                                            </div>
                                        </div>
                                        <hr>
                                        <div>
                                            <center>endereço de cobrança</center>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-6 form-group">
                                                <form:label path="enderecoCobranca.endereco">Endereço</form:label>
                                                <form:textarea type="text" placeholder="Digite seu endereço de cobrança..." class="form-control" path="enderecoCobranca.endereco"></form:textarea>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 form-group">
                                                    <form:label path="enderecoCobranca.cidade">Cidade</form:label>
                                                    <form:input type="text" placeholder="Digite sua Cidade..." class="form-control" path="enderecoCobranca.cidade"></form:input>
                                                </div>
                                                <div class="col-sm-6 form-group">
                                                    <form:label path="enderecoCobranca.estado">Estado</form:label>
                                                    <form:input type="text" placeholder="Digite seu Estado..." class="form-control" path="enderecoCobranca.estado"></form:input>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 form-group">
                                                    <form:label path="enderecoCobranca.pais">País</form:label>
                                                    <form:input type="text" placeholder="Digite seu País..." class="form-control" path=""></form:input>
                                                </div>
                                                <div class="col-sm-6 form-group">
                                                    <form:label path="">Cep</form:label>
                                                    <form:input type="text" placeholder="Digite seu Cep..." class="form-control" path="enderecoCobranca.pais"></form:input>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 form-group">
                                                    <form:label path="">Senha</form:label>
                                                    <form:input type="password" placeholder="****************" class="form-control" id="senha" path="usuarios.password"></form:input>
                                                </div>
                                                <div class="col-sm-6 form-group">
                                                    <form:label path="usuarios.password">Confirmar Senha</form:label>
                                                    <input type="password" placeholder="*****************" class="form-control" id="confirmasenha" />
                                                </div>
                                            </div>
                                            <div class="form-actions">
                                                <button type="submit" class="btn btn-lg btn-info" onclick=" return validar()">
												Enviar
											</button>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                            </form:form>
                        </div>
                    </div>
                    </div>
                    <jsp:include page="/WEB-INF/pagina/footer.jsp" />

                    <!-- valida��o da senha -->
                    <script type="text/javascript">
                        function validar() {
                            console.log("validar")
                            var senha = document.getElementById("senha").value
                            var confirmasenha = document.getElementById("confirmasenha").value

                            if (senha != confirmasenha) {
                                alert("Senha n�o corresponde.");

                                return false
                            }
                            return true
                        }
                    </script>
                </body>

                </html>