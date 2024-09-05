<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recursos Humanos</title>
    <%-- <link rel="pageContextsheet" href="${pageContext.request.contextPath}/resources/css/style1.css"> --%>
    

	<style type="text/css">
	
			@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap');

				*{
				margin: 0;
				padding:0;
				box-sizing: border-box;
				text-decoration: none;
				list-style: none;
				}
				
				body{
				    font-family: 'Poppins',sans-serif;
				}
				.container{
				    max-width: 1200px;
				    margin:0 auto;
				}
				/* Fondo de pantalla  principal*/
				.header{
				    background-image: linear-gradient(
				         rgba(0,0,0,0.7),
				        rgba(0,0,0,0.7)),
				        url(${pageContext.request.contextPath}/resources/img/cofana.png);
				        background-position: center bottom;
				        background-repeat: no-repeat;
				        background-size: cover;
				        min-height: 70vh;
				        display: flex;
				        align-items: center;
				}
				
				.menu{
				    position: absolute;
				    top: 0;
				    left: 0;
				    right: 0;
				    display: flex;
				    align-items: center;
				    justify-content: space-between;
				}
				
				.logo{
				    color: #FFFDFC;
				    font-size: 25px;
				    font-weight: 800;
				}
				
				.menu .navbar ul li{
				    position: relative;
				    float: left;
				}
				
				.menu .navbar ul li a {
				    font-size: 18px;
				    padding: 20px;
				    color: #fffdfc;
				    display: block;
				    font-weight: 600;
				}
				
				.menu .navbar ul li a:hover {
				    color:#FFC300;
				}
				
				#menu{
				    display: none;
				}
				
				.menu-icono{
				    width: 25px;
				}
				
				.menu label{
				    cursor: pointer;
				    display: none;
				}
				
				.header-content{
				    text-align: center;
				}
				
				.header-content h1{
				    font-size: 75px;
				    line-height: 30px;
				    color:#48D1CC;
				    text-transform: uppercase;
				    margin-bottom: 35px;
				}
				
				.header-content p{
				    font-size: 16px;
				    color: #FFFACD;
				    padding: 0 250px;
				    margin-bottom: 25px;
				}
				
				.btn-1{
				    display: inline-block;
				    padding: 11px 35px;
				    background-color: #48D1CC;
				    color: black;
				    text-transform: uppercase;
				    border-radius: 50px;
				}
				
				.btn-1:hover{
				    background-color:blueviolet;
				}
				
				.coffee{
				    padding: 100px 0;
				    background-color: #e1e2e6;
				    position: relative;
				}
				.coffee-content{
				    text-align: center;
				}
				
				.coffee-content h2{
				    font-size: 55px;
				    line-height: 70px;
				    color: #323337;
				    text-transform: uppercase;
				    padding: 0 250px;
				    margin-bottom: 15px;
				}
				
				.txt-p{
				    font-size: 16px;
				    color:#414247;
				    padding: 0 250px;
				    margin-bottom: 35px;
				}
				
				.coffee-group{
				    display: flex;
				    justify-content: space-between;
				    margin-bottom: 50px;
				}
				
				.coffee-1{
				    padding: 0 25px;
				}
				.coffee-1 img{
				   width: 200px;
				}
				
				.coffee-img{
				    position: absolute;
				    top: 0;
				    right: 0;
				}
				
				.coffee-1 h3{
				    color: #323337;
				    font-size: 20px;
				    margin-bottom: 15px;
				}
				
				.services{
				    background-image: linear-gradient(
				        rgba(0,0,0, 0.7),
				        rgba(0,0,0, 0.7)),
				        url(${pageContext.request.contextPath}/resources/img/fondo1.jpg);
				        background-position: center center;
				        background-repeat: no-repeat;
				        background-size: cover;
				        background-attachment: fixed;
				        padding: 100px 0;
				}
				
				.services-content {
				    text-align: center;
				}
				
				.services-content h2{
				    font-size: 55px;
				    line-height: 70px;
				    color: #f9fafc;
				    text-transform: uppercase;
				    margin-bottom: 50px;
				}
				.services-content p{
				    font-size: 16px;
				    color: #c5c5c5;
				    margin-bottom: 50px;
				    padding: 0 100px;
				}
				
				.services-group{
				    display: flex;
				    justify-content: space-between;
				    margin-bottom: 50px;
				}
				
				.services-1{
				    padding: 0 100px;
				}
				
				.services-1 img{
				    width: 100px;
				    margin-bottom: 15px;
				}
				
				.services-1 h3{
				    color: #eaccb3;
				    font-size: 18px;
				}
				
				h2{
				    font-size: 55px;
				    line-height: 70px;
				    color: #323337;
				    text-transform: uppercase;
				    margin-bottom: 20px;
				}
				
				p{
				    font-size: 16px;
				    color: #414247;
				    margin: 25px 0 45px 0;
				}
				
				.blog{
				    padding: 100px 0;
				    text-align: center;
				}
				 .blog-content{
				    display: flex;
				    justify-content: space-between;
				 }
				
				 .blog-1{
				    padding: 15px 55px;
				 }
				
				 .blog-1 img{
				    width: 250px;
				    border-radius: 15px;
				    margin-bottom: 15px;
				 }
				
				 .blog-1 h3{
				    font-size: 25px;
				    color: #323337;
				 }
				
				 .footer {
				    padding: 100px 0;
				    background-color: #000000;
				 }
				
				 .footer-content{
				    display: flex;
				   justify-content: space-between;
				 }
				
				 .link h3{
				    font-size: 18px;
				    color: #f9fafc;
				
				 }
				 .link a{
				    font-size: 16px;
				    color: #c5c5c5;
				    display:block;
				    margin-bottom: 15px;
				 }
				
							
	
	</style>
    
</head>
<body>
    <header class="header">
        <div class="menu container">
            <a href="${pageContext.request.contextPath}/resources/pdf/Cofan.pdf" class="logo" >PUEBLO Y NACIONALIDAD COFÁN </a>
            <input type="checkbox" id="menu"/>
            <label for="menu">
             <img src="${pageContext.request.contextPath}/resources/img/menu.png" class="menu-icono" alt="">
            </label>
            <nav class="navbar">
                <ul>
                   <li><a href = "https://www.youtube.com/watch?v=ACjGaaV7B6c"> Tradiciónes</a> </a></li>
                   <li><a href ="https://www.facebook.com/ASSISCO.EC">Servicios</a></li>                    
                    <li><a href = "https://www.google.com/maps/@-0.3327623,-78.5595039,12z?entry=ttu&g_ep=EgoyMDI0MDkwMi4xIKXMDSoASAFQAw%3D%3D" >Ubicación</a></li>
                    <li><a href = "https://www.proturec.com/" >Contacto</a></li>
                    <li><a href = "${pageContext.request.contextPath}/" >Iniciar Sesion</a></li>
                </ul>
            </nav>
        </div>

        <div class="header-content container">
            <h1>Sabores de la Selva</h1>
                <p>
                    Estos sabores están profundamente conectados con la biodiversidad 
                    de la selva amazónica y suelen incluir alimentos frescos, naturales 
                    y únicos de esa región.<br>
                    COMO: <br>
                    1. Peces de río.<br>
                    2. Plantas. <br>
                    3. Frutas Exóticas y otros productos locales. 
                </p>
          <a href="https://youtu.be/U0J6gzN3hNc" class="btn-1">INFORMACIÓN</a>
        </div>
    </header>



    <section class="coffee">
        <img class="coffee-img" src="${pageContext.request.contextPath}/resources/img/bg2.png" alt="">
        <div class="coffee-content container">
            <h2>PLATOS TIPICOS DE LA COMUNIDAD COFÁN</h2>
           <p class="txt-p">
               1.-   CARNE DE DANTA (TAPIR): La danta es uno de los animales más grandes que cazan. La carne se cocina a la brasa, guisada, o incluso se ahuma para conservarla.<br>
               2.-   PECARÍ (Sajino): Este cerdo salvaje es común en la dieta Cofán. La carne se prepara en asados o guisos, a menudo acompañada de plátano o yuca.<br>
               3.-   PACA (Guanta): La carne de paca es muy apreciada por su sabor suave. Se cocina asada o en sopas, y se sirve con acompañamientos como yuca o chontaduro.<br>
               4.-   PESCADO AHUMADO: Pescados como el bagre y el bocachico se ahuman para su conservación y se consumen a lo largo de varios días. Es un método tradicional que permite que la carne dure más tiempo.<br>
               5.-   MAITO: Un plato típico que consiste en pescado o carne envueltos en hojas de bijao (una planta local) y cocidos al vapor o asados sobre el fuego. Es una preparación muy común en la Amazonía.<br>
              6.-  CHICHA DE YUCA: Aunque no es un plato de carne, es una bebida tradicional que suele acompañar las comidas. Se hace fermentando yuca, y es parte integral de la dieta Cofán.<br>
            </p>
            <div class="coffee-group">
                <div class="coffee-1">
                    <img src="${pageContext.request.contextPath}/resources/img/tapir.png" alt="">
                    <h3>TAPIR</h3>
                    <p> La carne de tapir asado es una delicia 
                        culinaria tradicional en algunas regiones de América Latina.
                    </p>
                </div>
                <div class="coffee-2">
                    <img src="${pageContext.request.contextPath}/resources/img/aumado.png" alt="">
                    <h3>PESCADO AHUMADO</h3>
                    <p> El pescado ahumado es una preparación culinaria 
                        en la que el pescado se cura y se cocina lentamente con humo.
                    </p>
                </div>

                <div class="coffee-3">
                    <img src="${pageContext.request.contextPath}/resources/img/maito.png" alt="">
                    <h3>MAITO</h3>
                    <p> El maito es un plato tradicional de la Amazonía ecuatoriana, 
                        elaborado principalmente con pescado envuelto en hojas de bijao
                    </p>
                </div>
            </div>
            <a href="https://forms.app/es" class="btn-1">Información</a>
        </div>

    </section>


    <main class="services">
        <div class="services-content container" >
            <h2>SERVICIOS DE TURISMO</h2>

            <div class="services-group">
                <div class="services-1">
                    <img src="${pageContext.request.contextPath}/resources/img/services.png"" alt="">
                    <h3>SERVICIO DE TRANSPORTE</h3>
                </div>
                <div class="services-1">
                    <img src="${pageContext.request.contextPath}/resources/img/services.png" alt="">
                    <h3>SERVICIO DE HOSPEDAJE</h3>
                </div>
                <div class="services-1">
                    <img src="${pageContext.request.contextPath}/resources/img/services.png" alt="">
                    <h3>SERVICIO DE GUIA TURISTICA</h3>
                </div>                           
            </div>

            <p> Para viajar, debes considerar estos servicios esenciales: <br>

               1.  Transporte: Boletos de avión, traslados y alquiler de autos.<br>
                2. Alojamiento: Reservar hoteles o alquileres vacacionales.<br>
               3.  Seguro de viaje: Cobertura médica, cancelaciones y equipaje.<br>
               4.  Documentación: Pasaporte, visas y permisos de conducción.<br>
              5.   Comunicación: Plan de datos internacionales o SIM local.<br>
               6.  Finanzas: Tarjetas internacionales y cambio de moneda.<br>
               7.  Asistencia turística: Guías, tours y apps de navegación.<br>
               8.  Salud: Vacunas, botiquín y farmacias cercanas.<br>
                Estos servicios garantizan un viaje seguro y bien organizado.
            </p>
            <a href="https://www.facebook.com/groups/1345234145526531" class="btn-1">Información</a>

        </div>
    </main>

    <section class="blog container">
        <h2>RECORDATORIO</h2>
        <p> Los Cofanes son un grupo indígena originario de la región amazónica, 
            principalmente en Colombia y Ecuador. Conocidos por su fuerte conexión 
            con la naturaleza, su economía se basa en la agricultura, caza y pesca. 
         Los Cofanes han luchado por preservar 
            su territorio y cultura frente a la amenaza de la explotación de recursos naturales 
            en sus tierras ancestrales.</p>
        <div class="blog-content">
            <div class="blog-1">
             <img src="${pageContext.request.contextPath}/resources/img/vesti.jfif" alt="">
             <h3>VESTUARIO</h3>
                 <p> La vestimenta tradicional de los Cofanes es sencilla y está adaptada a su entorno amazónico. 
                    Los hombres suelen usar túnicas largas hechas de fibras naturales, a menudo teñidas con tintes naturales.
                     Las mujeres visten faldas y blusas sencillas, también elaboradas con materiales de la selva. 
                     Tanto hombres como mujeres adornan su cuerpo con collares, pulseras y coronas hechas de semillas, 
                     plumas y otros elementos naturales. 
                 </p>
            </div>
            <div class="blog-1">
                <img src="${pageContext.request.contextPath}/resources/img/costumbre.jpg" alt="">
                <h3>TRADICIONES</h3>
                    <p>Las tradiciones de los Cofanes incluyen rituales ceremoniales, uso de plantas medicinales, 
                        caza y pesca tradicionales, artesanía con materiales naturales, preservación de su lengua y 
                        cuentos orales, y vestimenta hecha de fibras naturales.
                         Estas prácticas reflejan su profunda conexión con la naturaleza y su identidad cultural.
                    </p>
               </div>
               <div class="blog-1">
                    <img src="${pageContext.request.contextPath}/resources/img/cazando.jpg" alt="">
                 <h3>ALIMENTACIÓN</h3>
                    <p>Los Cofanes comen peces, aves, mamíferos pequeños, reptiles e insectos.
                     Para cazar, utilizan arcos y flechas, trampas, redes y garfios, además de métodos de caza en grupo.
                    </p>
               </div>
        </div>

        <a href="https://www.facebook.com/ASSISCO.EC" class="btn-1">Información</a>
    </section>

    <footer class="footer">
        <div class="footer-content container">

            <div class="link">
              <h3>Siguenos en:</h3>
              <ul>
                <li><a href="https://www.facebook.com/groups/1345234145526531">Facebook</a></li>
                <li><a href="https://forms.app/es">Instagram</a></li>
                <li><a href="https://forms.app/es">Youtube</a></li>
                <li><a href="https://forms.app/es">Gmail</a></li>
              </ul>
            </div>
            <div class="link">
                <h3>Sugerencias:</h3>
                <ul>
                  <li><a href="https://forms.app/es">Servicio</a></li>
                  <li><a href="https://forms.app/es">Atención al cliente</a></li>
                  <li><a href="https://forms.app/es">Guia de Turismo</a></li>
                  <li><a href="https://forms.app/es">Hospedaje</a></li>
                </ul>
              </div>
              <div class="link">
                <h3>Lorem</h3>
                <ul>
                  <li><a href="#">lorem</a></li>
                  <li><a href="#">lorem</a></li>
                  <li><a href="#">lorem</a></li>
                  <li><a href="#">lorem</a></li>
                </ul>
              </div>
              <div class="link">
                <h3>Lorem</h3>
                <ul>
                  <li><a href="#">lorem</a></li>
                  <li><a href="#">lorem</a></li>
                  <li><a href="#">lorem</a></li>
                  <li><a href="#">lorem</a></li>
                </ul>
              </div>

        </div>

    </footer>
    

    
</body>
</html>