<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
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
                                <label for="clienteTelefone">Telefone Número</label>
                                <form:input type="text" class="form-control" path="carrinho.cliente.clienteTelefone"></form:input>
                            </div>
                        </div>
                        <div>Endereço de Cobrança</div>
                        <div class="form-group">
                            <label for="endereço">Endereço</label>
                            <textarea type="text" class="form-control" path="carrinho.cliente.enderecoCobranca.endereco"></form:textarea>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label for="cidade">Cidade</label>
								<form:input type="text" class="form-control" path="carrinho.cliente.enderecoCobranca.cidade"></form:input>
							</div>
							<div class="row">
								<div class="cols-sm-6 form-group">
									<label for="estado">Estado</label>
									<form:input type="text" class="form-control" path="carrinho.cliente.enderecoCobranca.estado"></form:input>				
								</div>
							</div>
							<div class="row">
								<div class="cols-sm-6 form-group">
									<label for="pais">País</label>
									<form:input type="text" class="form-control" path="carrinho.cliente.enderecoCobranca.pais"></form:input>				
								</div>
								<div class="cols-sm-6 form-group">
									<label for="cep">Cep</label>
									<form:input type="text" class="form-control" path="carrinho.cliente.enderecoCobranca.cep"></form:input>				
								</div>
							</div>
							<input type="hidden" name="_flowExecutionKey" />
							<div class="form-actions">
								<button type="submit" class="btn btn-lg btn-info" name="_eventId_customerInfoCollected" style="margin-left: 44px; margin-left: 0px;">Proximo</button>
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