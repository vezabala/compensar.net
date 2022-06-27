<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leasing.aspx.cs" Inherits="LaboratorioDiseñoWeb.leasing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>leasing</title>
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
            <div class="leasingles">
                <img src="img/Leasing.jpg">
            </div>
        </div>
        <div class="columncred">
          <h1>Qué es un leasing?</h1>
          <p class="credpar">En lo que se relaciona con los conceptos de economía, uno de los más conocidos es el leasing o arrendamiento financiero que se da a otra persona para acceder al contrato de alquiler de bienes que puede ser de muebles o inmuebles. Este tipo de contrato es conocido como leasing.</p>
          <p class="credpar">El leasing consiste en un contrato de arriendo de bienes muebles como vehículos o maquinaria, e inmobiliarios como viviendas u oficinas, en el que la entidad que ofrece el leasing hace la adquisición a nombre propio para arrendar el bien al cliente que lo solicita.</p>
          <p class="credpar">En Colombia se ofrecen diferentes modalidades de leasing como: financiero para los activos fijos generadores de renta, de importación, inmobiliario, para proveedores, habitacional, de vehículos, de vehículos ejecutivos, internacional (en moneda extranjera) y de infraestructura.</p>
          <p class="credpar">En el leasing, se puede financiar la totalidad del valor del bien que necesita, es decir, no se requiere aportar cuota inicial, pues un arrendamiento con opción de compra, que al final del término pactado en el contrato se puede decidir adquirirlo o no, o también ceder esa opción de compra.</p>
          <p class="credpar">En el leasing, quien recibe el activo no incrementa su patrimonio, lo que es favorable al momento de declarar renta.</p>
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
