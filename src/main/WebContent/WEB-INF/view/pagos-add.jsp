<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Pagos</title>
</head>
<body>
<h1>Registro de Pagos</h1>

	<form action="add" method="post">
		<input type="hidden" id="id_pago" name="id_pago" value="${pago.id_pago}">
		
		Id Empleado
		<input type="text" id="id_empleado" name="id_empleado" value="${pago.id_empleado}">
		<br/>
		
		Id Forma de Pago
		<input type="text" id="id_forma_pago" name="id_forma_pago" value="${pago.id_forma_pago}">
		<br/>
		
		Aplica IVA
		<input type="text" id="aplica_iva" name="aplica_iva" value="${pago.aplica_iva}">
		<br/>
		
		Monto Pago
		<input type="number" id="monto_pago" name="monto_pago" value="${pago.monto_pago}">
		<br/>
		
		Monto IVA
		<input type="number" id="monto_iva" name="monto_iva" value="${pago.monto_iva}">
		<br/>
		
		Monto Descuento
		<input type="number" id="monto_descuento" name="monto_descuento" value="${pago.monto_descuento}">
		<br/>
		
		Monto Extras
		<input type="number" id="monto_extras" name="monto_extras" value="${pago.monto_extras}">
		<br/>
		
		Monto Pago Total
		<input type="number" id="monto_pago_total" name="monto_pago_total" value="${pago.monto_pago_total}">
		<br/>
		
		<button type="submit">Guardar</button>
		<button type="button" onclick="window.location.href='/rrrhh-web/pagos/findAll';return false;">CANCELAR</button>
		
	</form>
</body>
</html>
