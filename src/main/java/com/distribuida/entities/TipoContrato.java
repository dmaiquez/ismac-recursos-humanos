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
@Table(name = "tipo_contrato")
public class TipoContrato {

	// tipo_contrato
	// id_tipo_contrato, tipo_contrato, descripcion
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name= "id_tipo_contrato")
	private int idTipoContrato;
	@Column(name= "tipo_contrato")
	private String tipoContrato;
	@Column(name= "descripcion")
	private String descripcion;

	public TipoContrato() {		
	}

	public TipoContrato(int idTipoContrato, String tipoContrato, String descripcion) {
	
		this.idTipoContrato = idTipoContrato;
		this.tipoContrato = tipoContrato;
		this.descripcion = descripcion;
	}

	public int getIdTipoContrato() {
		return idTipoContrato;
	}

	public void setIdTipoContrato(int idTipoContrato) {
		this.idTipoContrato = idTipoContrato;
	}

	public String getTipoContrato() {
		return tipoContrato;
	}

	public void setTipoContrato(String tipoContrato) {
		this.tipoContrato = tipoContrato;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Override
	public String toString() {
		return "TipoContrato [idTipoContrato=" + idTipoContrato + ", tipoContrato=" + tipoContrato + ", descripcion="
				+ descripcion + "]";
	}
	
	
	
	
	
	
}
