<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>
	Solicitudes
</h1>
	<button onclick="window.location.href='/ismac-recursos-humanos/solicitudes/findOne?&opcion=1'; return false;">
		Agregar
		</button>
<table>
<thead>
<tr>
 	<th>idSolicitud</th>
 	<th>Empleado</th>
 	<th>Fecha Solicitud Peticion</th>
 	<th>Fecha Solicitud Revision</th>
 	<th>Estado Solicitud</th>
 	<th>Pdf Solicitud</th>
 	<th>Descripcion</th>
 	
</tr>
</thead>
<tbody>
	<c:forEach var="item" items="${solicitudes}">
	<tr> 
		<td>${item.idSolicitud}</td>
		<td>${item.empleado.nombre} ${item.empleado.apellido}</td>
		<td>${fn:substring(item.fechasolicitudpeticion,0,10)}</td>
		<td>${fn:substring(item.fechasolicitudrevision,0,10)}</td>
		<td>${item.estadosolicitud}</td>
		<td>${item.pdfsolicitud}</td>
		<td>${item.descripcion}</td>
		
		<td>
		<button onclick="window.location.href='/ismac-recursos-humanos/solicitudes/findOne?idSolicitud=${item.idSolicitud}&opcion=1'; return false;">
		Actualizar
		</button>
		
		<button onclick="window.location.href ='/ismac-recursos-humanos/solicitudes/findOne?idSolicitud=${item.idSolicitud}&opcion=2';return false;">
		Eliminar
		</button>
		
		
		</td>
	</tr>
	</c:forEach>
</tbody>
</table>
</body>
</html>