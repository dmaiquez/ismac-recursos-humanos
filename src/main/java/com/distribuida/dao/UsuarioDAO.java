package com.distribuida.dao;


import com.distribuida.entities.Usuario;

import java.util.List;


public interface UsuarioDAO {

	public List<Usuario> findAll();
	
	public Usuario findOne(int id);
	
	public void add(Usuario Usuario);
	
	public void up(Usuario Usuario);

	public void del(int id);

}