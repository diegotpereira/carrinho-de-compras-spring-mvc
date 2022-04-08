package br.com.java.spring.mvc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.java.spring.mvc.model.Consultas;
import br.com.java.spring.mvc.service.ConsultasService;

@Controller
public class HomeControle {

	@Autowired
	private ConsultasService consultasService;

	@RequestMapping({"/index", "/index1"})
	public String apresentacao() {
		
		return "index1";
	}

	@RequestMapping("/entrar")
	public String entrar(String erro, Model model) {
		if (erro != null) {
			model.addAttribute("erro", "Nome de usu�rio ou senha inv�lidos");
		}

		return "entrar";
	}
	
	@RequestMapping("/sobre")
	public String sobre() {

		return "sobre";
	}
	
	@RequestMapping("/contatos")
	public ModelAndView contato() {
		Consultas consulta = new Consultas();
		return new ModelAndView("contatos", "contato", consulta);
	}
	@RequestMapping(value = "/contatos", method = RequestMethod.POST)
	public String addConsulta(@Valid @ModelAttribute(value = "contato") Consultas consulta, Model model, BindingResult result) {
		if(result.hasErrors())

		return "contatos";

		consultasService.addConsulta(consulta);
		model.addAttribute("consultaSucesso", "Obrigado, Sua Mensagem armazenada em nosso Servidor entraremos em contato através do Correio correspondente");

		return "entrar";
	}
}
