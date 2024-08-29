<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri ="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contrataciones</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/> 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
</head>
<body>
<nav></nav>
	<section class="py-5 px-5">
	
			<div class="container" >
	<h1> AGREGAR CONTRATACIONES</h1>

 	<form action="add" method="post" class="needs-validation" novalidate>
 	<input type="hidden"  id="idContratacion" name= "idContratacion" value="${contratacion.idContratacion}" required/> 
 	
 	idCiudad
 	<div class=" form-group" >
		<label for="idCiudad" class="form-label">ID-Cíudad</label>
 	<input class="form-control" type="number"  id="idCiudad" name= "idCiudad" value="${contratacion.idCiudad}" required/> 
 	</div>
 	
 	<div class=" form-group" >
	<label for="idDepartamento" class="form-label">ID-Departamento</label>
 	<input class="form-control" type="number"  id="idDepartamento" name= "idDepartamento" value="${contratacion.idDepartamento}" required/> 
 	</div>
 	
<div class=" form-group" >
	<label for="vacanteFecha" class="form-label">Vacante-Fecha</label>
 	<input class="form-control" type="date"  id="vacanteFecha" name= "vacanteFecha" value="${fn:substring(contratacion.vacanteFecha,0,10)}" required/>
 	</div>
 	
 	<div class=" form-group" >
		<label for="vacantePuesto" class="form-label">Vacante-Puesto</label>
 	<input class="form-control" type="text"  id="vacantePuesto" name= "vacantePuesto" value="${contratacion.vacantePuesto}" required/> 
 	</div>
 	
 	<div class=" form-group" >
		<label for="vacanteDescripcion" class="form-label">Vacante-Descripción</label>
 	<input class="form-control" type="text"  id="vacanteDescripcion" name= "vacanteDescripcion" value="${contratacion.vacanteDescripcion}" required/> 
 	</div>
 	
 	<div class=" form-group" >
		<label for="vacanteModalidad" class="form-label">Vacante-Modalidad</label>
 	<input class="form-control"  type="text"  id="vacanteModalidad" name= "vacanteModalidad" value="${contratacion.vacanteModalidad}" required/> 
 	</div>
 
 	<div class=" form-group" >
		<label for="vacanteTiempo" class="form-label">Vacante-Tiempo</label>
 	<input class="form-control" type="text"  id="vacanteTiempo" name= "vacanteTiempo" value="${contratacion.vacanteTiempo}" required/> 
 	</div>
 	
 <div class=" form-group" >
		<label for="vacanteNivel" class="form-label">Vacante-Nivel</label>
 	<input class="form-control" type="text"  id="vacanteNivel" name= "vacanteNivel" value="${contratacion.vacanteNivel}" required/> 
 	</div>
 	
 	<div class=" form-group" >
		<label for="vacanteNumero" class="form-label">Vacante-Numero</label>
 	<input class="form-control" type="number"  id="vacanteNumero" name= "vacanteNumero" value="${contratacion.vacanteNumero}" required/> 
 	</div>
 	
 	<div class=" form-group" >
		<label for="vacanteSueldoEstimado" class="form-label">Vacante-Sueldo-Estimado</label>
 	<input class="form-control" type="number"  id="vacanteSueldoEstimado" name= "vacanteSueldoEstimado" value="${contratacion.vacanteSueldoEstimado}" required/> 
 	</div>
 	
 	<button class=" btn btn-primary" type="submit">Guardar</button>
 
 		<button class=" btn btn-primary" onclick="window.location.href ='/rhumanos-web/contrataciones/findAll';return false;">
 					Cancelar y Regresar
 					</button>
 				</form>
 			</div>
 	</section>
 	<footer></footer>
	
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
 				
 				<script>
	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(() => {
	  'use strict'
 
	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation')
 
	  // Loop over them and prevent submission
	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }
 
	      form.classList.add('was-validated')
	    }, false)
	  })
	})()

</script>
 	

</body>
</html>