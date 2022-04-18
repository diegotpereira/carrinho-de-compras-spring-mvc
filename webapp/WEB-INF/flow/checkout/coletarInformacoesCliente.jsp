<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<jsp:include page="/WEB-INF/pagina/navbar.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
         <!-- CSS  -->
         <link href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
         <link href="${pageContext.request.contextPath}/resource/css/register.css" rel="stylesheet" type="text/css">

         <!-- JS  -->
         <script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
         <script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
         
    <title>Document</title>
</head>

<body style="padding: 0px">
    <div class="container" style="margin-bottom: 19px;">
        <center>
            <h1 class="well">Cliente Detalhes!</h1>
        </center>
        <div class="col-lg-12 well">
            <div class="row">
                <form:form commandName="pedido">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label for="nome">Nome</label>
                                <form:input type="text" class="form-control" path="carrinho.cliente.nome"></form:input>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label for="sobrenome">Sobrenome</label>
                                <form:input type="text" class="form-control" path="carrinho.cliente.sobrenome"></form:input>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label for="usuarios.emailId">Email Id</label>
                                <form:input type="text" class="form-control" path="carrinho.cliente.emailId"></form:input>
                            </div>
                            <div class="col-sm-6 form-group">
                                <label for="clienteTelefone">Telefone N�mero</label>
                                <form:input type="text" class="form-control" path="carrinho.cliente.clienteTelefone"></form:input>
                            </div>
                        </div>
                        <div>Endere�o de Cobran�a</div>
                        <div class="form-group">
                            <label for="endere�o">Endere�o</label>
                            <form:textarea type="text" class="form-control" path="carrinho.cliente.enderecoCobranca.endereco"></form:textarea>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label for="cidade">Cidade</label>
								<form:input type="text" class="form-control" path="carrinho.cliente.enderecoCobranca.cidade"></form:input>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="estado">Estado</label>
									<form:input type="text" class="form-control" path="carrinho.cliente.enderecoCobranca.estado"></form:input>				
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="pais">Pa�s</label>
									<form:input type="text" class="form-control" path="carrinho.cliente.enderecoCobranca.pais"></form:input>				
								</div>
								<div class="col-sm-6 form-group">
									<label for="cep">Cep</label>
									<form:input type="text" class="form-control" path="carrinho.cliente.enderecoCobranca.cep"></form:input>				
								</div>
							</div>
							<input type="hidden" name="_flowExecutionKey" />
							<div class="form-actions">
								<button type="submit" class="btn btn-lg btn-info" name="_eventId_customerInfoCollected" style="margin-right: 44px; margin-left: 0px;">Proximo</button>
								<button class="btn btn-lg btn-default" name="_eventId_cancel">Cancelar</button>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
    </div>
</body>

</html>
<jsp:include page="/WEB-INF/pagina/footer.jsp" />