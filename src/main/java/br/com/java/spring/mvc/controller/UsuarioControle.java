package br.com.java.spring.mvc.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsuarioControle {
	
	@RequestMapping(value = "/cliente/registrar")
	public ModelAndView getRegistrarForm() {

		return new ModelAndView("registrar");
	}
}
