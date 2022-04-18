<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<jsp:include page="/WEB-INF/pagina/navbar.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body style="padding: 0px">
    <div class="container" style="margin-bottom: 19px">
        <h1 class="well">Confirme o endereço de entrega!</h1>
        <div class="col-lg-12 well">
            <div class="row">
                <form:form commandName="pedido">
                    <div class="col-sm-12">
                        <div class="row">
                            <div>
                                <center>Endereço de entrega!</center>
                            </div>
                            <div class="form-group">
                                <label for="endereco">Endereço</label>
                                <form:textarea type="text" class="form-control" path="carrinho.cliente.enderecoEntrega.endereco"></form:textarea>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label for="cidade">Cidade</label>
                                    <form:input type="text" class="form-control" path="carrinho.cliente.enderecoEntrega.cidade"></form:input>
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label for="estado">Estado</label>
                                    <form:input type="text" class="form-control" path="carrinho.cliente.enderecoEntrega.estado"></form:input>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label for="pais">País</label>
                                    <form:input type="text" class="form-control" path="carrinho.cliente.enderecoEntrega.pais"></form:input>
                                </div>
                                 <div class="col-sm-6 form-group">
                                    <label for="cep">Cep</label>
                                    <form:input type="text" class="form-control" path="carrinho.cliente.enderecoEntrega.cep"></form:input>
                                </div>
                            </div>
                            <input type="hidden" name="_flowExecutionKey" />
                            <div class="form-actions">
                                <button class="btn btn-lg btn-default" name="_eventId_backToCollectCustomerInfo" style="margin-left: 0px">Voltar</button>
                                <button type="Submit" style="margin-right: 10px; margin-left: 0px" class="btn btn-lg btn-info" name="_eventId_shippingDetailCollected">Proximo</button>
                                <button style="float: right;" class="btn btn-lg btn-default" name="_eventId_cancel">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</body>

</html>