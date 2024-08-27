package com.distribuida.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "ciudad")
public class Departamento {

	//departamento
	// id_departamento, departamento, descripcion
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_departamento")
	private int idDepartamento;
	@Column(name = "departamento")
	private String departamento;
	@Column(name = "descripcion")
	private String descripcion;
	
	public Departamento() {}

	public Departamento(int idDepartamento, String departamento, String descripcion) {
	
		this.idDepartamento = idDepartamento;
		this.departamento = departamento;
		this.descripcion = descripcion;
	}

	public int getIdDepartamento() {
		return idDepartamento;
	}

	public void setIdDepartamento(int idDepartamento) {
		this.idDepartamento = idDepartamento;
	}

	public String getDepartamento() {
		return departamento;
	}

	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "Departamento [idDepartamento=" + idDepartamento + ", departamento=" + departamento + ", descripcion="
				+ descripcion + "]";
	}
	
	
	

}
