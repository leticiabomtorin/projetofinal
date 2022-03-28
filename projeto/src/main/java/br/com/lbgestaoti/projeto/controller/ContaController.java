package br.com.lbgestaoti.projeto.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.lbgestaoti.projeto.dao.ContaDao;
import br.com.lbgestaoti.projeto.model.Conta;

@RestController // Monitorar uma URL
public class ContaController {

	@Autowired // Permite com que a interface seja executada com os proecessos CRUD
	private ContaDao dao;
	
	@GetMapping("/contas") // Permite indicar o nome da página que vocêdeverá executar no endereço da sua URL

	// Criando um método de leitura de dados da nossa tabela 
	public ArrayList<Conta> recuperarTudo(){
		ArrayList<Conta> lista;
		lista=(ArrayList<Conta>)dao.findAll();
		return lista;
	}
}
