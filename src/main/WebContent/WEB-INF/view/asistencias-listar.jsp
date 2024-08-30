<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Asistencias</title>
</head>
<body >
	
	<h1>Asistencias</h1>
	
	<button onclick="window.location.href='/ismac-recursos-humanos/asistencia/findOne?opcion=1';return false;" > Agregar
		</button>
	<table border="2">
	 	<thead>
	 		<tr>
	 		<th>Id Asistencia</th>
	 		<th>Empleado</th>
	 		<th>Fecha Asistencia</th>
	 		<th>Año</th>
	 		<th>Mes</th>
	 		<th>Día</th>
	 		<th>Hora Entrada</th>
	 		<th>Hora Salida</th>
	 		<th>Total Horas Trabajo</th>
	 		<th>Total Horas Extra</th>
	 		<th>Registro Atraso</th>
	 		<th>Total Horas Atraso</th>
	 		<th>Registro Falta</th>
	 		<th>Registro Vacación</th>
	 		<th>Total Horas Trabajo Mes</th>
	 		</tr>
	 	</thead>	
	 	<tbody>
	 	<c:forEach var="item" items="${asistencias}">
	 		<tr>
	 			<td>${item.id_asistencia}</td>
	 			<td>${item.empleado.nombre} ${item.empleado.apellido}</td>
	 			<td>${fn:substring(item.fecha_asistencia,0,10)}</td>
	 			<td>${item.anio}</td>
	 			<td>${item.mes}</td>
	 			<td>${item.dia}</td>
	 			<td>${item.hora_entrada_trabajo}</td>
	 			<td>${item.hora_salida_trabajo}</td>
	 			<td>${item.total_horas_trabajo}</td>
	 			<td>${item.total_horas_extra}</td>
	 			<td>${item.registro_atraso}</td>
	 			<td>${item.total_horas_atraso}</td>
	 			<td>${item.registro_falta}</td>
	 			<td>${item.registro_vacacion}</td>
	 			<td>${item.total_horas_trabajo_mes}</td>
	 				 <td>
					<button onclick="window.location.href='/ismac-recursos-humanos/asistencia/findOne?id_asistencia=${item.id_asistencia}&opcion=1';return false;" > Actualizar
					</button>
					
					<button onclick="window.location.href='/ismac-recursos-humanos/asistencia/findOne?id_asistencia=${item.id_asistencia}&opcion=2';return false;" > Borrar
					</button>
					</td>
	 		</tr>
	 	</c:forEach>
	 	</tbody>
	</table>
</body>
</html>
