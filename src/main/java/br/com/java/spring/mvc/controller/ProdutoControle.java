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
import org.springframework.web.bind.annotation.ResponseBody;

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

	// Configura��o para MultiPartResolver
	// O resolvedor de v�rias partes é para fazer upload de imagens e outras m�dias
	// tamanho m�ximo do upload é para o tamanho da imagem n�o deve ser m�ximo que 10240000
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
		// Resultado de vincula��o é usado se o formul�rio tiver algum erro, ele ser�
        // redireciona para a mesma página sem executar nenhuma fun��o
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
	@RequestMapping("/getProdutosLista")
	public @ResponseBody List<Produto> getProdutosListaInJson() {
		return produtoService.getTodosProdutos();
	}
	@RequestMapping("/produtoListaAngular")
	public String getProdutos() {
		return "produtoListaAngular";
	}
}
