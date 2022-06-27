<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ahorros.aspx.cs" Inherits="LaboratorioDiseñoWeb.ahorros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ahorros</title>
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
                <img src="img/ahorro.png">
            </div>
        </div>
        <div class="columncred">
          <h1>Consejos para ahorrar</h1>
          <p class="credpar">Ahorrar trae beneficios como salir de apuros cuando un gasto imprevisto nos hace su presa, nos da la alegría de comprar un coche, una casa o simplemente ir de vacaciones. Sin embargo, guardar el dinero cuesta mucho.</p>
          <p class="credpar">Más allá de abrir una cuenta de ahorros, se necesitan acciones prácticas para lograrlo.</p>
          <p class="credpar">Ahorrar una cantidad fija al mes. Tal vez el principio de todo ahorro es el que más trabajo cuesta, pues debe reservarse de una cantidad fija al mes. No lo vea como una carga, sino como una inversión. Tenga en cuenta que una vez que decida qué cantidad es la que vas ahorrar mensualmente, a la larga le traerá beneficios.</p>
          <p class="credpar">Busque una cantidad acorde a su sueldo o ingreso, de tal forma que no se descapitalice. Para esto es aconsejable hacer un análisis de sus gatos y saber con cuánto dinero le queda. Trate de cortar los gastos innecesarios.</p>
        </div>
    </div>
    <footer class="footer">
        <p class="f2">
            <span >&copy; Cont&#225;ctanos</span>
            <span >L&#237;nea gratuita 018000-00001</span>
            <span >Banco entidad financiera - Todos los derechos reservados.</span>
        </p>
    </footer>
    </form>
</body>
</html>
