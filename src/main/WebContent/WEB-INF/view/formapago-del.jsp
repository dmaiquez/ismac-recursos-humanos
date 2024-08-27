<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1> Forma Pago </h1>
   <strong> ¿Deseas Eliminar el siguiente registro?</strong>
      <form action="del" method="get">
      

          <input type="hidden" id="id_forma_pago" name="id_forma_pago" value="${formapago.id_forma_pago}"/>
           <br/>
           <button type="submit">Guardar</button>
          <button onclick="window.location.href='/rrrhh-web/formapago/findAll';return false;">
          CANCELAR 
          </button>
      </form>
 
 
</body>
</html>