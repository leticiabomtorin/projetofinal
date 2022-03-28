package br.com.lbgestaoti.projeto.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.lbgestaoti.projeto.dao.ClienteDao;
import br.com.lbgestaoti.projeto.model.Cliente;

@RestController // Monitorar uma URL
public class ClienteController {

	@Autowired // Permite com que a interface seja executada com os proecessos CRUD
	private ClienteDao dao;
	
	@GetMapping("/clientes") // Permite indicar o nome da página que vocêdeverá executar no endereço da sua URL

	// Criando um método de leitura de dados da nossa tabela 
	public ArrayList<Cliente> recuperarTudo(){
		ArrayList<Cliente> lista;
		lista=(ArrayList<Cliente>)dao.findAll();
		return lista;
	}
}
