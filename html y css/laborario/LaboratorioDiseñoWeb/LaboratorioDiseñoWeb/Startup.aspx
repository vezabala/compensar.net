<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Startup.aspx.cs" Inherits="LaboratorioDiseñoWeb.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bancoop</title>
    <link href="styles/style.css" rel="stylesheet" type="text/css">
    <!--:::::::Portada-001:::::::-->
    <div class="wrp">
        <div class="portada"></div>
        <div class="contenido">
            <div class="info">
                <h1>BANCOOP</h1>
                <a href="#miModal">Contactar</a>
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
        <div class="column main-column">
          <article class="article">
            <article class="articlesub">
              INGRESA TU CUENTA
            </article>
            <div class="cuenta">
              <label class="lacuen">Cuenta: </label>
              <input class="incuen" type="text" placeholder="N&uacute;mero de cuenta">
            </div>
            <div class="tipo">
              <label class="latipo">Tipo: </label>
              <input class="intipo" type="text">
            </div>
            <div class="clave">
              <label class="laclave">Clave: </label>
              <input class="inclave" type="password" placeholder="Ingrese Nombre">
            </div>
            <div class="ingresar">
              <a href="#">Ingresar</a>
            </div>
          </article>
          <article class="article2">
            <article class="articlesub3">
              <b class="principales">TRANSACCIONES</b>
            </article>
            <article class="articlesub2">
              <a href="#">Banca personal</a>
            </article>
            <article class="articlesub2">
              <a href="#">Banca empresarial</a>
            </article>
            <article class="articlesub2">
              <a href="#">Banca seguros</a>
            </article>
            <article class="articlesub2">
              <a href="#">Pago de facturas</a>
            </article>
            <article class="articlesub3">
              <b class="principales">TARJETAS DE CR&Eacute;DITO</b>
            </article>
            <article class="articlesub2">
              <a href="#">Credi Visa</a>
            </article>
            <article class="articlesub2">
              <a href="#">Credi MasterCard</a>
            </article>
          </article>
        </div>
        <div class="column">
          <article class="article1">
            <article class="articlesub">
              SOLICITA NUESTROS PRODUCTOS
            </article>
            <div class="tarjeta">
              <img src="img/tarjeta.png">
            </div>
            <div class="parrafotarjeta">
              <p>
                Conoce todos los productos que el tiene disponibles para ti. Solicitalo de una forma facil y r&#225;pida. Solo debes escoger el producto e interactuar datos de contacto, En pocos dias una secretaria te contactara.
              </p>
            </div>
          </article>
          <article class="article1">
            <article class="articlesub">
              CR&#201;DITO VEH&#205;CULOS
            </article>
            <div class="tarjeta">
              <img src="img/vehiculo.png">
            </div>
            <div class="parrafovehiculo">
              <p>
                Solicita tu Credito a Learning. para financiar la compra de vehiculos nuevos o usados particulares o comerciales, adquiridos directamente o a traves de un concesionario.
              </p>
            </div>
          </article>
        </div>
        <div class="column">
            <article class="article1">
              <article class="articlesub">
                AHORRO ESTUDIANTIL
              </article>
              <div class="tarjeta">
                <img src="img/estudiantil.png">
              </div>
              <div class="parrafoestudiantil">
                <p>
                  Si eres estudiante y te encuentras entre las edades de 18 a 25 a&#241;os? Esta es la oportunidad de obtener la tarjeta de cr&#233;dito MasterCard Estudiantil.
                </p>
              </div>
            </article>
            <article class="article1">
              <article class="articlesub">
                CR&#201;DITO HIPOTECARIO
              </article>
              <div class="tarjeta">
                <img src="img/hipotecario.png">
              </div>
              <div class="parrafohipotecario">
                <p>
                  Un inmueble propio se ha convertido en el mas anhelado sue&#241;o. Por eso es necessaio elegir el inmueble que cabe acorde a las expectativas, al igual que el credito que mejor se adopte a tus posibilidades.
                </p>
              </div>
            </article>
          </div>
      </div>
      <footer class="footer">
        <p class="f2">
            <span >&copy; Cont&#225;ctanos</span>
            <span >L&#237;nea gratuita 018000-00001</span>
            <span >Banco entidad financiera - Todos los derechos reservados.</span>
        </p>
    </footer>
    <div id="miModal" class="modal">
      <div class="modal-contenido">
        <a href="#">X</a>
        <h2>Nuestra l&#237;nea</h2>
        <p>L&#237;nea gratuita 018000-00001</p>
      </div>  
    </div>
    </form>
</body>
</html>
