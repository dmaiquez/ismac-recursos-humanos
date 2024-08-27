<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Contratacion Detalle </h1>
	<button onclick="window.location.href='/rrhh-web/contratacionDetalle/findOne?opcion=1'; return false;"> 
	Agregar
	</button>
	<br><br>
	<table>
	 	<thead>
	 		<tr>
	 		<th> Contrataci�n Detalle</th>
	 		<th> Contrataci�n</th>
	 		<th> Empleado</th>
	 		<th> Tipo Contrato</th>
	 		<th> Sucursal</th>
	 		<th> Academia T�tulo</th>
	 		<th> Academia Pa�s</th>
	 		<th> Academia Nivel</th>
	 		<th> Academia Area</th>
	 		<th> Academia Instituci�n</th>
	 		<th> Academia Nivel Estado</th>
	 		<th> Academia Certificado</th>
	 		<th> Academia Nivel Idioma Ingles</th>
	 		<th> Academia Nivel Idioma Otro</th>
	 		
	 		<th> Explab Nivel</th>
	 		<th> Explab Tiempo A�os</th>
	 		<th> Sueldo Estimado</th>
	 		<th> Sueldo Aprobado</th>
	 		<th> D�as Vacaciones</th>
	 		<th> Aprobado Contrataci�n</th>
	 		<th> Fecha Inicio Contrataci�n</th>
	 		<th> Fecha Fin Contrataci�n</th>
	 		<th> Hoja de Vida</th>
	 		<th> Foto</th>
	 		<th> Acciones</th>
	 		
	 		</tr>
	 	</thead>	
	 	<tbody>
	 	<c:forEach var="item" items="${contratacionDetalle}">  
	 	
	 		<tr>
	 		<td>${item.idContratacionDetalle}</td>
			<td>${item.idContratacion}</td>
			<td>${item.idEmpleado}</td>
			<td>${item.idTipoContrato}</td>
			<td>${item.idSucursal}</td>
			<td>${item.academiaTitulo}</td>
			<td>${item.academiaPais}</td>
 			<td>${item.academiaNivel}</td>
 			<td>${item.academiaArea}</td>
 			<td>${item.academiaInstitucion}</td>
 			<td>${item.academiaNivelEstado}</td>
 			<td>${item.academiaCertificado}</td>
 			<td>${item.academiaNivelIdiomaIngles}</td>
 			<td>${item.academiaNivelIdiomaOtro}</td>
 			<td>${item.explabNivel}</td>
 			<td>${item.explabTiempoAnios}</td>
 			<td>${item.sueldoEstimado}</td>
 			<td>${item.sueldoAprobado}</td>
 			<td>${item.diasVacaciones}</td>
 			<td>${item.aprobadoContratacion}</td>
 			<td>${item.fechaInicioContratacion}</td>
 			<td>${item.fechaFinContratacion}</td>
 			<td>${item.hojaVida}</td>
 			<td>${item.foto}</td>
 			
 			<td>
	 			<button onclick="window.location.href='/rrhh-web/contratacionDetalle/findOne?idContratacionDetalle=${item.idContratacionDetalle}&opcion=1'; return false;"> Actualizar
				</button>
				
	 			<button onclick="window.location.href='/rrhh-web/contratacionDetalle/findOne?idContratacionDetalle=${item.idContratacionDetalle}&opcion=2'; return false;"> Eliminar
				</button>
				<br><br>
	 			</td>
 			
 			
	 		</tr>
	 	</c:forEach>
	 		
 
	 	</tbody>
	</table>

</body>
</html>