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
@Table(name = "sucursal")
public class Sucursal {

	//  sucursal
	// id_sucursal, id_canton, sucursal, descripcion
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name= "id_sucursal")
	private int idSucursal;
	
	@JoinColumn(name="id_canton")
	@ManyToOne(cascade = { CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	private Canton canton;
	
	@Column(name= "sucursal")
	private String sucursal;
	
	@Column(name= "descripcion")
	private String descripcion;
	
	public Sucursal() {}

	public Sucursal(int idSucursal, Canton canton, String sucursal, String descripcion) {

		this.idSucursal = idSucursal;
		this.canton = canton;
		this.sucursal = sucursal;
		this.descripcion = descripcion;
	}

	public int getIdSucursal() {
		return idSucursal;
	}

	public void setIdSucursal(int idSucursal) {
		this.idSucursal = idSucursal;
	}

	public Canton getCanton() {
		return canton;
	}

	public void setCanton(Canton canton) {
		this.canton = canton;
	}

	public String getSucursal() {
		return sucursal;
	}

	public void setSucursal(String sucursal) {
		this.sucursal = sucursal;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "Sucursal [idSucursal=" + idSucursal + ", canton=" + canton + ", sucursal=" + sucursal + ", descripcion="
				+ descripcion + "]";
	}
	
	
	

}
