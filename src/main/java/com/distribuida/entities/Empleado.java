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


import org.springframework.stereotype.Component;
@Component
@Entity
@Table(name= "empleado")
public class Empleado {
	
	
	
	// atributos
	@Id
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	@Column(name="id_empleado")
	private int idEmpleado;
	
//	@Column(name="id_ciudad")
//	private int idCiudad;
	@JoinColumn(name = "id_ciudad")
    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE,CascadeType.PERSIST, CascadeType.REFRESH})
	private Ciudad ciudad;
	
	@Column(name="cedula_ruc")
	private String cedulaRuc;
	@Column(name="nombre")
	private String nombre;
	@Column(name="apellido")
	private String apellido;
	@Column(name="fecha_nacimiento")
	private Date  fechaNacimiento;
	@Column(name="edad")
	private int edad;
	@Column(name="genero")
	private String genero;
	@Column(name="nacionalidad")
	private String nacionalidad;
	@Column(name="direccion")
	private String direccion;
	@Column(name="telefono")
	private String telefono;
	@Column(name="correo")
	private String correo;
	@Column(name="codigo_postal")
	private String codigoPostal;
	@Column(name="estado_civil")
	private String estadoCivil;
	@Column(name="num_cargas_familiares")
	private int numCargasFamiliares;
	@Column(name="estado_empleado")
	private int estadoEmpleado;
	@Column(name="foto")
	private String foto;
	
	
//constructores
   public Empleado() {
	  
	   
   }


public Empleado(int idEmpleado, Ciudad ciudad, String cedulaRuc, String nombre, String apellido, Date fechaNacimiento,
		int edad, String genero, String nacionalidad, String direccion, String telefono, String correo,
		String codigoPostal, String estadoCivil, int numCargasFamiliares, int estadoEmpleado, String foto) {
	
	this.idEmpleado = idEmpleado;
	this.ciudad = ciudad;
	this.cedulaRuc = cedulaRuc;
	this.nombre = nombre;
	this.apellido = apellido;
	this.fechaNacimiento = fechaNacimiento;
	this.edad = edad;
	this.genero = genero;
	this.nacionalidad = nacionalidad;
	this.direccion = direccion;
	this.telefono = telefono;
	this.correo = correo;
	this.codigoPostal = codigoPostal;
	this.estadoCivil = estadoCivil;
	this.numCargasFamiliares = numCargasFamiliares;
	this.estadoEmpleado = estadoEmpleado;
	this.foto = foto;
}


public int getIdEmpleado() {
	return idEmpleado;
}


public void setIdEmpleado(int idEmpleado) {
	this.idEmpleado = idEmpleado;
}


public Ciudad getCiudad() {
	return ciudad;
}


public void setIdCiudad(Ciudad ciudad) {
	this.ciudad = ciudad;
}


public String getCedulaRuc() {
	return cedulaRuc;
}


public void setCedulaRuc(String cedulaRuc) {
	this.cedulaRuc = cedulaRuc;
}


public String getNombre() {
	return nombre;
}


public void setNombre(String nombre) {
	this.nombre = nombre;
}


public String getApellido() {
	return apellido;
}


public void setApellido(String apellido) {
	this.apellido = apellido;
}


public Date getFechaNacimiento() {
	return fechaNacimiento;
}


public void setFechaNacimiento(Date fechaNacimiento) {
	this.fechaNacimiento = fechaNacimiento;
}


public int getEdad() {
	return edad;
}


public void setEdad(int edad) {
	this.edad = edad;
}


public String getGenero() {
	return genero;
}


public void setGenero(String genero) {
	this.genero = genero;
}


public String getNacionalidad() {
	return nacionalidad;
}


public void setNacionalidad(String nacionalidad) {
	this.nacionalidad = nacionalidad;
}


public String getDireccion() {
	return direccion;
}


public void setDireccion(String direccion) {
	this.direccion = direccion;
}


public String getTelefono() {
	return telefono;
}


public void setTelefono(String telefono) {
	this.telefono = telefono;
}


public String getCorreo() {
	return correo;
}


public void setCorreo(String correo) {
	this.correo = correo;
}


public String getCodigoPostal() {
	return codigoPostal;
}


public void setCodigoPostal(String codigoPostal) {
	this.codigoPostal = codigoPostal;
}


public String getEstadoCivil() {
	return estadoCivil;
}


public void setEstadoCivil(String estadoCivil) {
	this.estadoCivil = estadoCivil;
}


public int getNumCargasFamiliares() {
	return numCargasFamiliares;
}


public void setNumCargasFamiliares(int numCargasFamiliares) {
	this.numCargasFamiliares = numCargasFamiliares;
}


public int getEstadoEmpleado() {
	return estadoEmpleado;
}


public void setEstadoEmpleado(int estadoEmpleado) {
	this.estadoEmpleado = estadoEmpleado;
}




public String getFoto() {
	return foto;
}


public void setFoto(String foto) {
	this.foto = foto;
}


@Override
public String toString() {
	return "Empleado [idEmpleado=" + idEmpleado + ", ciudad=" + ciudad + ", cedulaRuc=" + cedulaRuc + ", nombre="
			+ nombre + ", apellido=" + apellido + ", fechaNacimiento=" + fechaNacimiento + ", edad=" + edad
			+ ", genero=" + genero + ", nacionalidad=" + nacionalidad + ", direccion=" + direccion + ", telefono="
			+ telefono + ", correo=" + correo + ", codigoPostal=" + codigoPostal + ", estadoCivil=" + estadoCivil
			+ ", numCargasFamiliares=" + numCargasFamiliares + ", estadoEmpleado=" + estadoEmpleado + ", foto=" + foto
			+ "]";
}






   






///Autor William daniel pajuña

}
