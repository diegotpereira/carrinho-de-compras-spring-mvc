package br.com.java.spring.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import br.com.java.spring.mvc.model.Carrinho;
import br.com.java.spring.mvc.model.CarrinhoItem;
import br.com.java.spring.mvc.model.Cliente;
import br.com.java.spring.mvc.model.Produto;
import br.com.java.spring.mvc.service.CarrinhoItemService;
import br.com.java.spring.mvc.service.CarrinhoService;
import br.com.java.spring.mvc.service.ClienteService;
import br.com.java.spring.mvc.service.ProdutoService;

@Controller
public class CarrinhoItemControle {
	
	@Autowired
	private CarrinhoService carrinhoService;

	@Autowired
	private CarrinhoItemService carrinhoItemService;

	@Autowired
	private ClienteService clienteService;

	@Autowired
	private ProdutoService produtoService;

	public CarrinhoService getCarrinhoService() {
		return carrinhoService;
	}

	public void setCarrinhoService(CarrinhoService carrinhoService) {
		this.carrinhoService = carrinhoService;
	}

	public CarrinhoItemService getCarrinhoItemService() {
		return carrinhoItemService;
	}

	public void setCarrinhoItemService(CarrinhoItemService carrinhoItemService) {
		this.carrinhoItemService = carrinhoItemService;
	}

	public ClienteService getClienteService() {
		return clienteService;
	}

	public void setClienteService(ClienteService clienteService) {
		this.clienteService = clienteService;
	}

	public ProdutoService getProdutoService() {
		return produtoService;
	}

	public void setProdutoService(ProdutoService produtoService) {
		this.produtoService = produtoService;
	}

	@RequestMapping("/carrinho/add/{produtoId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addCarrinhoItem(@PathVariable(value = "produtoId") int produtoId) {
		System.out.println("Chegou no controle");
		User usuario = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String emailId = usuario.getUsername();
		Cliente cliente = clienteService.getClientePorEmailId(emailId);
		System.out.println("Cliente: " + cliente.getUsuarios().getEmailId());

		Carrinho carrinho = cliente.getCarrinho();
		System.out.println(carrinho);

		List<CarrinhoItem> carrinhoItens = carrinho.getCarrinhoItem();
		Produto produto = produtoService.getProdutoPorId(produtoId);

		for(int index = 0; index < carrinhoItens.size(); index++) {
			CarrinhoItem carrinhoItem = carrinhoItens.get(index);

			if (produto.getProdutoId() == (carrinhoItem.getProduto().getProdutoId())) {
				carrinhoItem.setQualidade(carrinhoItem.getQualidade() + 1);
				carrinhoItem.setPreco(carrinhoItem.getQualidade() * carrinhoItem.getProduto().getProdutoPreco());
				carrinhoItemService.addCarrinhoItem(carrinhoItem);
				return;
			}
		}
		CarrinhoItem carrinhoItem = new CarrinhoItem();
		carrinhoItem.setQualidade(1);
		carrinhoItem.setProduto(produto);
		carrinhoItem.setPreco(produto.getProdutoPreco() * 1);
		carrinhoItem.setCarrinho(carrinho);
		carrinhoItemService.addCarrinhoItem(carrinhoItem);
	}
	@RequestMapping("/carrinho/removerCarrinhoItem/{carrinhoItemId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removerCarrinhoItem(@PathVariable(value = "carrinhoItemId") int carrinhoItemId) {
		carrinhoItemService.removerCarrinhoItem(carrinhoItemId);
	}
	@RequestMapping("/carrinho/removerTodosItens/{carrinhoId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removerTodosItensCarrinho(@PathVariable(value = "carrinho") int carrinhoId) {
		Carrinho carrinho = carrinhoService.getCarrinhoPorCarrinhoId(carrinhoId);
		carrinhoItemService.removerTodosItensCarrino(carrinho);
	}
}
