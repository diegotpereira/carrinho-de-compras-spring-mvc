	package br.com.java.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.java.spring.mvc.model.Carrinho;
import br.com.java.spring.mvc.model.Cliente;
import br.com.java.spring.mvc.service.CarrinhoService;
import br.com.java.spring.mvc.service.ClienteService;

@Controller
public class CarrinhoControle {

	@Autowired
	private ClienteService clienteService;

	@Autowired
	private CarrinhoService carrinhoService;

	public ClienteService getClienteService() {
		return clienteService;
	}

	public void setClienteService(ClienteService clienteService) {
		this.clienteService = clienteService;
	}

	public CarrinhoService getCarrinhoService() {
		return carrinhoService;
	}

	public void setCarrinhoService(CarrinhoService carrinhoService) {
		this.carrinhoService = carrinhoService;
	}

	@RequestMapping("carrinho/getCarrinhoPorId")
	public String getCarrinhoId(Model model) {
		User usuario = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String emailId = usuario.getUsername();
		Cliente cliente = clienteService.getClientePorEmailId(emailId);
		model.addAttribute("carrinhoId", cliente.getCarrinho().getCarrinhoId());

		return "carrinho";
	}
	@RequestMapping("/carrinho/getCarrinho/{carrinhoId}")
	public @ResponseBody Carrinho getCarrinhoItens(@PathVariable(value = "carrinhoId") int carrinhoId) {

		return carrinhoService.getCarrinhoPorCarrinhoId(carrinhoId);
	}
}
