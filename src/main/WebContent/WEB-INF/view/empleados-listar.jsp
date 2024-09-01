<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri ="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LISTADO DE EMPLEADOS</title>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>--%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<nav></nav>
<section class="px-5 py-5">
<h1>EMPLEADOS</h1>
<div class="container" style="text-align: center;">
	<button class="btn btn-primary" onclick="window.location.href='/ismac-recursos-humanos/empleados/findOne?opcion=1'; return false;"><i class="fa-solid fa-user-plus"></i> Agregar
					</button>
</div>
<div class="table-responsive">
 	<table id="tabla1"
	name="tabla1"
	data-height="600"
	data-search="true"
	data-pagination="true"
	data-toogle="tabla1"
	data-tollbar=".toolbar"
	class="table table-striped table-sm">
<thead>
				<tr>
				<th data-field="IdEmpleado" data-sortable="true" > idEmpleado</th>
				<th data-field="Ciudad" data-sortable="true" > Ciudad</th>
				<th data-field="cedulaRuc" data-sortable="true" > Cédula o Ruc</th>
				<th data-field="nombre" data-sortable="true" > Nombre</th>
				<th data-field="apellido" data-sortable="true" >Apellido</th>
				<th data-field="fechaNacimiento" data-sortable="true" > Fecha de Nacimiento</th>
				<th data-field="edad" data-sortable="true" > Edad</th>
				<th data-field="genero" data-sortable="true" > Genero</th>
				<th data-field="nacionalidad" data-sortable="true" > Nacionalidad</th>
				<th data-field="direccion" data-sortable="true" > Dirección</th>
				<th data-field="telefono" data-sortable="true" > Telefono</th>
				<th data-field="correo" data-sortable="true" > Correo</th>
				<th data-field="codigoPostal" data-sortable="true" > Codigo Postal</th>
				<th data-field="estadoCivil" data-sortable="true" > Estado Civil</th>
				<th data-field="numCargasFamiliares" data-sortable="true" >N° Cargas Familiares</th>
				<th data-field="estadoEmpleado" data-sortable="true" > Estado Empleado</th>
				<th data-field="foto" data-sortable="true" > Foto </th>
				<th>Acciones</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${empleados}">
				<tr>
					<td>${item.idEmpleado}</td>
					<td>${item.ciudad.ciudad}</td>
					<td>${item.cedulaRuc}</td>
					<td>${item.nombre}</td>
					<td>${item.apellido}</td>
					<td>${fn:substring(item.fechaNacimiento,0,10)}</td>
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
					<td><img alt="foto"  height="100" width="100" src="${pageContext.request.contextPath}/resources/img/${item.foto}"></td>

					
					
					
					<td>
					<button class="btn btn-success" onclick="window.location.href='/ismac-recursos-humanos/empleados/findOne?idEmpleado=${item.idEmpleado}&opcion=1'; return false;"><i class="fa-solid fa-rotate"></i>
					</button>
	
					<button class="btn btn-danger" onclick="window.location.href='/ismac-recursos-humanos/empleados/findOne?idEmpleado=${item.idEmpleado}&opcion=2'; return false;"><i class="fa-solid fa-trash"></i>
					</button>
					
					
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
 	</div>
 	</section>
<footer>
</footer>

 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
 	
 	<script type="text/javascript">
 	
 	var $tabla1 =$('#tabla1')
 	
 	$(function(){
 		$tabla1.bootstrapTable({
 			sortReset: true
 		})
 	})
 	
 	</script>
</body>
</html>