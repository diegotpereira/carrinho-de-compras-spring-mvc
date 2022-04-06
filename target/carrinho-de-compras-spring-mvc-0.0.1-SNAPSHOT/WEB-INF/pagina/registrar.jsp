<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">

            <!-- CSS  -->
            <link href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <link href="${pageContext.request.contextPath}/resource/css/overall.css" rel="stylesheet" type="text/css">

            <!-- CSS  -->
            <script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
            <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
            <title>Shop Online</title>
        </head>

        <body>
            <div class="container" style="margin-bottom: 19px;">
                <h1 class="well">Cadastre-se Aqui!</h1>
                <div class="col-lg-12 well">
                    <div class="row">

                        <!--form registroServlet-->
                        <form:form>
                            <div class="col-sm-12">
                                <div class="row">
                                    <div>
		                                <center>User Details</center>
		                            </div>
                                        <div class="col-sm-6 form-group">
                                            <form:label>Nome</form:label>
                                            <form:input type="text" placeholder="Digite seu Nome..." class="form-control"></form:input>
                                        </div>
                                        <div class="col-sm-6 form-group">
                                            <form:label>Sobrenome</form:label>
                                            <form:input type="text" placeholder="Digite seu Sobrenome..." class="form-control"></form:input>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 form-group">
                                            <form:label>Email Id</form:label>
                                            <form:input type="text" placeholder="Digite seu Email..." class="form-control"></form:input>
                                        </div>
                                        <div class="col-sm-6 form-group">
                                            <form:label>Telefone Número</form:label>
                                            <form:input type="text" placeholder="Digite seu Número de Telefone..." class="form-control"></form:input>
                                        </div>
                                    </div>
                                    <hr>
                                    <div>
                                        <center>Endereço de entrega</center>
                                    </div>
                                    <div class="form-group">
                                        <form:label>Entrega</form:label>
                                        <form:textarea type="text" placeholder="Digite seu endereço de entrega..." class="form-control"></form:textarea>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 form-group">
                                            <form:label>Cidade</form:label>
                                            <form:input type="text" placeholder="Digite sua cidade..." class="form-control"></form:input>
                                        </div>
                                        <div class="col-sm-6 form-group">
                                            <form:label>Estado</form:label>
                                            <form:input type="text" placeholder="Digite seu Estado..." class="form-control"></form:input>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 form-group">
                                            <form:label>País</form:label>
                                            <form:input type="text" placeholder="Digite seu País..." class="form-control"></form:input>
                                        </div>
                                        <div class="col-sm-6 form-group">
                                            <form:label>Cep</form:label>
                                            <form:input type="text" placeholder="Digite seu cep..." class="form-control"></form:input>
                                        </div>
                                    </div>
                                    <hr>
                                    <div>
                                        <center>endereço de cobrança</center>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-6 form-group">
                                            <form:label>Endereço</form:label>
                                            <form:textarea type="text" placeholder="Digite seu endereço de cobrança..." class="form-control"></form:textarea>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6 form-group">
                                                <form:label>Cidade</form:label>
                                                <form:input type="text" placeholder="Digite sua Cidade..." class="form-control"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <form:label>Estado</form:label>
                                                <form:input type="text" placeholder="Digite seu Estado..." class="form-control"></form:input>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6 form-group">
                                                <form:label>País</form:label>
                                                <form:input type="text" placeholder="Digite seu País..." class="form-control"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <form:label>Cep</form:label>
                                                <form:input type="text" placeholder="Digite seu Cep..." class="form-control"></form:input>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6 form-group">
                                                <form:label>Senha</form:label>
                                                <form:input type="password" placeholder="****************" class="form-control" id="senha"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <form:label>Confirmar Senha</form:label>
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