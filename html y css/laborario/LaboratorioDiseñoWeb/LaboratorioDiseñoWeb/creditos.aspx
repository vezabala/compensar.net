<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="creditos.aspx.cs" Inherits="LaboratorioDiseñoWeb.creditos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>creditos</title>
    <link href="styles/style.css" rel="stylesheet" type="text/css">
    <!--:::::::Portada-001:::::::-->
    <div class="wrp">
        <div class="portada"></div>
        <div class="contenido">
            <div class="info">
                <h1>BANCOOP</h1>
                <a href="#">Contactar</a>
            </div>
            <div class="logo">
                <img src="img/logo.png">
            </div>
        </div>
        <div class="curveado">
            <img src="img/img2.png">
        </div>
    </div>
<!--:::::::FIN-Portada-001:::::::-->
    <header>
        <section class="wrapper">
            <nav>
                <ul>
                    <li><a href="Default.aspx">Inicio</a></li>
                    <li><a href="creditos.aspx">Creditos</a></li>
                    <li><b href="#">|</b></li>
                    <li><a href="leasing.aspx">Leasing</a></li>
                    <li><b href="#">|</b></li>
                    <li><a href="ahorros.aspx">Ahorros</a></li>
                    <li><b href="#">|</b></li>
                    <li><a href="servicio.aspx">Servicio al cliente</a></li>
                </ul>
            </nav>
        </section>
</header>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="columns">
        <div class="columncred">
            <div class="creditocred">
                <img src="img/credito.png">
            </div>
        </div>
        <div class="columncred">
          <h1>Creditos hipotecarios</h1>
          <p class="credpar">La mayoria de los bancos ofrecen sistemas de credito que permiten adquirir vivienda ya sea con tasas y cuotas fijas o tasas fijas y cuotas variables en UVR, los cuales presentan ventajas y desventajas notorias que se deben tener en cuenta al momento de decidir por cual de los dos optar.</p>
          <p class="credpar">A continuacion se resumen los parametros y valores que permiten analizar cual opcion podria ser la mas conveniente para quien acceda a estos tipos de credito hipotecario:</p>
          <p class="credpar">En el credito en cuota fija, esta se determina al inicio con la tasa de interes del 13,5% efectiva anual, obteniendo una cuota fija en pesos de $827.998 durante los 180 meses de duracion del credito.</p>
          <p class="credpar">En el segundo caso se define en unidades de UVR la cuota mensual con una tasa de interés más baja, del 9% E.A. Luego con una inflación futura estimada del 3,27% anual se proyecta el que sería el crecimiento de la UVR con dicha inflación durante la vigencia del crédito, para así proyectar el valor estimado en pesos de cada cuota mensual, siendo la primera de $661.143 y la última, es decir la cuota 180 por $1.065.556.</p>
        </div>
    </div>
    <footer class="footer">
        <p class="f2">
            <span >&copy; Cont&#225;ctanos</span>
            <span >L&#237;nea gratuita 018000-00001</span>
            <span >Banco entidad financiera - Todos los derechos reservados.</span>
        </p>
    </footer>
        </div>
    </form>
</body>
</html>
