<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="AgregarCurso.aspx.cs" Inherits="Proyecto.AgregarCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 622px;
            width: 1262px;
            margin-left: 105px;
            margin-top: 67px;
        }
        .auto-style2 {
            height: 78px;
        }
        .auto-style3 {
            text-align: center;
            height: 43px;
            color: #0000FF;
        }
        .auto-style4 {
            height: 488px;
            width: 912px;
            font-size: x-large;
            margin-left: 208px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style7 {
            width: 276px;
            height: 79px;
        }
        .auto-style8 {
            height: 79px;
        }
        .auto-style9 {
            color: #990000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
         <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; " class="auto-style1">
             <div class="auto-style2">
                 <h1 class="auto-style3">Insertar curso</h1>
                 <div class="auto-style4">
                     <table class="auto-style5">
                         <tr>
                             <td class="auto-style7">
                     <strong>Nombre del curso:</strong></td>
                             <td class="auto-style8">
                     <asp:TextBox ID="TextBox1" runat="server"  type="text" name="text" class="form-control" Height="35px" Width="428px" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style7"><strong>Intensidad Horaria:</strong></td>
                             <td class="auto-style8">
                                 <asp:TextBox ID="TextBox2" runat="server"  type="number" name="number" class="form-control" Height="35px" Width="428px" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style7"><strong>Descripcion del curso:</strong></td>
                             <td class="auto-style8">
                                 <asp:TextBox ID="TextBox3" runat="server"  type="text" name="text" class="form-control" Height="35px" Width="428px" BorderColor="Black" BorderStyle="Solid"></asp:TextBox>
                             </td>
                         </tr>
                     </table>
                     <strong>
                     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton1_Click">Insertar</asp:LinkButton>
                     &nbsp;&nbsp;&nbsp;
                     <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#FF9900" BorderColor="#FFCC00" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" PostBackUrl="~/Accursos.aspx">Cancelar</asp:LinkButton>
                     <br />
                     <br />
                     <asp:Label ID="Label5" runat="server" CssClass="auto-style9"></asp:Label>
                     </strong>
                 </div>
             </div>
         </div>
    </div>
</asp:Content>
