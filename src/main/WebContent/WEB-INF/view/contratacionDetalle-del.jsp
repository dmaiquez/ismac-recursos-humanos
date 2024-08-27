<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Eliminar Contratacion Detalle</h1>
	
	<form action="del" method="get">
		<input type="hidden" id="idContratacionDetalle" name="idContratacionDetalle" value="${contratacionDetalle.idContratacionDetalle}"/>
		<strong>¿Desea Eliminar el dato?</strong>
        <br><br>
		
		<button type="submit">Eliminar</button>
	
		 <button onclick="window.location.href='/rrhh-web/contratacionDetalle/findAll';return false;">
          CANCELAR 
          </button>
		
	</form>
</body>
</html>