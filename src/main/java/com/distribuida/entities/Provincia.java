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
@Table(name = "provincia")
public class Provincia {

	//provincia
	//id_provincia, id_region, provincia, descripcion
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_provincia") 
	private int idProvincia;
    
    @JoinColumn(name = "id_region")
    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE,CascadeType.PERSIST, CascadeType.REFRESH})
	private Region region;
   
    @Column(name = "provincia") 
	private String provincia;
	
    @Column(name = "descripcion") 
	private String descripcion;

    
    public Provincia() {}


	public Provincia(int idProvincia, Region region, String provincia, String descripcion) {
	
		this.idProvincia = idProvincia;
		this.region = region;
		this.provincia = provincia;
		this.descripcion = descripcion;
	}


	public int getIdProvincia() {
		return idProvincia;
	}


	public void setIdProvincia(int idProvincia) {
		this.idProvincia = idProvincia;
	}


	public Region getRegion() {
		return region;
	}


	public void setRegion(Region region) {
		this.region = region;
	}


	public String getProvincia() {
		return provincia;
	}


	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	@Override
	public String toString() {
		return "Provincia [idProvincia=" + idProvincia + ", region=" + region + ", provincia=" + provincia
				+ ", descripcion=" + descripcion + "]";
	}
    
    
	
	
}
