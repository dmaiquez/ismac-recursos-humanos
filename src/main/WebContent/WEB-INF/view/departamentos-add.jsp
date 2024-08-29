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
	<section class="py-5 px-5">
	
			<div class="container" >
       <h1>Departamentos</h1>
		<form action="add" method="post" class="needs-validation" novalidate>
 	<input type="hidden"  id="idDepartamento" name= "idDepartamento" value="${departamento.idDepartamento}"/> 
 		
 		<div class=" form-group" >
		<label for="departamento" class="form-label">Departamentos</label>
 	<input  class="form-control" type="text"  id="departamento" name= "departamento" value="${departamento.departamento}" required/> 
 	</div>
 	
 <div class=" form-group" >
		<label for="descripcion" class="form-label">Descripción</label>
 	<input  class="form-control" type="text"  id="descripcion" name= "descripcion" value="${departamento.descripcion}" required/> 
 	</div>
 	
 	<button   class=" btn btn-primary" type="submit">Guardar</button>
 
 		<button  class=" btn btn-primary"  onclick="window.location.href ='/rhumanos-web/departamentos/findAll';return false;">
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