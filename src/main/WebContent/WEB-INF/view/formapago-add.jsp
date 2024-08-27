<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registro de Formas de Pago</title>
</head>
<body>
    <h1>Registro de Formas de Pago</h1>
    
    <form action="add" method="post"> 
        <input type="hidden" id="id_forma_pago" name="id_forma_pago" value="${formapago.id_forma_pago != null ? formapago.id_forma_pago : ''}">
        Forma de Pago
        <input type="text" id="forma_pago" name="forma_pago" value="${formapago.forma_pago != null ? formapago.forma_pago : ''}">
        <br/>
        
        Descripción
        <input type="text" id="descripcion" name="descripcion" value="${formapago.descripcion != null ? formapago.descripcion : ''}">
        <br/>
        
        <button type="submit">Guardar</button>
        <button type="button" onclick="window.location.href='/rrrhh-web/formapago/findAll';return false;">CANCELAR</button>
    </form>
</body>
</html>
