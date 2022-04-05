package br.com.java.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeControle {

	@RequestMapping("/index")
	public String apresentacao() {
		
		return "index";
	}
}