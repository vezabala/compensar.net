<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="subirArchivo.aspx.cs" Inherits="Proyecto.subirArchivo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 109px;
        }
        .auto-style3 {
            width: 366px;
        }
        .auto-style4 {
            text-align: center;
            height: 40px;
        }
        .auto-style5 {
            color: #0066FF;
        }
        .auto-style6 {
            width: 127px;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            height: 756px;
            width: 709px;
            margin-left: 386px;
            text-align: left;
        }
        .auto-style9 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style10 {
            height: 453px;
            text-align: center;
            margin-top: 13px;
        }
        .auto-style11 {
            font-size: xx-large;
            color: #0066FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
        <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; margin-top: 17px" class="auto-style8">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" colspan="4">
                        <h1><strong><span class="auto-style5">Subir archivos</span></strong></h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Insertar Imagen:</td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="330px" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button2" runat="server" BorderStyle="Outset" Font-Bold="True" Text="Subir" Width="114px" BackColor="#00CC00" BorderColor="Lime" OnClick="Button2_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <strong>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style9"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text="Tamaño:"></asp:Label>
&nbsp;&nbsp; </strong>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style7"></asp:Label>
            <strong>
            <br />
            <asp:Label ID="Label8" runat="server" CssClass="auto-style7" Text="Nombre del archivo con el que se subio:"></asp:Label>
&nbsp; </strong>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style7"></asp:Label>
            <br />
            <strong>
            <asp:Label ID="Label10" runat="server" CssClass="auto-style7" Text="Tipo de archivo:"></asp:Label>
&nbsp; </strong>
            <asp:Label ID="Label11" runat="server" CssClass="auto-style7"></asp:Label>
            <div class="auto-style10">
                <br />
                <strong>
                <asp:Label ID="Label12" runat="server" CssClass="auto-style11"></asp:Label>
                </strong>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink>
                <br />
                <asp:Image ID="Image1" runat="server" Width="300px" />
            </div>
        </div>
    </div>
</asp:Content>
