<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEst.Master" AutoEventWireup="true" CodeBehind="EstInicio.aspx.cs" Inherits="Proyecto.EstInicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 1479px;
            height: 734px;
            margin-left: 21px;
            margin-top: 31px;
        }
        .auto-style4 {
            text-align: center;
            color: #0000FF;
            font-size: x-large;
        }
        .auto-style9 {
            width: 182px;
        }
        .auto-style10 {
            width: 183px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper">
        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12 ">
                <h1 class="page-header">
                <asp:Label ID="Label1" runat="server" Text="Estudiante"></asp:Label>
                </h1>
                <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
                    <div class="auto-style3">

                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="estcodigo" DataSourceID="SqlDataSource1">
                            <EditItemTemplate>
                                usucodigo:
                                <asp:TextBox ID="usucodigoTextBox" runat="server" Text='<%# Bind("usucodigo") %>' />
                                <br />
                                estcodigo:
                                <asp:Label ID="estcodigoLabel1" runat="server" Text='<%# Eval("estcodigo") %>' />
                                <br />
                                estapellido1:
                                <asp:TextBox ID="estapellido1TextBox" runat="server" Text='<%# Bind("estapellido1") %>' />
                                <br />
                                estapellido2:
                                <asp:TextBox ID="estapellido2TextBox" runat="server" Text='<%# Bind("estapellido2") %>' />
                                <br />
                                estnombre1:
                                <asp:TextBox ID="estnombre1TextBox" runat="server" Text='<%# Bind("estnombre1") %>' />
                                <br />
                                estnombre2:
                                <asp:TextBox ID="estnombre2TextBox" runat="server" Text='<%# Bind("estnombre2") %>' />
                                <br />
                                estingreso:
                                <asp:TextBox ID="estingresoTextBox" runat="server" Text='<%# Bind("estingreso") %>' />
                                <br />
                                estelefono:
                                <asp:TextBox ID="estelefonoTextBox" runat="server" Text='<%# Bind("estelefono") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                usucodigo:
                                <asp:TextBox ID="usucodigoTextBox" runat="server" Text='<%# Bind("usucodigo") %>' />
                                <br />
                                estcodigo:
                                <asp:TextBox ID="estcodigoTextBox" runat="server" Text='<%# Bind("estcodigo") %>' />
                                <br />
                                estapellido1:
                                <asp:TextBox ID="estapellido1TextBox" runat="server" Text='<%# Bind("estapellido1") %>' />
                                <br />
                                estapellido2:
                                <asp:TextBox ID="estapellido2TextBox" runat="server" Text='<%# Bind("estapellido2") %>' />
                                <br />
                                estnombre1:
                                <asp:TextBox ID="estnombre1TextBox" runat="server" Text='<%# Bind("estnombre1") %>' />
                                <br />
                                estnombre2:
                                <asp:TextBox ID="estnombre2TextBox" runat="server" Text='<%# Bind("estnombre2") %>' />
                                <br />
                                estingreso:
                                <asp:TextBox ID="estingresoTextBox" runat="server" Text='<%# Bind("estingreso") %>' />
                                <br />
                                estelefono:
                                <asp:TextBox ID="estelefonoTextBox" runat="server" Text='<%# Bind("estelefono") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <table class="nav-justified">
                                    <tr>
                                        <td class="auto-style4" colspan="8"><strong>Datos del Estudiante</strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">Codigo de usuario:</td>
                                        <td class="auto-style10">
                                            <asp:Label ID="usucodigoLabel" runat="server" Text='<%# Bind("usucodigo") %>' />
                                        </td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td class="auto-style10">Apellido 1:</td>
                                        <td class="auto-style10">
                                            <asp:Label ID="estapellido1Label" runat="server" Text='<%# Bind("estapellido1") %>' />
                                        </td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">Codigo del estudiante:</td>
                                        <td class="auto-style10">
                                            <asp:Label ID="estcodigoLabel" runat="server" Text='<%# Eval("estcodigo") %>' />
                                        </td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td class="auto-style10">Apellido 2:</td>
                                        <td class="auto-style10">
                                            <asp:Label ID="estapellido2Label" runat="server" Text='<%# Bind("estapellido2") %>' />
                                        </td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">Ingreso:</td>
                                        <td class="auto-style10">
                                            <asp:Label ID="estingresoLabel" runat="server" Text='<%# Bind("estingreso") %>' />
                                        </td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td class="auto-style10">Nombre 1:</td>
                                        <td class="auto-style10">
                                            <asp:Label ID="estnombre1Label" runat="server" Text='<%# Bind("estnombre1") %>' />
                                        </td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">Telefono:</td>
                                        <td class="auto-style10">
                                            <asp:Label ID="estelefonoLabel" runat="server" Text='<%# Bind("estelefono") %>' />
                                        </td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td class="auto-style10">Nombre 2:</td>
                                        <td class="auto-style10">
                                            <asp:Label ID="estnombre2Label" runat="server" Text='<%# Bind("estnombre2") %>' />
                                        </td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [usucodigo], [estcodigo], [estapellido1], [estapellido2], [estnombre1], [estnombre2], [estingreso], [estelefono] FROM [tblestudiantes] WHERE ([estingreso] = @estingreso) ORDER BY [estcodigo], [estapellido1], [estnombre1]">
                            <SelectParameters>
                                <asp:SessionParameter Name="estingreso" SessionField="clave" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </div>
                </div>
            </div>
            <!--End Page Header -->

        </div>

    </div>
        <!-- end page-wrapper -->
    <!-- end wrapper -->
</asp:Content>
