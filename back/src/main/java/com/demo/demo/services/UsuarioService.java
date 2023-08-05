package com.demo.demo.services;

import com.demo.demo.repository.entities.Usuario;

public interface UsuarioService {


	public Usuario findByUsername(String username);
	
	public void delete(Usuario usuario);
    
}
