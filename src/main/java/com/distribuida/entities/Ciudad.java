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
@Table(name = "ciudad")
public class Ciudad {

	//ciudad
	//id_ciudad, id_provincia, ciudad, descripcion
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_ciudad")
	private int idCiudad;		
	
	@JoinColumn(name = "id_provincia")
    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE,CascadeType.PERSIST, CascadeType.REFRESH})		
	private Provincia provincia;	
	
	@Column(name = "ciudad")
	private String ciudad;
	
	@Column(name = "descripcion")
	private String descripcion;
	
	
	public Ciudad() {}


	public Ciudad(int idCiudad, Provincia provincia, String ciudad, String descripcion) {	
		this.idCiudad = idCiudad;
		this.provincia = provincia;
		this.ciudad = ciudad;
		this.descripcion = descripcion;
	}


	public int getIdCiudad() {
		return idCiudad;
	}


	public void setIdCiudad(int idCiudad) {
		this.idCiudad = idCiudad;
	}


	public Provincia getProvincia() {
		return provincia;
	}


	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}


	public String getCiudad() {
		return ciudad;
	}


	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	@Override
	public String toString() {
		return "Ciudad [idCiudad=" + idCiudad + ", provincia=" + provincia + ", ciudad=" + ciudad + ", descripcion="
				+ descripcion + "]";
	}
	
	
	
	
	
	
	
}
