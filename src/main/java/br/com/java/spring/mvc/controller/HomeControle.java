package br.com.java.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeControle {

	@RequestMapping("/")
	public String apresentacao() {
		
		return "index";
	}

	@RequestMapping("/entrar")
	public String entrar() {

		return "entrar";
	}
	
	@RequestMapping("/sobre")
	public String sobre() {

		return "sobre";
	}
	
	@RequestMapping("/contato")
	public String contato() {

		return "contato";
	}
}
