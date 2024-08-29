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
</head>
<body>
<nav></nav>
<section class="px-5 py-5">
<h1>LISTA DE DEPARTAMENTOS </h1>
<div class="container" style="text-align: center;">
	<button class="btn btn-primary" onclick="window.location.href ='/rhumanos-web/departamentos/findOne?&opcion=1';return false;">
 					Agregar
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
 				<th data-field="Id Departamento" data-sortable="true" >idDepartamento</th>
 		 		<th data-field="DEPARTAMENTO" data-sortable="true" >Departamento</th>
 				 <th data-field="DESCRIPCIÓN " data-sortable="true" >Descripcion</th>
 				 <th>BOTONES PRINCIPALES</th>
 		 </tr>
 		 </thead>
 		<tbody>
 			<c:forEach var="item" items="${keyDepartamento}">
 				<tr>
 					<td>${item.idDepartamento}</td>
 					<td>${item.departamento}</td>
 					<td>${item.descripcion}</td>
 					<td>
 					<button class="btn btn-success"  onclick="window.location.href ='/rhumanos-web/departamentos/findOne?idDepartamento=${item.idDepartamento}&opcion=1';return false;">
 					Actualizar
 					</button>
 					
 					<button  class="btn btn-danger"   onclick="window.location.href ='/rhumanos-web/departamentos/findOne?idDepartamento=${item.idDepartamento}&opcion=2';return false;">
 					Eliminar
 					
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