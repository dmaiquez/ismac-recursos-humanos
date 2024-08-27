 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EMPLEADOS</h1>
<form action="add" method="post">


		<input type="hidden" id="idEmpleado" name= "idEmpleado" value="${empleado.idEmpleado}"/>
		ID Ciudad
		<input type="text" id="idCiudad" name= "idCiudad" value="${empleado.idCiudad}"/>
		<br/>
		Cedula Ruc
		<input type="text" id="cedulaRuc" name= "cedulaRuc" value="${empleado.cedulaRuc}"/>
		<br/>
		Nombre
		<input type="text" id="nombre" name= "nombre" value="${empleado.nombre}"/>
		<br/>
		Apellido
		<input type="text" id="apellido" name= "apellido" value="${empleado.apellido}"/>
		<br/>
		Fecha Nacimiento
		<input type="text" id="fechaNacimiento" name= "fechaNacimiento" value="${empleado.fechaNacimiento}"/>
		<br/>
		Edad
		<input type="number" id="edad" name= "edad" value="${empleado.edad}"/>
		<br/>
		Genero
		<input type="text" id="genero" name= "genero" value="${empleado.genero}"/>
		<br/>
		Nacionalidad
		<input type="text" id="nacionalidad" name= "nacionalidad" value="${empleado.nacionalidad}"/>
		<br/>
		Direccion
		<input type="text" id="direccion" name= "direccion" value="${empleado.direccion}"/>
		<br/>
		Telefono
		<input type="number" id="telefono" name= "telefono" value="${empleado.telefono}"/>
		<br/>
		Correo
		<input type="email" id="correo" name= "correo" value="${empleado.correo}"/>
		<br/>
		Codigo Postal
		<input type="number" id="codigoPostal" name= "codigoPostal" value="${empleado.codigoPostal}"/>
		<br/>
		Estado Civil
		<input type="text" id="estadoCivil" name= "estadoCivil" value="${empleado.estadoCivil}"/>
		<br/>
		Num Cargas Familiares
		<input type="number" id="num_cargas_familiares" name= "num_cargas_familiares" value="${empleado.numCargasFamiliares}"/>
		<br/>
		Estado empleado
		<input type="text" id="estado_empleado" name= "estado_empleado" value="${empleado.estadoEmpleado}"/>
		<br/>
		
		
	<button type="submit">Guardar</button>
	
	<button onclick="window.location.href='/ismac-recursos-web-nocturnov2/empleados/findAll'; return false;">
					Cancelar
					</button>
	
</form>
</body>
</html>