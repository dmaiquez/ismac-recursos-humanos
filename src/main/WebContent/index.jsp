<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Recursos Humanos</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="contenedor principal">
  <header class="topbar">
    <a href="http://ita-sa.com" class="logo">
      <img src="image/cebollin.png" alt="">
      <span>CEBOLLIN </span>
    </a>
    <section class="menu top">
      <span class="titulo-seccion">
        Departamento de Talento Humano "RRHH"
      </span>
    </section>
  </header>
  <nav class="menu lateral">
    <label for="">LISTA DE CATEGORIAS</label>
    <ul>
      <li><a class="ga" href="${pageContext.request.contextPath}/asistencia/findAll">Asistencias <b>AS</b></a></li>
      <li><a class="th" href="${pageContext.request.contextPath}/contrataciones/findAll">Contratación <b>CO</b></a></li>
      <li><a class="lc" href="${pageContext.request.contextPath}/contratacionDetalle/findAll">Contratación Detalle <b>CD</b></a></li>
      <li><a class="de" href="${pageContext.request.contextPath}/departamentos/findAll">Departamentos <b>DE</b></a></li>
      <li><a class="gd" href="${pageContext.request.contextPath}/empleados/findAll">Empleados <b>EM</b></a></li>
      <li><a class="hc" href="${pageContext.request.contextPath}/formapago/findAll">Formas Pago <b>FP</b></a></li>
      <li><a class="gt" href="${pageContext.request.contextPath}/pagos/findAll">Pagos <b>PA</b></a></li>
      <li><a class="ga" href="${pageContext.request.contextPath}/solicitudes/findAll">Solicitudes <b>SO</b></a></li>
      <li><a class="th" href="${pageContext.request.contextPath}/vacaciones/findAll">Vacaciones <b>VA</b></a></li>
      
      <li>
      <li><a class="mc" href="#mc">Horarios<b>HO</b></a></li>
        <hr>
       </li>
      <li><a href="#manuales"><b>M</b>ANUALES</a></li>
      <li><a href="#reglamento"><b>R</b>EGLAMENTO INTERNO</a></li>
      <li><a href="#caracterizacion"><b>C</b>ARACTERIZACION</a></li>
    </ul>
  </nav>
</div>

  <section>
   

  </section>
	
	<footer class="py-2 bg-light">
	    <div class="container">
	        <p class="m-0 text-center">Instituto Tecnológico ISMAC</p>
	    </div>
	</footer>

<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
  <script  src="${pageContext.request.contextPath}/resources/js/script.js"></script>

</body>
</html>

