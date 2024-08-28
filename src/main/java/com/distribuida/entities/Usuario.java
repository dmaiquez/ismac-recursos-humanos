package com.distribuida.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "usuario")
public class Usuario {

	// usuario	
	// id_usuario, id_empleado, username, clave, tipo_usuario, estado
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name= "id_usuario")
	private int idUsuario;
	
	@JoinColumn(name="id_empleado")
	@ManyToOne(cascade = { CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	private Empleado empleado;
	
	
	@Column(name= "username")
	private String username;
	@Column(name= "clave")
	private String clave;
	@Column(name= "tipo_usuario")
	private String tipo_usuario;
	@Column(name= "estado")
	private int estado;
	

	public Usuario() {}


	public Usuario(int idUsuario, Empleado empleado, String username, String clave, String tipo_usuario, int estado) {
	
		this.idUsuario = idUsuario;
		this.empleado = empleado;
		this.username = username;
		this.clave = clave;
		this.tipo_usuario = tipo_usuario;
		this.estado = estado;
	}


	public int getIdUsuario() {
		return idUsuario;
	}


	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}


	public Empleado getEmpleado() {
		return empleado;
	}


	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getClave() {
		return clave;
	}


	public void setClave(String clave) {
		this.clave = clave;
	}


	public String getTipo_usuario() {
		return tipo_usuario;
	}


	public void setTipo_usuario(String tipo_usuario) {
		this.tipo_usuario = tipo_usuario;
	}


	public int getEstado() {
		return estado;
	}


	public void setEstado(int estado) {
		this.estado = estado;
	}


	@Override
	public String toString() {
		return "Usuario [idUsuario=" + idUsuario + ", empleado=" + empleado + ", username=" + username + ", clave="
				+ clave + ", tipo_usuario=" + tipo_usuario + ", estado=" + estado + "]";
	}
	
	
	
	
	
}
