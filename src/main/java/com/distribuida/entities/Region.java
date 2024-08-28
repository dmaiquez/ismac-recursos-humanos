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
@Table(name = "region")
public class Region {

	//region
	// id_region, region, descripcion

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_region")
	private int idRegion;
	
	@Column(name = "region")
	private String region;
	
	@Column(name = "descripcion")
	private String descripcion;
	

	public Region() {}


	public Region(int idRegion, String region, String descripcion) {	
		this.idRegion = idRegion;
		this.region = region;
		this.descripcion = descripcion;
	}


	public int getIdRegion() {
		return idRegion;
	}


	public void setIdRegion(int idRegion) {
		this.idRegion = idRegion;
	}


	public String getRegion() {
		return region;
	}


	public void setRegion(String region) {
		this.region = region;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	@Override
	public String toString() {
		return "Region [idRegion=" + idRegion + ", region=" + region + ", descripcion=" + descripcion + "]";
	}
	
		
}
