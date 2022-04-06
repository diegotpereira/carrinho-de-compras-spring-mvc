package br.com.java.spring.mvc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.java.spring.mvc.model.Cliente;
import br.com.java.spring.mvc.model.EnderecoCobranca;
import br.com.java.spring.mvc.model.EnderecoEntrega;
import br.com.java.spring.mvc.model.Usuario;
import br.com.java.spring.mvc.service.ClienteService;

@Controller
public class UsuarioControle {

	@Autowired
	private ClienteService clienteService;
	
	public ClienteService getClienteService() {
		return clienteService;
	}

	public void setClienteService(ClienteService clienteService) {
		this.clienteService = clienteService;
	}

	@RequestMapping(value = "/cliente/registrar")
	public ModelAndView getRegistrarForm() {
		Cliente cliente = new Cliente();
		Usuario usuario = new Usuario();
		EnderecoCobranca enderecoCobranca = new EnderecoCobranca();
		EnderecoEntrega enderecoEntrega = new EnderecoEntrega();

		cliente.setEnderecoCobranca(enderecoCobranca);
		cliente.setEnderecoEntrega(enderecoEntrega);
		cliente.setUsuarios(usuario);

		return new ModelAndView("registrar", "cliente", cliente);
	}
	// para inserir os dados
	@RequestMapping(value = "/cliente/registrar", method = RequestMethod.POST)
	public String registrarCliente(@Valid @ModelAttribute(value = "cliente")Cliente cliente, Model model, BindingResult result) {

		if (result.hasErrors()) 
			
			return "registrar";

			clienteService.addCliente(cliente);
			model.addAttribute("registradoSucesso", "Registrado com Sucesso. Faça login usando nome de usuário e senha");

			return "entrar";
		
	}
}