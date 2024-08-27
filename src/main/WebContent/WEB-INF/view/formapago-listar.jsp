<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Formas de Pago</title>
</head>
<body>
    <h1> Formas de Pago </h1>
    <button onclick="window.location.href='/rrrhh-web/formapago/findOne?opcion=1';return false;"> Agregar </button>
    <table border="2">
        <thead>
            <tr>
                <th>Id Forma Pago</th>
                <th>Forma Pago</th>
                <th>Descripción</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${formasPago}">
                <tr>
                    <td>${item.id_forma_pago}</td>
                    <td>${item.forma_pago}</td>
                    <td>${item.descripcion}</td>
                    <td>
                         <button onclick="window.location.href='/rrrhh-web/formapago/findOne?id_forma_pago=${item.id_forma_pago}&opcion=1';return false;">Actualizar</button>
						 <button onclick="window.location.href='/rrrhh-web/formapago/findOne?id_forma_pago=${item.id_forma_pago}&opcion=2';return false;">Borrar</button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
