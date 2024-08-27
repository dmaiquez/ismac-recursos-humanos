<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EMPLEADOS</h1>
	<button onclick="window.location.href='/ismac-recursos-web-nocturnov2/empleados/findOne?opcion=1'; return false;">
					Agregar
					</button>

		<table>
			<thead>
				<tr>
				<th>idEmpleado</th>
				<th>idCiudad</th>
				<th>cedulaRuc</th>
				<th>nombre</th>
				<th>apellido</th>
				<th>fechaNacimiento</th>
				<th>edad</th>
				<th>genero</th>
				<th>nacionalidad</th>
				<th>direccion</th>
				<th>telefono</th>
				<th>correo</th>
				<th>codigoPostal</th>
				<th>estadoCivil</th>
				<th>numCargasFamiliares</th>
				<th>estadoEmpleado</th>
				<th>foto</th>
				<th>Acciones</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${empleados}">
				<tr>
					<td>${item.idEmpleado}</td>
					<td>${item.idCiudad}</td>
					<td>${item.cedulaRuc}</td>
					<td>${item.nombre}</td>
					<td>${item.apellido}</td>
					<td>${item.fechaNacimiento}</td>
					<td>${item.edad}</td>
					<td>${item.genero}</td>
					<td>${item.nacionalidad}</td>
					<td>${item.direccion}</td>
					<td>${item.telefono}</td>
					<td>${item.correo}</td>
					<td>${item.codigoPostal}</td>
					<td>${item.estadoCivil}</td>
					<td>${item.numCargasFamiliares}</td>
					<td>${item.estadoEmpleado}</td>
					<td>${item.foto}</td>
					
					
					<td>
					<button onclick="window.location.href='/ismac-recursos-web-nocturnov2/empleados/findOne?idEmpleado=${item.idEmpleado}&opcion=1'; return false;">
					Actualizar
					</button>
	
					<button onclick="window.location.href='/ismac-recursos-web-nocturnov2/empleados/findOne?idEmpleado=${item.idEmpleado}&opcion=2'; return false;">
					Eliminar
					</button>
					
					
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
</body>
</html>