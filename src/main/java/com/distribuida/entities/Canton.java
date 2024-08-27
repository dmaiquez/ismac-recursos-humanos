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
@Table(name = "canton")
public class Canton {

	// canton
	//id_canton, id_ciudad, canton, descripcion
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_canton")
	private int idCanton;
	
	@JoinColumn(name = "id_ciudad")
    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE,CascadeType.PERSIST, CascadeType.REFRESH})
	private Ciudad ciudad;
	
	@Column(name = "canton")
	private String canton;
	@Column(name = "descripcion")
	private String descripcion;
	

	public Canton() {}


	public Canton(int idCanton, Ciudad ciudad, String canton, String descripcion) {	
		this.idCanton = idCanton;
		this.ciudad = ciudad;
		this.canton = canton;
		this.descripcion = descripcion;
	}


	public int getIdCanton() {
		return idCanton;
	}


	public void setIdCanton(int idCanton) {
		this.idCanton = idCanton;
	}


	public Ciudad getCiudad() {
		return ciudad;
	}


	public void setCiudad(Ciudad ciudad) {
		this.ciudad = ciudad;
	}


	public String getCanton() {
		return canton;
	}


	public void setCanton(String canton) {
		this.canton = canton;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	@Override
	public String toString() {
		return "Canton [idCanton=" + idCanton + ", ciudad=" + ciudad + ", canton=" + canton + ", descripcion="
				+ descripcion + "]";
	}
	
	
	
	
}
