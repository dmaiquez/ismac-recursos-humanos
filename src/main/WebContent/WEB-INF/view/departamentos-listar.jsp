<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>  
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"/> 
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap"/>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 <style>
    body {
        background-image: url('${pageContext.request.contextPath}/resources/img/rh.jpg'); /* Cambia la ruta de la imagen según tu directorio */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        margin: 0;
        padding: 0;
        font-family: 'Times New Roman', Times, serif; /* Cambia el tipo de letra global */
    }

    h1 {
       color:black;
         /* Cambia el tipo de letra para los encabezados */
    }
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
<section class="px-5 py-5">

<div class="container" style="text-align: center;">
<h1>AREA DE DEPARTAMENTOS </h1>
	<button class="btn btn-primary" onclick="window.location.href ='/ismac-recursos-humanos/departamentos/findOne?&opcion=1';return false;">
 					<i class="fa-solid fa-folder-open"></i> Nuevo Departamento
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
 				<th data-field="Id Departamento" data-sortable="true" >ID-Departamento</th>
 		 		<th data-field="DEPARTAMENTO" data-sortable="true" >Departamento</th>
 				 <th data-field="DESCRIPCIÓN " data-sortable="true" >Descripcion</th>
 				 <th>ACCIONES</th>
 		 </tr>
 		 </thead>
 		<tbody>
 			<c:forEach var="item" items="${keyDepartamento}">
 				<tr>
 					<td>${item.idDepartamento}</td>
 					<td>${item.departamento}</td>
 					<td>${item.descripcion}</td>
 					<td>
 					<button class="btn btn-secondary"  onclick="window.location.href ='/ismac-recursos-humanos/departamentos/findOne?idDepartamento=${item.idDepartamento}&opcion=1';return false;">
 					<i class="fa-solid fa-id-card"></i> Actualizar
 					</button>
 					
 					<button  class="btn btn-danger"   onclick="window.location.href ='/ismac-recursos-humanos/departamentos/findOne?idDepartamento=${item.idDepartamento}&opcion=2';return false;">
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
 	
 	var $tabla1 =$('#tabla1')
 	
 	$(function(){
 		$tabla1.bootstrapTable({
 			sortReset: true
 		})
 	})
 	
 	</script>
			
</body>
</html>