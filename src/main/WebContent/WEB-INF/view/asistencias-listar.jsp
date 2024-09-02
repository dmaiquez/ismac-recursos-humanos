<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Asistencias</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body>

<div class="container">
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


<section class="px-5 py-5">
    <div class="container">
        <h1>Asistencias</h1>
        <div class="mb-3 text-center">
            <button class="btn btn-primary" onclick="window.location.href='/ismac-recursos-humanos/asistencia/findOne?opcion=1';return false;">
                Agregar <i class="fa-solid fa-circle-plus"></i>
            </button>
        </div>
        <div class="table-responsive">
            <table id="tablaAsistencias"
                   name="tablaAsistencias"
                   data-search="true"
                   data-pagination="true"
                   data-toggle="tablaAsistencias"
                   data-toolbar=".toolbar"
                   class="table table-striped table-sm">
                <thead>
                    <tr>
                        <th data-field="Id Asistencia" data-sortable="true">Id Asistencia</th>
                        <th data-field="Id Empleado" data-sortable="true">Id Empleado</th>
                        <th data-field="Fecha Asistencia" data-sortable="true">Fecha Asistencia</th>
                        <th data-field="Año" data-sortable="true">Año</th>
                        <th data-field="Mes" data-sortable="true">Mes</th>
                        <th data-field="Día" data-sortable="true">Día</th>
                        <th data-field="Hora Entrada" data-sortable="true">Hora Entrada</th>
                        <th data-field="Hora Salida" data-sortable="true">Hora Salida</th>
                        <th data-field="Total Horas Trabajo" data-sortable="true">Total Horas Trabajo</th>
                        <th data-field="Total Horas Extra" data-sortable="true">Total Horas Extra</th>
                        <th data-field="Registro Atraso" data-sortable="true">Registro Atraso</th>
                        <th data-field="Total Horas Atraso" data-sortable="true">Total Horas Atraso</th>
                        <th data-field="Registro Falta" data-sortable="true">Registro Falta</th>
                        <th data-field="Registro Vacación" data-sortable="true">Registro Vacación</th>
                        <th data-field="Total Horas Trabajo Mes" data-sortable="true">Total Horas Trabajo Mes</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${asistencias}">
                        <tr>
                            <td>${item.id_asistencia}</td>
                            <td>${item.empleado.nombre} ${item.empleado.apellido}</td>
                            <td>${fn:substring(item.fecha_asistencia,0,10)}</td>
                            <td>${item.anio}</td>
                            <td>${item.mes}</td>
                            <td>${item.dia}</td>
                            <td>${item.hora_entrada_trabajo}</td>
                            <td>${item.hora_salida_trabajo}</td>
                            <td>${item.total_horas_trabajo}</td>
                            <td>${item.total_horas_extra}</td>
                            <td>${item.registro_atraso}</td>
                            <td>${item.total_horas_atraso}</td>
                            <td>${item.registro_falta}</td>
                            <td>${item.registro_vacacion}</td>
                            <td>${item.total_horas_trabajo_mes}</td>
                            <td>
                                <button class="btn btn-success" onclick="window.location.href='/ismac-recursos-humanos/asistencia/findOne?id_asistencia=${item.id_asistencia}&opcion=1';return false;">
                                   <i class="fa-solid fa-arrows-rotate"></i>
                                </button>
                                <button class="btn btn-danger" onclick="window.location.href='/ismac-recursos-humanos/asistencia/findOne?id_asistencia=${item.id_asistencia}&opcion=2';return false;">
                                     <i class="fa-solid fa-trash-can"></i>
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>

<footer class="py-2 bg-light">
    <div class="container">
        <p class="m-0 text-center">Instituto Tecnológico ISMAC</p>
    </div>
</footer>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script  src="${pageContext.request.contextPath}/resources/js/script.js"></script>

<script>
    var $tablaAsistencias = $('#tablaAsistencias');
    $(function(){
        $tablaAsistencias.bootstrapTable({
            sortReset: true
        });
    });
</script>

</body>
</html>
