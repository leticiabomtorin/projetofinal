package br.com.lbgestaoti.projeto.dao;

import org.springframework.data.repository.CrudRepository;

import br.com.lbgestaoti.projeto.model.Cliente;

/* A função extends amplia as características da classe, o que iremos utilizar para
 enviar ou trazer as informações do banco de dados */

public interface ClienteDao extends CrudRepository<Cliente,Integer>{

	
}
