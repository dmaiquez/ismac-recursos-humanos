package com.distribuida.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.EmpleadoDAO;
import com.distribuida.entities.Empleado;

@Controller
@RequestMapping("/empleados")//path principal
public class EmpleadoController {
	@Autowired
	private EmpleadoDAO empleadoDAO;
	
	@GetMapping("/findAll")//path secundario
	public String findAll(Model model) {
		
		//try {
			List<Empleado> empleados=empleadoDAO.findAll();
			
			model.addAttribute("empleados",empleados);//key:clientes o keyclientes !! valor:clientes
			
			return"empleados-listar";//este es el nombre del formulario web a usar"clientes-listar.html","clientes-listar.jsp"
			
			
//		} catch (Exception e) {
	//		// TODO: handle exception
		//}
		
				
	}
	
	
	@GetMapping("/findOne") //Actualizar o eliminar
	public String findOne(@RequestParam("idEmpleado") @Nullable Integer idEmpleado
						,@RequestParam("opcion")@Nullable Integer opcion
						,Model model
			) {
		
		if(idEmpleado !=null) {
			Empleado empleado =empleadoDAO.findOne(idEmpleado);
			model.addAttribute("empleado",empleado);
		}
		if(opcion == 1) return "empleados-add"; 
		else return "empleados-del";
	}
	
	@PostMapping("/add")
	public String add(@RequestParam("idEmpleado")@Nullable Integer idEmpleado
					 ,@RequestParam("idCiudad")@Nullable Integer idciudad
					 ,@RequestParam("cedula_ruc")@Nullable String cedula_ruc
					 ,@RequestParam("nombre")@Nullable String nombre
					 ,@RequestParam("apellido")@Nullable String apellido
					 ,@RequestParam("fecha_nacimiento")@Nullable Date fecha_nacimiento
					 ,@RequestParam("edad")@Nullable Integer edad
					 ,@RequestParam("genero")@Nullable String genero
					 ,@RequestParam("nacionalidad")@Nullable String nacionalidad
					 ,@RequestParam("direccion")@Nullable String direccion
					 ,@RequestParam("telefono")@Nullable String telefono
					 ,@RequestParam("correo")@Nullable String correo
					 ,@RequestParam("codigo_postal")@Nullable String codigo_postal
					 ,@RequestParam("estado_civil")@Nullable String estado_civil
					 ,@RequestParam("num_cargas_familiares")@Nullable Integer num_cargas_familiares
					 ,@RequestParam("estado_empleado")@Nullable Integer estado_empleado
					 ,@RequestParam("foto")@Nullable String foto
					 ,Model model
					) {
			if(idEmpleado == null) {
				Empleado empleado =new Empleado(0,idciudad,cedula_ruc,nombre,apellido,fecha_nacimiento,edad,genero,nacionalidad,direccion,telefono,correo,codigo_postal,estado_civil,num_cargas_familiares,estado_empleado,foto);
				empleadoDAO.add(empleado);
				
			}else {
				Empleado empleado =new Empleado(0,idciudad,cedula_ruc,nombre,apellido,fecha_nacimiento,edad,genero,nacionalidad,direccion,telefono,correo,codigo_postal,estado_civil,num_cargas_familiares,estado_empleado,foto);
				empleadoDAO.up(empleado);
				
			}
		
			
				
		return "redirect:/empleados/findAll";
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idEmpleado")@Nullable Integer idEmpleado) {
		empleadoDAO.del(idEmpleado);
		
	return"redirect:/empleados/findAll";	
	}
	
}
