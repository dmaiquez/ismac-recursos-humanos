<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Asistencias</title>
</head>
<body>
    <h1>Registro de Asistencias</h1>
    
    
    <form action="add" method="post">
        <input type="hidden" id="id_asistencia" name="id_asistencia" value="${asistencia.id_asistencia}">
		
		Id Empleado
		<input type="number" id="id_empleado" name="id_empleado" value="${asistencia.id_empleado}">
		<br/>
		
		Fecha de Asistencia
		<input type="date" id="fecha_asistencia" name="fecha_asistencia" value="${fn:substring(item.fecha_asistencia, 0, 10)}">
		<br/>
		
		Año
		<input type="number" id="anio" name="anio" value="${asistencia.anio}">
		<br/>
		
		Mes
		<input type="number" id="mes" name="mes" value="${asistencia.mes}">
		<br/>
		
		Día
		<input type="number" id="dia" name="dia" value="${asistencia.dia}">
		<br/>
		
		Hora Entrada
		<input type="time" id="hora_entrada_trabajo" name="hora_entrada_trabajo" value="${asistencia.hora_entrada_trabajo}">
		<br/>
		
		Hora Salida
		<input type="time" id="hora_salida_trabajo" name="hora_salida_trabajo" value="${asistencia.hora_salida_trabajo}">
		<br/>
		
		Total Horas Trabajo
		<input type="number" id="total_horas_trabajo" name="total_horas_trabajo" value="${asistencia.total_horas_trabajo}">
		<br/>
		
		Total Horas Extra
		<input type="number" id="total_horas_extra" name="total_horas_extra" value="${asistencia.total_horas_extra}">
		<br/>
		
		Registro Atraso
		<input type="text" id="registro_atraso" name="registro_atraso" value="${asistencia.registro_atraso}">
		<br/>
		
		Total Horas Atraso
		<input type="number" id="total_horas_atraso" name="total_horas_atraso" value="${asistencia.total_horas_atraso}">
		<br/>
		
		Registro Falta
		<input type="text" id="registro_falta" name="registro_falta" value="${asistencia.registro_falta}">
		<br/>
		
		Registro Vacación
		<input type="text" id="registro_vacacion" name="registro_vacacion" value="${asistencia.registro_vacacion}">
		<br/>
		
		Total Horas Trabajo Mes
		<input type="number" id="total_horas_trabajo_mes" name="total_horas_trabajo_mes" value="${asistencia.total_horas_trabajo_mes}">
		<br/>

        
		<button type="submit">Guardar</button>
 <button type="button" onclick="window.location.href='/rrrhh-web/asistencia/findAll';return false;">CANCELAR </button>
    </form>

</body>
</html>