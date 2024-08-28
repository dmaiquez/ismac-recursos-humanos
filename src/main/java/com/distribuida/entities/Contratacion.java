package com.distribuida.entities;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
@Entity 
@Table(name="contratacion")
public class Contratacion {
	@Id 
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	@Column(name="id_contratacion")
	private int idContratacion;
			
	@JoinColumn(name="id_ciudad")
	@ManyToOne(cascade = { CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	private Ciudad ciudad;
	
	@JoinColumn(name="id_departamento")
	@ManyToOne(cascade = { CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	private Departamento departamento;
	
	@Column(name="vacante_fecha")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date vacanteFecha;
	
	@Column(name="vacante_puesto")
	private String vacantePuesto;
	
	@Column(name="vacante_descripcion")
	private String vacanteDescripcion;
	
	@Column(name="vacante_modalidad")
	private String vacanteModalidad;
	
	@Column(name="vacante_tiempo")
	private String vacanteTiempo ;
	
	@Column(name="vacante_nivel")
	private String  vacanteNivel;
	
	@Column(name="vacante_numero")
	private int vacanteNumero;
	
	@Column(name="vacante_sueldo_estimado")
	private Double vacanteSueldoEstimado;
	
	public Contratacion () {
		
	}

	

	public Contratacion(int idContratacion, Ciudad ciudad, Departamento departamento, Date vacanteFecha, String vacantePuesto,
			String vacanteDescripcion, String vacanteModalidad, String vacanteTiempo, String vacanteNivel,
			int vacanteNumero, Double vacanteSueldoEstimado) {
		this.idContratacion = idContratacion;
		this.ciudad = ciudad;
		this.departamento = departamento;
		this.vacanteFecha = vacanteFecha;
		this.vacantePuesto = vacantePuesto;
		this.vacanteDescripcion = vacanteDescripcion;
		this.vacanteModalidad = vacanteModalidad;
		this.vacanteTiempo = vacanteTiempo;
		this.vacanteNivel = vacanteNivel;
		this.vacanteNumero = vacanteNumero;
		this.vacanteSueldoEstimado = vacanteSueldoEstimado; 
	}


	public int getIdContratacion() {
		return idContratacion;
	}

	public void setIdContratacion(int idContratacion) {
		this.idContratacion = idContratacion;
	}

	
	
	

	public Ciudad getCiudad() {
		return ciudad;
	}



	public void setCiudad(Ciudad ciudad) {
		this.ciudad = ciudad;
	}



	public Departamento getDepartamento() {
		return departamento;
	}



	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}



	public Date getVacanteFecha() {
		return vacanteFecha;
	}

	public void setVacanteFecha(Date vacanteFecha) {
		this.vacanteFecha = vacanteFecha;
	}

	public String getVacantePuesto() {
		return vacantePuesto;
	}

	public void setVacantePuesto(String vacantePuesto) {
		this.vacantePuesto = vacantePuesto;
	}

	public String getVacanteDescripcion() {
		return vacanteDescripcion;
	}

	public void setVacanteDescripcion(String vacanteDescripcion) {
		this.vacanteDescripcion = vacanteDescripcion;
	}

	public String getVacanteModalidad() {
		return vacanteModalidad;
	}

	public void setVacanteModalidad(String vacanteModalidad) {
		this.vacanteModalidad = vacanteModalidad;
	}

	public String getVacanteTiempo() {
		return vacanteTiempo;
	}

	public void setVacanteTiempo(String vacanteTiempo) {
		this.vacanteTiempo = vacanteTiempo;
	}

	public String getVacanteNivel() {
		return vacanteNivel;
	}

	public void setVacanteNivel(String vacanteNivel) {
		this.vacanteNivel = vacanteNivel;
	}

	public int getVacanteNumero() {
		return vacanteNumero;
	}

	public void setVacanteNumero(int vacanteNumero) {
		this.vacanteNumero = vacanteNumero;
	}

	public Double getVacanteSueldoEstimado() {
		return vacanteSueldoEstimado;
	}

	public void setVacanteSueldoEstimado(Double vacanteSueldoEstimado) {
		this.vacanteSueldoEstimado = vacanteSueldoEstimado;
	}

	
	@Override
	public String toString() {
		return "Contratacion [idContratacion=" + idContratacion + ", ciudad=" + ciudad + ", departamento="
				+ departamento + ", vacanteFecha=" + vacanteFecha + ", vacantePuesto=" + vacantePuesto
				+ ", vacanteDescripcion=" + vacanteDescripcion + ", vacanteModalidad=" + vacanteModalidad
				+ ", vacanteTiempo=" + vacanteTiempo + ", vacanteNivel=" + vacanteNivel + ", vacanteNumero="
				+ vacanteNumero + ", vacanteSueldoEstimado=" + vacanteSueldoEstimado + "]";
	}


}
