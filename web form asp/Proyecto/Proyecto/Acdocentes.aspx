<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="Acdocentes.aspx.cs" Inherits="Proyecto.Acdocentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 186px;
    }
    .auto-style3 {
        width: 309px
    }
    .auto-style4 {
        width: 253px;
    }
    .auto-style5 {
        height: 20px;
        text-align: center;
        font-size: medium;
        color: #0066FF;
    }
    .auto-style6 {
        width: 186px;
        height: 20px;
    }
    .auto-style7 {
        width: 253px;
        height: 20px;
    }
    .auto-style8 {
        width: 309px;
        height: 20px;
    }
    .auto-style10 {
        text-align: center;
        color: #0066CC;
        font-size: medium;
    }
    .auto-style11 {
        width: 281px;
    }
    .auto-style12 {
        width: 275px;
    }
    .auto-style13 {
        color: #0033CC;
    }
    .auto-style14 {
        height: 20px;
    }
    .auto-style15 {
        height: 20px;
        width: 224px;
    }
    .auto-style16 {
        width: 224px;
    }
    .auto-style17 {
        height: 20px;
        width: 219px;
    }
    .auto-style18 {
        width: 219px;
    }
    .auto-style19 {
        text-align: center;
        height: 20px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
        <div style="height: 756px; width: 1481px; margin-left: 17px; margin-top: 17px">
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="doccodigo" DataSourceID="SqlDataSource1" Height="181px" Width="648px">
                <EditItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style10" colspan="4">Actualizacion de Docentes</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Codigo Usuario:</td>
                            <td class="auto-style12">
                                <asp:TextBox ID="usucodigoTextBox" runat="server" Text='<%# Bind("usucodigo") %>' />
                            </td>
                            <td class="auto-style12">Apellido 1:</td>
                            <td>
                                <asp:TextBox ID="docapellido1TextBox" runat="server" Text='<%# Bind("docapellido1") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Codigo Docente:</td>
                            <td class="auto-style12">
                                <asp:Label ID="doccodigoLabel1" runat="server" Text='<%# Eval("doccodigo") %>' />
                            </td>
                            <td class="auto-style12">Apellido 2:</td>
                            <td>
                                <asp:TextBox ID="docapellido2TextBox" runat="server" Text='<%# Bind("docapellido2") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Telefono:</td>
                            <td class="auto-style12">
                                <asp:TextBox ID="dotelefonoTextBox" runat="server" Text='<%# Bind("dotelefono") %>' />
                            </td>
                            <td class="auto-style12">Nombre 1:</td>
                            <td>
                                <asp:TextBox ID="docnombre1TextBox" runat="server" Text='<%# Bind("docnombre1") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Ingreso:</td>
                            <td class="auto-style12">
                                <asp:TextBox ID="docingresoTextBox" runat="server" Text='<%# Bind("docingreso") %>' />
                            </td>
                            <td class="auto-style12">Nombre 2:</td>
                            <td>
                                <asp:TextBox ID="docnombre2TextBox" runat="server" Text='<%# Bind("docnombre2") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" ForeColor="Black" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" ForeColor="Black" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style19" colspan="4"><strong><span class="auto-style13">Crear Docente</span></strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style15">Codigo Usuario:</td>
                            <td class="auto-style17">
                                <asp:TextBox ID="usucodigoTextBox" runat="server" Text='<%# Bind("usucodigo") %>' />
                            </td>
                            <td class="auto-style17">Apellido 1:</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="docapellido1TextBox" runat="server" Text='<%# Bind("docapellido1") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Codigo Docente:</td>
                            <td class="auto-style18">
                                <asp:TextBox ID="doccodigoTextBox" runat="server" Text='<%# Bind("doccodigo") %>' />
                            </td>
                            <td class="auto-style18">Apellido 2:</td>
                            <td>
                                <asp:TextBox ID="docapellido2TextBox" runat="server" Text='<%# Bind("docapellido2") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">Telefono:</td>
                            <td class="auto-style17">
                                <asp:TextBox ID="dotelefonoTextBox" runat="server" Text='<%# Bind("dotelefono") %>' />
                            </td>
                            <td class="auto-style17">Nombre 1:</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="docnombre1TextBox" runat="server" Text='<%# Bind("docnombre1") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Ingreso:</td>
                            <td class="auto-style18">
                                <asp:TextBox ID="docingresoTextBox" runat="server" Text='<%# Bind("docingreso") %>' />
                            </td>
                            <td class="auto-style18">Nombre 2:</td>
                            <td>
                                <asp:TextBox ID="docnombre2TextBox" runat="server" Text='<%# Bind("docnombre2") %>' />
                            </td>
                        </tr>
                    </table>
&nbsp;<br />&nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" Font-Bold="True" ForeColor="Black" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" ForeColor="Black" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style5" colspan="4"><strong>Actualizacion de Docentes</strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Codigo Usuario:</td>
                            <td class="auto-style1">
                                <asp:Label ID="usucodigoLabel" runat="server" Text='<%# Bind("usucodigo") %>' />
                            </td>
                            <td class="auto-style4">Apellido 1:</td>
                            <td class="auto-style3">
                                <asp:Label ID="docapellido1Label" runat="server" Text='<%# Bind("docapellido1") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">Codigo Docente: </td>
                            <td class="auto-style6">
                                <asp:Label ID="doccodigoLabel" runat="server" Text='<%# Eval("doccodigo") %>' />
                            </td>
                            <td class="auto-style7">Apellido 2:</td>
                            <td class="auto-style8">
                                <asp:Label ID="docapellido2Label" runat="server" Text='<%# Bind("docapellido2") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Telefono</td>
                            <td class="auto-style1">
                                <asp:Label ID="dotelefonoLabel" runat="server" Text='<%# Bind("dotelefono") %>' />
                            </td>
                            <td class="auto-style4">Apellido 1:</td>
                            <td class="auto-style3">
                                <asp:Label ID="docnombre1Label" runat="server" Text='<%# Bind("docnombre1") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">Ingreso</td>
                            <td class="auto-style1">
                                <asp:Label ID="docingresoLabel" runat="server" Text='<%# Bind("docingreso") %>' />
                            </td>
                            <td class="auto-style4">Nombre 2:</td>
                            <td class="auto-style3">
                                <asp:Label ID="docnombre2Label" runat="server" Text='<%# Bind("docnombre2") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" Font-Bold="True" ForeColor="Black" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" BackColor="Red" BorderColor="#FF3300" BorderStyle="Outset" Font-Bold="True" ForeColor="Black" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" BackColor="#00CC00" BorderColor="Lime" BorderStyle="Outset" Font-Bold="True" ForeColor="Black" />
                </ItemTemplate>
            </asp:FormView>
    
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" DeleteCommand="DELETE FROM [tbldocentes] WHERE [doccodigo] = @doccodigo" InsertCommand="INSERT INTO [tbldocentes] ([usucodigo], [doccodigo], [docapellido1], [docapellido2], [docnombre1], [docnombre2], [docingreso], [dotelefono]) VALUES (@usucodigo, @doccodigo, @docapellido1, @docapellido2, @docnombre1, @docnombre2, @docingreso, @dotelefono)" SelectCommand="SELECT * FROM [tbldocentes] ORDER BY [docapellido1], [docapellido2], [docnombre1]" UpdateCommand="UPDATE [tbldocentes] SET [usucodigo] = @usucodigo, [docapellido1] = @docapellido1, [docapellido2] = @docapellido2, [docnombre1] = @docnombre1, [docnombre2] = @docnombre2, [docingreso] = @docingreso, [dotelefono] = @dotelefono WHERE [doccodigo] = @doccodigo">
                <DeleteParameters>
                    <asp:Parameter Name="doccodigo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="usucodigo" Type="Int32" />
                    <asp:Parameter Name="doccodigo" Type="Int32" />
                    <asp:Parameter Name="docapellido1" Type="String" />
                    <asp:Parameter Name="docapellido2" Type="String" />
                    <asp:Parameter Name="docnombre1" Type="String" />
                    <asp:Parameter Name="docnombre2" Type="String" />
                    <asp:Parameter Name="docingreso" Type="String" />
                    <asp:Parameter Name="dotelefono" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="usucodigo" Type="Int32" />
                    <asp:Parameter Name="docapellido1" Type="String" />
                    <asp:Parameter Name="docapellido2" Type="String" />
                    <asp:Parameter Name="docnombre1" Type="String" />
                    <asp:Parameter Name="docnombre2" Type="String" />
                    <asp:Parameter Name="docingreso" Type="String" />
                    <asp:Parameter Name="dotelefono" Type="String" />
                    <asp:Parameter Name="doccodigo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    
        </div>
     </div>
</asp:Content>
