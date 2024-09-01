<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar Empleado</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />



</head>
<body>
	<nav></nav>
	<section class="py-5 px-5">
			<div class="container">
<h1>Agregar un Nuevo Empleado</h1>
		<form action="add" method="post" class="needs-validation" novalidate>

		<input type="hidden" id="idEmpleado" name= "idEmpleado" value="${empleado.idEmpleado}"/>
		
		<div class="form-group">
			<label for="idCiudad" class="form-label">Ciudad</label>
			
			   <select class="form-select" id="idCiudad" name="idCiudad" required>
               		<c:forEach var="item" items="${ciudades}">
               			<option value="${item.idCiudad}" ${item.idCiudad == empleado.ciudad.idCiudad? 'selected': ''} >${item.ciudad}</option>
               		</c:forEach>
               	</select>
			<%-- <input class="form-control" type="text" id="idCiudad" name="idCiudad" value="${empleado.idCiudad}"required/> --%>
		</div>
		
		<div class="form-group">
			<label for="cedulaRuc" class="form-label">Cédula o Ruc</label>
			<input class="form-control" type="text" id="cedulaRuc" name="cedulaRuc" value="${empleado.cedulaRuc} "required/>
		</div>
		<div class="form-group">
			<label for="nombre" class="form-label">Nombre</label>
			<input class="form-control" type="text" id="nombre" name="nombre" value="${empleado.nombre}"required/>
		</div>
		<div class="form-group">
			<label for="apellido" class="form-label">Apellido</label>
			<input class="form-control" type="text" id="apellido" name="apellido" value="${empleado.apellido}"required/>
		</div>
		<div class="form-group">
			<label for="fechaNacimiento" class="form-label">Fecha de Nacimiento</label>
			<input class="form-control" type="date" id="fechaNacimiento" name="fechaNacimiento" value="${fn:substring(empleado.fechaNacimiento,0,10)}"required/>
		</div>
		<div class="form-group">
			<label for="edad" class="form-label">Edad</label>
			<input class="form-control" type="number" id="edad" name="edad" value="${empleado.edad}"required/>
		</div>
		<div class="form-group">
			<label for="genero" class="form-label">Genero</label>
			<input class="form-control" type="text" id="genero" name="genero" value="${empleado.genero}"required/>
		</div>
		<div class="form-group">
			<label for="nacionalidad" class="form-label">Nacionalidad</label>
			<input class="form-control" type="text" id="nacionalidad" name="nacionalidad" value="${empleado.nacionalidad}"required/>
		</div>
		<div class="form-group">
			<label for="direccion" class="form-label">Dirección</label>
			<input class="form-control" type="text" id="direccion" name="direccion" value="${empleado.direccion}"required/>
		</div>
		<div class="form-group">
			<label for="telefono" class="form-label">Teléfono</label>
			<input class="form-control" type="text" id="telefono" name="telefono" value="${empleado.telefono}"required/>
		</div>
		<div class="form-group">
			<label for="correo" class="form-label">Correo</label>
			<input class="form-control" type="email" id="correo" name="correo" value="${empleado.correo}"required/>
		</div>
		<div class="form-group">
			<label for="codigoPostal" class="form-label">Código Postal</label>
			<input class="form-control" type="text" id="codigoPostal" name="codigoPostal" value="${empleado.codigoPostal}"required/>
		</div>
		<div class="form-group">
			<label for="estadoCivil" class="form-label">Estado Civil</label>
			<input class="form-control" type="text" id="estadoCivil" name="estadoCivil" value="${empleado.estadoCivil}"required/>
		</div>
		<div class="form-group">
			<label for="numCargasFamiliares" class="form-label">Número de Cargas Familiares</label>
			<input class="form-control" type="number" id="numCargasFamiliares" name="numCargasFamiliares" value="${empleado.numCargasFamiliares}"required/>
		</div>
		<div class="form-group">
			<label for="estadoEmpleado" class="form-label">Estado Empleado</label>
			<input class="form-control" type="text" id="estadoEmpleado" name="estadoEmpleado" value="${empleado.estadoEmpleado}"required/>
		</div>
       <div class="form-group">
			<label for="foto" class="form-label">Foto</label>
			<input class="form-control" type="text" id="foto" name="foto" value="${empleado.foto}"required/>
		</div>
	
		
		
	<button type="submit"><i class="fa-solid fa-floppy-disk"></i> Guardar</button>
	
	<button  onclick="window.location.href='/ismac-recursos-humanos/empleados/findAll'; return false;">
					Cancelar
					</button>
	
</form>


	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
 	
</body>
</html>