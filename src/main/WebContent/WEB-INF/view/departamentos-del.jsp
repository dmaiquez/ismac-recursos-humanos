<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <!-- <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>   --> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<section>
<h1>Eliminar Departamentos</h1>
 
 	<form action="del" method="get">
 	
 	<input type="hidden"  id="idDepartamento" name= "idDepartamento" value="${departamento.idDepartamento}"/> 
	<strong>¿Desea Eliminar el Dato?</strong>
	<br>
	<button type="submit">Aceptar</button>
 
 	</form>
 
 		<button onclick="window.location.href ='/rhumanos-web/departamentos/findAll';return false;">
 					Cancelar y Regresar
 					</button></section>

</body>
</html>