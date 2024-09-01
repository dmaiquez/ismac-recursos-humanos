<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Departamentos</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>  
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"/> 
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap"/>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
    body {
        background-image: url('${pageContext.request.contextPath}/resources/img/departa.jpg'); /* Cambia la ruta de la imagen según tu directorio */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        margin: 0;
        padding: 0;
        height: 100vh; /* Asegura que el fondo cubra toda la altura de la ventana */
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Roboto', sans-serif; /* Cambia el tipo de letra global */
    }

    .container {
        text-align: center;
        background: rgba(255, 255, 255, 0.8); /* Fondo blanco con opacidad para los textos y botones */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        font-family: 'Roboto', sans-serif; /* Cambia el tipo de letra global */
        max-width: 600px; /* Limita el ancho del contenedor */
        width: 100%; /* Asegura que el contenedor use todo el ancho disponible hasta el máximo */
    }

    h1 {
        color: #333;
        margin-bottom: 20px;
        font-family: 'Open Sans', sans-serif; /* Cambia el tipo de letra para los encabezados */
    }

    .form-control {
        background: rgba(255, 255, 255, 0.6); /* Fondo blanco con opacidad para los inputs */
        border: 1px solid #ced4da;
        border-radius: 4px;
    }

    .btn-primary {
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 4px;
        padding: 10px 20px;
        margin: 10px;
        cursor: pointer;
        font-family: 'Roboto', sans-serif; /* Cambia el tipo de letra global */
    }

    .btn-primary:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<nav></nav>
<section class="py-5 px-5">
    <div class="container">
      <i class="fa-solid fa-user-minus"></i>
        <h1>Departamentos</h1>
   
        <form action="add" method="post" class="needs-validation" novalidate>
            <input type="hidden" id="idDepartamento" name="idDepartamento" value="${departamento.idDepartamento}"/> 
            
            <div class="form-group">
                <label for="departamento" class="form-label">Departamento</label>
                <input class="form-control" type="text" id="departamento" name="departamento" value="${departamento.departamento}" required/> 
            </div>
            
            <div class="form-group">
                <label for="descripcion" class="form-label">Descripción</label>
                <input class="form-control" type="text" id="descripcion" name="descripcion" value="${departamento.descripcion}" required/> 
            </div>
            
            <button class="btn btn-primary" type="submit"><i class="fa-solid fa-file-contract" ></i>  Aceptar</button> 
            <button class="btn btn-primary" onclick="window.location.href ='/ismac-recursos-humanos/departamentos/findAll';return false;">
               <i class="fa-solid fa-ban" > </i> Cancelar
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
