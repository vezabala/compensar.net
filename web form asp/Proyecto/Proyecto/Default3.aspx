<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="Proyecto.Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style2 {
            width: 132px;
        }
        .auto-style3 {
            width: 137px;
        }
        .auto-style4 {
            width: 136px;
        }
        .auto-style5 {
            width: 134px;
        }
        .auto-style6 {
            text-align: center;
            color: #0066FF;
            font-size: large;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="dircodigo" DataSourceID="SqlDataSource1" Height="215px" Width="782px">
                <EditItemTemplate>
                    usucodigo:
                    <asp:TextBox ID="usucodigoTextBox" runat="server" Text='<%# Bind("usucodigo") %>' />
                    <br />
                    dircodigo:
                    <asp:Label ID="dircodigoLabel1" runat="server" Text='<%# Eval("dircodigo") %>' />
                    <br />
                    dirapellido1:
                    <asp:TextBox ID="dirapellido1TextBox" runat="server" Text='<%# Bind("dirapellido1") %>' />
                    <br />
                    dirapellido2:
                    <asp:TextBox ID="dirapellido2TextBox" runat="server" Text='<%# Bind("dirapellido2") %>' />
                    <br />
                    dirnombre1:
                    <asp:TextBox ID="dirnombre1TextBox" runat="server" Text='<%# Bind("dirnombre1") %>' />
                    <br />
                    dirnombre2:
                    <asp:TextBox ID="dirnombre2TextBox" runat="server" Text='<%# Bind("dirnombre2") %>' />
                    <br />
                    diringreso:
                    <asp:TextBox ID="diringresoTextBox" runat="server" Text='<%# Bind("diringreso") %>' />
                    <br />
                    direlefono:
                    <asp:TextBox ID="direlefonoTextBox" runat="server" Text='<%# Bind("direlefono") %>' />
                    <br />
                    dirsalario:
                    <asp:TextBox ID="dirsalarioTextBox" runat="server" Text='<%# Bind("dirsalario") %>' />
                    <br />
                    cargo:
                    <asp:TextBox ID="cargoTextBox" runat="server" Text='<%# Bind("cargo") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    usucodigo:
                    <asp:TextBox ID="usucodigoTextBox" runat="server" Text='<%# Bind("usucodigo") %>' />
                    <br />
                    dircodigo:
                    <asp:TextBox ID="dircodigoTextBox" runat="server" Text='<%# Bind("dircodigo") %>' />
                    <br />
                    dirapellido1:
                    <asp:TextBox ID="dirapellido1TextBox" runat="server" Text='<%# Bind("dirapellido1") %>' />
                    <br />
                    dirapellido2:
                    <asp:TextBox ID="dirapellido2TextBox" runat="server" Text='<%# Bind("dirapellido2") %>' />
                    <br />
                    dirnombre1:
                    <asp:TextBox ID="dirnombre1TextBox" runat="server" Text='<%# Bind("dirnombre1") %>' />
                    <br />
                    dirnombre2:
                    <asp:TextBox ID="dirnombre2TextBox" runat="server" Text='<%# Bind("dirnombre2") %>' />
                    <br />
                    diringreso:
                    <asp:TextBox ID="diringresoTextBox" runat="server" Text='<%# Bind("diringreso") %>' />
                    <br />
                    direlefono:
                    <asp:TextBox ID="direlefonoTextBox" runat="server" Text='<%# Bind("direlefono") %>' />
                    <br />
                    dirsalario:
                    <asp:TextBox ID="dirsalarioTextBox" runat="server" Text='<%# Bind("dirsalario") %>' />
                    <br />
                    cargo:
                    <asp:TextBox ID="cargoTextBox" runat="server" Text='<%# Bind("cargo") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table cellpadding="2" class="auto-style1">
                        <tr>
                            <td class="auto-style6" colspan="6"><strong>Actualizacion de Directivos</strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">codigo US</td>
                            <td class="auto-style3">
                                <asp:Label ID="usucodigoLabel" runat="server" Text='<%# Bind("usucodigo") %>' />
                            </td>
                            <td class="auto-style4">Apellido1:</td>
                            <td class="auto-style4">
                                <asp:Label ID="dirapellido1Label" runat="server" Text='<%# Bind("dirapellido1") %>' />
                            </td>
                            <td class="auto-style5">Codigo Dir:</td>
                            <td class="auto-style5">
                                <asp:Label ID="dircodigoLabel" runat="server" Text='<%# Eval("dircodigo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">cargo</td>
                            <td class="auto-style3">
                                <asp:Label ID="cargoLabel" runat="server" Text='<%# Bind("cargo") %>' />
                            </td>
                            <td class="auto-style4">Apellido2:</td>
                            <td class="auto-style4">
                                <asp:Label ID="dirapellido2Label" runat="server" Text='<%# Bind("dirapellido2") %>' />
                            </td>
                            <td class="auto-style5">Ingreso</td>
                            <td class="auto-style5">
                                <asp:Label ID="diringresoLabel" runat="server" Text='<%# Bind("diringreso") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">telefono</td>
                            <td class="auto-style3">
                                <asp:Label ID="direlefonoLabel" runat="server" Text='<%# Bind("direlefono") %>' />
                            </td>
                            <td class="auto-style4">Nombre1;</td>
                            <td class="auto-style4">
                                <asp:Label ID="dirnombre1Label" runat="server" Text='<%# Bind("dirnombre1") %>' />
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">salario</td>
                            <td class="auto-style3">
                                <asp:Label ID="dirsalarioLabel" runat="server" Text='<%# Bind("dirsalario") %>' />
                            </td>
                            <td class="auto-style4">Nombre 2:</td>
                            <td class="auto-style4">
                                <asp:Label ID="dirnombre2Label" runat="server" Text='<%# Bind("dirnombre2") %>' />
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" DeleteCommand="DELETE FROM [tbldirectivo] WHERE [dircodigo] = @dircodigo" InsertCommand="INSERT INTO [tbldirectivo] ([usucodigo], [dircodigo], [dirapellido1], [dirapellido2], [dirnombre1], [dirnombre2], [diringreso], [direlefono], [dirsalario], [cargo]) VALUES (@usucodigo, @dircodigo, @dirapellido1, @dirapellido2, @dirnombre1, @dirnombre2, @diringreso, @direlefono, @dirsalario, @cargo)" SelectCommand="SELECT * FROM [tbldirectivo] ORDER BY [dirapellido1], [dirapellido2], [dirnombre1]" UpdateCommand="UPDATE [tbldirectivo] SET [usucodigo] = @usucodigo, [dirapellido1] = @dirapellido1, [dirapellido2] = @dirapellido2, [dirnombre1] = @dirnombre1, [dirnombre2] = @dirnombre2, [diringreso] = @diringreso, [direlefono] = @direlefono, [dirsalario] = @dirsalario, [cargo] = @cargo WHERE [dircodigo] = @dircodigo">
                <DeleteParameters>
                    <asp:Parameter Name="dircodigo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="usucodigo" Type="Int32" />
                    <asp:Parameter Name="dircodigo" Type="Int32" />
                    <asp:Parameter Name="dirapellido1" Type="String" />
                    <asp:Parameter Name="dirapellido2" Type="String" />
                    <asp:Parameter Name="dirnombre1" Type="String" />
                    <asp:Parameter Name="dirnombre2" Type="String" />
                    <asp:Parameter Name="diringreso" Type="String" />
                    <asp:Parameter Name="direlefono" Type="String" />
                    <asp:Parameter Name="dirsalario" Type="Decimal" />
                    <asp:Parameter Name="cargo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="usucodigo" Type="Int32" />
                    <asp:Parameter Name="dirapellido1" Type="String" />
                    <asp:Parameter Name="dirapellido2" Type="String" />
                    <asp:Parameter Name="dirnombre1" Type="String" />
                    <asp:Parameter Name="dirnombre2" Type="String" />
                    <asp:Parameter Name="diringreso" Type="String" />
                    <asp:Parameter Name="direlefono" Type="String" />
                    <asp:Parameter Name="dirsalario" Type="Decimal" />
                    <asp:Parameter Name="cargo" Type="String" />
                    <asp:Parameter Name="dircodigo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
