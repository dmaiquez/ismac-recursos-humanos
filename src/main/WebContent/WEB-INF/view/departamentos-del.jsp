<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>   -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminar Contrataciones</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>  
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"/> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
    body {
        background-image: url('${pageContext.request.contextPath}/resources/img/depart.jpg'); /* Cambia la ruta de la imagen según tu directorio */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        margin: 0;
        padding: 0;
        height: 100vh; /* Asegura que el fondo cubra toda la altura de la ventana */
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Times New Roman', Times, serif; /* Cambia el tipo de letra global */
    }

    .container {
        text-align: center;
        background: rgba(255, 255, 255, 0.5); /* Fondo blanco con opacidad para los textos y botones */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        font-family: 'Times New Roman', Times, serif; /* Cambia el tipo de letra global */
        max-width: 500px; /* Limita el ancho del contenedor */
        width: 100%; /* Asegura que el contenedor use todo el ancho disponible hasta el máximo */
    }

    h1 {
        color: #333;
        margin-bottom: 20px;
    }

    button {
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 4px;
        padding: 10px 20px;
        margin: 10px;
        cursor: pointer;
        font-family: 'Times New Roman', Times, serif; /* Cambia el tipo de letra global */
    }

    button:hover {
        background-color: #0056b3;
    }

    .fa-solid {
        margin-right: 8px; /* Añade espacio entre el ícono y el texto */
    }
</style>
</head>
<body>
<nav></nav>
<section class="py-5 px-5">
    <div class="container">
        <i class="fa-solid fa-user-minus fa-2x"></i> <!-- Ajusta el tamaño del ícono si es necesario -->
        <h1>Sección de Departamentos</h1>
        <form action="del" method="get">
            <input type="hidden" id="idDepartamento" name="idDepartamento" value="${departamento.idDepartamento}"/> 
            <strong>¿Desea Eliminar el "DEPARTAMENTO"?</strong>
            <br>
            <button type="submit"><i class="fa-solid fa-check-to-slot"></i>Aceptar</button>
        </form>
        <button class="btn btn-danger"  onclick="window.location.href ='/ismac-recursos-humanos/departamentos/findAll';return false;">
            <i class="fa-solid fa-rectangle-xmark"></i> Cancelar
        </button>
    </div>
</section>
<footer></footer>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

</body>
</html>
