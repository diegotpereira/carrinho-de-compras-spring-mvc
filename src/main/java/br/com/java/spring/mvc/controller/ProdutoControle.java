package br.com.java.spring.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import br.com.java.spring.mvc.model.Produto;
import br.com.java.spring.mvc.service.ProdutoService;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProdutoControle {

	@Autowired
	private ProdutoService produtoService;

    public ProdutoService getProdutoService() {
        return produtoService;
    }

    public void setProdutoService(ProdutoService produtoService) {
        this.produtoService = produtoService;
    }

	// Configuração para MultiPartResolver
	// O resolvedor de várias partes é para fazer upload de imagens e outras mídias
	// tamanho máximo do upload é para o tamanho da imagem não deve ser máximo que 10240000
    @Bean
	public MultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		multipartResolver.setMaxUploadSize(10240000);
		return multipartResolver;
	}
	
	@RequestMapping(value="/admin/produto/addProduto", method=RequestMethod.GET)
	public String getProdutoForm(Model model) {
		Produto produto = new Produto();
		produto.setProdutoCategoria("Android");
		model.addAttribute("produtoFormObj", produto);
		
		return "addProduto";
	}
	@RequestMapping(value="/admin/produto/addProduto", method=RequestMethod.POST)
	public String addProduto(@Valid @ModelAttribute(value = "produtoFormObj") Produto produto, BindingResult result) {
		// Resultado de vinculação é usado se o formulário tiver algum erro, ele será
        // redireciona para a mesma página sem executar nenhuma função
		if (result.hasErrors()) 
			
			return "addProduto";

			produtoService.addProduto(produto);
			MultipartFile imagem = produto.getProdutoImagem();
			if (imagem != null && !imagem.isEmpty()) {
				Path path = Paths
				.get("C:/Users/administrator/eclipse-workspace/carrinho-de-compras-spring-mvc/webapp/WEB-INF/resource/imagens/produtos", 
				+ produto.getProdutoId() + ".jpg");

				try {
					imagem.transferTo(new File(path.toString()));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e){ 
					e.printStackTrace();
				}
			}
		
		return "redirect:/getAllProdutos";
	}
	//Exibir Produtos
	@RequestMapping("/getTodosProdutos")
	public ModelAndView getTodosProdutos() {
		List<Produto> produtos = produtoService.getTodosProdutos();

		return new ModelAndView("produtoLista", "produtos", produtos);
	}
	// isso é usado para obter o produto por productId
	@RequestMapping("getProdutoPorId/{produtoId}")
	public ModelAndView getProdutoPorId(@PathVariable(value="produtoId") int produtoId) {
		Produto produto = produtoService.getProdutoPorId(produtoId);

		return new ModelAndView("produtoPagina", "produtoObj", produto);
	}
}
