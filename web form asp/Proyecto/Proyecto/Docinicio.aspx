<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoc.Master" AutoEventWireup="true" CodeBehind="Docinicio.aspx.cs" Inherits="Proyecto.Docinicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #0066FF;
        }
        .auto-style2 {
            width: 210px;
        }
        .auto-style3 {
            width: 194px;
        }
        .auto-style4 {
            width: 195px;
        }
        .auto-style5 {
            width: 210px;
            height: 20px;
        }
        .auto-style6 {
            width: 194px;
            height: 20px;
        }
        .auto-style7 {
            width: 195px;
            height: 20px;
        }
        .auto-style8 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main id="main" class="main">
         <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
            <div style="height: 756px; width: 1481px; margin-left: 17px; margin-top: 17px">
                 <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
                 <asp:FormView ID="FormView1" runat="server" DataKeyNames="doccodigo" DataSourceID="SqlDataSource1" Height="194px">
                     <EditItemTemplate>
                         usucodigo:
                         <asp:TextBox ID="usucodigoTextBox" runat="server" Text='<%# Bind("usucodigo") %>' />
                         <br />
                         doccodigo:
                         <asp:Label ID="doccodigoLabel1" runat="server" Text='<%# Eval("doccodigo") %>' />
                         <br />
                         docapellido1:
                         <asp:TextBox ID="docapellido1TextBox" runat="server" Text='<%# Bind("docapellido1") %>' />
                         <br />
                         docapellido2:
                         <asp:TextBox ID="docapellido2TextBox" runat="server" Text='<%# Bind("docapellido2") %>' />
                         <br />
                         docnombre1:
                         <asp:TextBox ID="docnombre1TextBox" runat="server" Text='<%# Bind("docnombre1") %>' />
                         <br />
                         docnombre2:
                         <asp:TextBox ID="docnombre2TextBox" runat="server" Text='<%# Bind("docnombre2") %>' />
                         <br />
                         docingreso:
                         <asp:TextBox ID="docingresoTextBox" runat="server" Text='<%# Bind("docingreso") %>' />
                         <br />
                         dotelefono:
                         <asp:TextBox ID="dotelefonoTextBox" runat="server" Text='<%# Bind("dotelefono") %>' />
                         <br />
                         <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                         &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         usucodigo:
                         <asp:TextBox ID="usucodigoTextBox" runat="server" Text='<%# Bind("usucodigo") %>' />
                         <br />
                         doccodigo:
                         <asp:TextBox ID="doccodigoTextBox" runat="server" Text='<%# Bind("doccodigo") %>' />
                         <br />
                         docapellido1:
                         <asp:TextBox ID="docapellido1TextBox" runat="server" Text='<%# Bind("docapellido1") %>' />
                         <br />
                         docapellido2:
                         <asp:TextBox ID="docapellido2TextBox" runat="server" Text='<%# Bind("docapellido2") %>' />
                         <br />
                         docnombre1:
                         <asp:TextBox ID="docnombre1TextBox" runat="server" Text='<%# Bind("docnombre1") %>' />
                         <br />
                         docnombre2:
                         <asp:TextBox ID="docnombre2TextBox" runat="server" Text='<%# Bind("docnombre2") %>' />
                         <br />
                         docingreso:
                         <asp:TextBox ID="docingresoTextBox" runat="server" Text='<%# Bind("docingreso") %>' />
                         <br />
                         dotelefono:
                         <asp:TextBox ID="dotelefonoTextBox" runat="server" Text='<%# Bind("dotelefono") %>' />
                         <br />
                         <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                         &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                     </InsertItemTemplate>
                     <ItemTemplate>
                         <table class="nav-justified">
                             <tr>
                                 <td class="text-center" colspan="4"><strong><span class="auto-style1">Datos del docente</span></strong></td>
                             </tr>
                             <tr>
                                 <td class="auto-style5">Codigo Usuario:</td>
                                 <td class="auto-style6">
                                     <asp:Label ID="usucodigoLabel" runat="server" Text='<%# Bind("usucodigo") %>' />
                                 </td>
                                 <td class="auto-style7">Apellido 1:</td>
                                 <td class="auto-style8">
                                     <asp:Label ID="docapellido1Label" runat="server" Text='<%# Bind("docapellido1") %>' />
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style2">Codigo Docente:</td>
                                 <td class="auto-style3">
                                     <asp:Label ID="doccodigoLabel" runat="server" Text='<%# Eval("doccodigo") %>' />
                                 </td>
                                 <td class="auto-style4">Apellido 2:</td>
                                 <td>
                                     <asp:Label ID="docapellido2Label" runat="server" Text='<%# Bind("docapellido2") %>' />
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style2">Telefono</td>
                                 <td class="auto-style3">
                                     <asp:Label ID="dotelefonoLabel" runat="server" Text='<%# Bind("dotelefono") %>' />
                                 </td>
                                 <td class="auto-style4">Nombre 1:</td>
                                 <td>
                                     <asp:Label ID="docnombre1Label" runat="server" Text='<%# Bind("docnombre1") %>' />
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style2">Ingreso:</td>
                                 <td class="auto-style3">
                                     <asp:Label ID="docingresoLabel" runat="server" Text='<%# Bind("docingreso") %>' />
                                 </td>
                                 <td class="auto-style4">Nombre 2:</td>
                                 <td>
                                     <asp:Label ID="docnombre2Label" runat="server" Text='<%# Bind("docnombre2") %>' />
                                 </td>
                             </tr>
                         </table>
                         <br />

                     </ItemTemplate>
             </asp:FormView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT * FROM [tbldocentes] WHERE ([docingreso] = @docingreso)">
                 <SelectParameters>
                     <asp:SessionParameter Name="docingreso" SessionField="clave" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
          </div>
       </div>
  </main><!-- End #main -->
</asp:Content>
