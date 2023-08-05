package com.demo.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.demo.demo.repository.entities.Usuario;

public interface UsuarioRepository  extends CrudRepository<Usuario,Long> {

    public Usuario findByUsername(String username);
	
	@Query("select u from Usuario u where u.username=?1")	
	public Usuario findByUsername2(String username);
    
}