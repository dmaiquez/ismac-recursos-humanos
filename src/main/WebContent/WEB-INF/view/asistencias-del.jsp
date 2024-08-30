<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1> Asistencias </h1>
   <strong> ¿Deseas Eliminar el siguiente registro?</strong>
      <form action="del" method="get">

          <input type="hidden" id="id_asistencia" name="id_asistencia" value="${asistencia.id_asistencia}"/>
           <br/>
           <button type="submit">Guardar</button>
          <button onclick="window.location.href='/ismac-recursos-humanos/asistencia/findAll';return false;">
          CANCELAR 
          </button>
      </form>
 
 
</body>
</html>