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
	<h1>Clientes</h1>
	
	<form action="add" method="post">
		<input type="hidden" id="idContratacionDetalle" name="idContratacionDetalle" value="${contratacionDetalle.idContratacionDetalle}"/>
		Contratación ID
		<input type="number" id="idContratacion" name="idContratacion" value="${contratacionDetalle.idContratacion}"/>
		<br>
		Empleado ID
		<input type="number" id="idEmpleado" name="idEmpleado" value="${contratacionDetalle.idEmpleado}"/>
		<br>
		Tipo Contrato ID
		<input type="number" id="idTipoContrato" name="idTipoContrato" value="${contratacionDetalle.idTipoContrato}"/>
		<br>
		Sucursal ID
		<input type="number" id="idSucursal" name="idSucursal" value="${contratacionDetalle.idSucursal}"/>
		<br>
		Academia Título 
		<input type="text" id="academiaTitulo" name="academiaTitulo" value="${contratacionDetalle.academiaTitulo}"/>
		<br>
		Academia País 
		<input type="text" id="academiaPais" name="academiaPais" value="${contratacionDetalle.academiaPais}"/>
		<br>
		Academia Nivel 
		<input type="text" id="academiaNivel" name="academiaNivel" value="${contratacionDetalle.academiaNivel}"/>
		<br>
		Academia Area 
		<input type="text" id="academiaArea" name="academiaArea" value="${contratacionDetalle.academiaArea}"/>
		<br>
		Academia Institución 
		<input type="text" id="academiaInstitucion" name="academiaInstitucion" value="${contratacionDetalle.academiaInstitucion}"/>
		<br>
		Academia Nivel Estado 
		<input type="text" id="academiaNivelEstado" name="academiaNivelEstado" value="${contratacionDetalle.academiaNivelEstado}"/>
		<br>
		Academia Certificado 
		<input type="text" id="academiaCertificado" name="academiaCertificado" value="${contratacionDetalle.academiaCertificado}"/>
		<br>
		Academia Nivel Idioma Ingles  
		<input type="text" id="academiaNivelIdiomaIngles" name="academiaNivelIdiomaIngles" value="${contratacionDetalle.academiaNivelIdiomaIngles}"/>
		<br>
		Academia Nivel Idioma Otro 
		<input type="text" id="academiaNivelIdiomaOtro" name="academiaNivelIdiomaOtro" value="${contratacionDetalle.academiaNivelIdiomaOtro}"/>
		<br>
		Explab Nivel 
		<input type="text" id="explabNivel" name="explabNivel" value="${contratacionDetalle.explabNivel}"/>
		<br>
		Explab Tiempo Años 
		<input type="number" id="explabTiempoAnios" name="explabTiempoAnios" value="${contratacionDetalle.explabTiempoAnios}"/>
		<br>
		Sueldo estimado  
		<input type="number" id="sueldoEstimado" name="sueldoEstimado" value="${contratacionDetalle.sueldoEstimado}"/>
		<br>
		Sueldo Aprobado  
		<input type="number" id="sueldoAprobado" name="sueldoAprobado" value="${contratacionDetalle.sueldoAprobado}"/>
		<br>
		Días Vacaciones   
		<input type="number" id="diasVacaciones" name="diasVacaciones" value="${contratacionDetalle.diasVacaciones}"/>
		<br>
		Aprobado Contratación   
		<input type="text" id="aprobadoContratacion" name="aprobadoContratacion" value="${contratacionDetalle.aprobadoContratacion}"/>
		<br>
		Fecha Inicio Contratación   
		<input type="date" id="fechaInicioContratacion" name="fechaInicioContratacion" value="${fn:substring(contratacionDetalle.fechaInicioContratacion,0,10)}"/>
		<br>
		Fecha Fin Contratación    
		<input type="date" id="fechaFinContratacion" name="fechaFinContratacion" value="${fn:substring(contratacionDetalle.fechaFinContratacion,0,10)}"/>
		<br>
		Hoja de Vida   
		<input type="text" id="hojaVida" name="hojaVida" value="${contratacionDetalle.hojaVida}"/>
		<br>
		Foto   
		<input type="text" id="foto" name="foto" value="${contratacionDetalle.foto}"/>
		<br>
		<br>
		<button type="submit">Guardar</button>
		
		<button type="button" onclick="window.location.href='/rrhh-web/contratacionDetalle/findAll'; return false;">Cancelar</button>
		
	</form>
</body>
</html>