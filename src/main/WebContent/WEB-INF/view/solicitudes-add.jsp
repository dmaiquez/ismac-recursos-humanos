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

<h1>Solicitudes</h1>
<form action="add" method="post">

	<input type="hidden" name="idSolicitud" value="${solicitudes.idSolicitud}"/>
	
	Empleado 
	<select id="idEmpleado" name ="idEmpleado">
		<c:forEach var="item" items="${empleados}"> 
		<option value="${item.idEmpleado}" ${item.idEmpleado == solicitudes.empleado.idEmpleado ? 'selected' : '' }>${item.nombre} ${item.apellido}</option>	
	</c:forEach>
		
	</select>
		<br/>
	Fecha Solicitud Peticion
	<input type="date" id="fechasolicitudpeticion" name="fecha_solicitud_peticion" value="${fn:substring(solicitud.fechasolicitudpeticion,0,10)}"/>
	<br/>
	Fecha Solicitud Revision
	<input type="date" id="fechasolicitudrevision" name="fecha_solicitud_revision" value="${fn:substring(solicitud.fechasolicitudrevision,0,10) }"/>
	<br/>
	Estado Solicitud
	<input type="text" id="estadosolicitud" name="estadosolicitud" value="${solicitud.estadosolicitud}"/>
	<br/>
	Pdf Solicitud
	<input type="text" id="pdfsolicitud" name="pdfsolicitud" value="${solicitud.pdfsolicitud}"/>
	<br/>
	Descripcion
	<input type="text" id="descripcion" name="descripcion" value="${solicitud.descripcion}"/>
	<br/>
	
	<button type="submit">Guardar</button>
	<button onclick="window.location.href='/ismac-recursos-humanos/solicitudes/findAll';return false;">
	Cancelar
	</button>
 </form>
</body>
</html>