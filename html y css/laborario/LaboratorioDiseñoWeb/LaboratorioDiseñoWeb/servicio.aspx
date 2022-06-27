<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="servicio.aspx.cs" Inherits="LaboratorioDiseñoWeb.servicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Servicio al cliente</title>
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
        <div class="columns">
        <div class="columncred">
            <div class="ahorro">
                <img src="img/servicio.jpg">
            </div>
        </div>
        <div class="columncred">
          <h1>¿Necesita Ayuda?</h1>
          <p class="credpar">Bienvenido a nuestra página de Servicio BanCoop, disponible para que usted encuentre información, realice sus comentarios y para que Hablemos de servicio al cliente.</p>
          <p class="credpar">Nuestros clientes son nuestra razón de SER; por eso estamos comprometidos con la prestación de un buen servicio con amabilidad, entusiasmo y eficiencia; con todo nuestro SER.</p>
          <p class="credpar">Somos una entidad orientada a sus clientes, destacada por su calidad humana, sus productos y sus servicios.</p>
        </div>
    </div>
    <footer class="footer">
        <p class="f2">
            <span >&copy; Cont&#225;ctanos</span>
            <span >L&#237;nea gratuita 018000-00001</span>
            <span >Banco entidad financiera - Todos los derechos reservados.</span>
        </p>
    </footer>
</body>
    </form>
</body>
</html>
