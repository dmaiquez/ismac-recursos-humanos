<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pagos</title>
</head>
<body>
	
	<h1>Listado de Pagos</h1>
	<button onclick="window.location.href='/rrrhh-web/pagos/findOne?opcion=1';return false;">Agregar</button>
	
	<table border="2">
		<thead>
			<tr>
				<th>ID Pago</th>
				<th>ID Empleado</th>
				<th>ID Forma de Pago</th>
				<th>Aplica IVA</th>
				<th>Monto Pago</th>
				<th>Monto IVA</th>
				<th>Monto Descuento</th>
				<th>Monto Extras</th>
				<th>Monto Pago Total</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${pagos}">
				<tr>
					<td>${item.id_pago}</td>
					<td>${item.id_empleado}</td>
					<td>${item.id_forma_pago}</td>
					<td>${item.aplica_iva}</td>
					<td>${item.monto_pago}</td>
					<td>${item.monto_iva}</td>
					<td>${item.monto_descuento}</td>
					<td>${item.monto_extras}</td>
					<td>${item.monto_pago_total}</td>
					<td>
						<button onclick="window.location.href='/rrrhh-web/pagos/findOne?id_pago=${item.id_pago}&opcion=1';return false;">Actualizar</button>
						<button onclick="window.location.href='/rrrhh-web/pagos/findOne?id_pago=${item.id_pago}&opcion=2';return false;">Borrar</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
