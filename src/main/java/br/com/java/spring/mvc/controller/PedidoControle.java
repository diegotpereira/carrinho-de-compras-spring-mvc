package br.com.java.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import br.com.java.spring.mvc.model.*;
import br.com.java.spring.mvc.service.*;

@Controller
public class PedidoControle {
	
	@Autowired
	private CarrinhoService carrinhoService;

	@Autowired
	private ClientePedidoService clientePedidoService;

	@RequestMapping("/pedido/{carrinhoId}")
	public String criarPedido(@PathVariable("carrinhoId") int carrinhoId) {

		ClientePedido clientePedido = new ClientePedido();
		Carrinho carrinho = carrinhoService.getCarrinhoPorCarrinhoId(carrinhoId);
		clientePedido.setCarrinho(carrinho);
		Cliente cliente = carrinho.getCliente();
		clientePedido.setEnderecoEntrega(cliente.getEnderecoEntrega());
		clientePedido.setEnderecoCobranca(cliente.getEnderecoCobranca());
		clientePedidoService.addClientePedido(clientePedido);

		return "redirect:/verificar?carrinhoId" + carrinhoId;
	}
}
