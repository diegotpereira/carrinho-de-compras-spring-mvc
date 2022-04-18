<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div class="container wrapper">
        <div class="container">
            <div class="row">
                <form:form>
                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
                        <div>
                            <h1>Recibo</h1>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
									<strong>Endereço de Entrega</strong>
									${pedido.carrinho.cliente.enderecoEntrega.endereco} <br/>
									${pedido.carrinho.cliente.enderecoEntrega.cidade} <br/>
									${pedido.carrinho.cliente.enderecoEntrega.estado} <br/>
									${pedido.carrinho.cliente.enderecoEntrega.pais} <br/>
									${pedido.carrinho.cliente.enderecoEntrega.cep} <br/>
								</address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Data de envio:
                                    <fmt:formatDate type="date" value="${now}" />
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col xs-6 col-sm-6 col-md-6">
                                <address>
									<strong>Endereço de Cobrança</strong> <br/>
									${pedido.carrinho.cliente.enderecoCobranca.endereco} <br />
									${pedido.carrinho.cliente.enderecoCobranca.cidade},
									${pedido.carrinho.cliente.enderecoCobranca.estado} <br />
									${pedido.carrinho.cliente.enderecoCobranca.pais},
									${pedido.carrinho.cliente.enderecoCobranca.cep}
								</address>
                            </div>
                        </div>
                        <div class="row">
                            <div class="container">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th class="text-center">Produto</th>
                                            <th class="text-center">Quantidade</th>
                                            <th class="text center">Preço</th>
                                            <th class="text-center">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="carrinhoItem" items="${pedido.carrinho.carrinhoItem}">
                                            <tr>
                                                <td style="text-align: center;"><em>${carrinhoItem.produto.produtoNome}</em></td>
                                                <td style="text-align: center;"><em>${carrinhoItem.qualidade}</em></td>
                                                <td style="text-align: center;"><em>${carrinhoItem.produto.produtoPreco}</em></td>
                                                <td style="text-align: center;"><em>${carrinhoItem.preco}</em></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div>
                                <h4><strong>Valor Total: </strong> <strong class="text-danger">R$ ${pedido.carrinho.totalPreco}</strong></h4>
                            </div>
                        </div>
                        <input type="hidden" name="_flowExecutionKey" /> <br /> <br />

                        <button class="btn btn-lg btn-default" name="_eventId_backToCollectShippingDetail">Voltar</button>

                        <input type="submit" value="Enviar pedido" class="btn btn-lg btn-info" name="_eventId_orderConfirmed" />

                        <button class="btn btn-lg btn-default" name="_eventId_cancel" style="float: right;">Cancelar</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</body>

</html>