<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>CONTRATOS NUEVOS</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>  
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"/> 
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap"/>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            background-image: url('${pageContext.request.contextPath}/resources/img/fondo.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
         font-family: 'Times New Roman', Times, serif; /*Cambia el tipo de letra global */
        }

      h1{
      color:#c2c8ec ;
 }
     

        /* Estilo para la tabla */
        .table {
            background-color: rgba(255, 255, 255, 0.5); /* Fondo blanco con 50% de transparencia */
          ;
             /* Fondo gris claro para la tabla */
        }

        /* Estilo para los encabezados de la tabla (th) */
        .table thead th {
            background-color: #978A63 ; /
            color:#9E8BCC; /* Texto blanco */
            font-weight: bold;
        }

        /* Estilo para las celdas de datos (td) */
        .table tbody td {
            background-color:rgba(255, 255, 255, 0.5); /* Fondo blanco */
            color: #011614; /* Texto gris oscuro */
        }

        /* Estilo para las filas alternas en el cuerpo de la tabla */
        .table tbody tr:nth-child(even) {
            background-color: rgba(255, 255, 255, 0.5); /* Fondo blanco con 50% de transparencia */; /* Fondo gris muy claro */
        }

        /* Estilo para los botones en la tabla */
        .table tbody td button {
            margin: 0 5px;
        }
    </style>
</head>
<body>
<nav></nav>
<section class="px-5 px-5">
    <h1>LISTA DE CONTRATOS</h1>
    <div class="container" style="text-align: center;">

        <button class="btn btn-primary" onclick="window.location.href ='/ismac-recursos-humanos/contrataciones/findOne?&opcion=1';return false;">
            
            <i class="fa-solid fa-handshake"></i> Nuevo Contrato
        </button>
    </div>
    <div class="table-responsive">
        <table id="tabla1"
               name="tabla1"
               data-height="600"
               data-search="true"
               data-pagination="true"
               data-toogle="tabla1"
               data-tollbar=".toolbar"
               class="table table-striped table-sm">
            <thead>
                <tr>
                    <th data-field="ID CONTRATACIONES" data-sortable="true">ID-Contratacion</th>
                    <th data-field="ID CIUDAD" data-sortable="true">ID-Ciudad</th>
                    <th data-field="ID DEPARTAMENTOS" data-sortable="true">ID-Departamento</th>
                    <th data-field="VACANTES-FECHA" data-sortable="true">Vacante-Fecha</th>
                    <th data-field="VACANTE-PUESTOS" data-sortable="true">Vacante-Puesto</th>
                    <th data-field="VACANTE-DESCRIPCIÓN" data-sortable="true">Vacante-Descripcion</th>
                    <th data-field="VACANTE-MODALIDAD" data-sortable="true">Vacante-Modalidad</th>
                    <th data-field="VACANTE-TIEMPO" data-sortable="true">Vacante-Tiempo</th>
                    <th data-field="VACANTE-NIVEL" data-sortable="true">Vacante-Nivel</th>
                    <th data-field="VACANTE-NUMERO" data-sortable="true">Vacante-Numero</th>
                    <th data-field="VACANTE-SUELDO-ESTIMADO" data-sortable="true">Vacante-Sueldo-Estimado</th>
                    <th>Acciones.</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${keyContrataciones}">
                    <tr>
                        <td>${item.idContratacion}</td>
                        <td>${item.idCiudad}</td>
                        <td>${item.idDepartamento}</td>
                        <td>${item.vacanteFecha}</td>
                        <td>${item.vacantePuesto}</td>
                        <td>${item.vacanteDescripcion}</td>
                        <td>${item.vacanteModalidad}</td>
                        <td>${item.vacanteTiempo}</td>
                        <td>${item.vacanteNivel}</td>
                        <td>${item.vacanteNumero}</td>
                        <td>${item.vacanteSueldoEstimado}</td>
                        <td>
                            <button class="btn btn-secondary" onclick="window.location.href ='/ismac-recursos-humanos/contrataciones/findOne?idContratacion=${item.idContratacion}&opcion=1';return false;">
                                <i class="fa-solid fa-rotate-right"></i> Actualizar
                            </button>
                            <button class="btn btn-danger" onclick="window.location.href ='/ismac-recursos-humanos/contrataciones/findOne?idContratacion=${item.idContratacion}&opcion=2';return false;">
                                <i class="fa-solid fa-trash"></i> Eliminar
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>
<footer></footer>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

<script type="text/javascript">
    var $tabla1 = $('#tabla1');
    $(function(){
        $tabla1.bootstrapTable({
            sortReset: true
        });
    });
</script>
</body>
</html>
