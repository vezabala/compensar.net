﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="Acdocentes.aspx.cs" Inherits="Proyecto.Acdocentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
            height: 23px;
        }
    .auto-style13 {
        color: #0033CC;
    }
    .auto-style17 {
        height: 20px;
        width: 228px;
    }
    .auto-style19 {
        text-align: center;
        height: 20px;
    }
        .auto-style23 {
            width: 279px;
            height: 20px;
        }
        .auto-style24 {
            width: 228px;
        }
        .auto-style25 {
            width: 279px;
        }
        .auto-style27 {
            width: 376px;
            height: 20px;
        }
        .auto-style28 {
            width: 376px;
        }
        .auto-style29 {
            width: 173px;
        }
        .auto-style31 {
            width: 181px;
        }
        .auto-style32 {
            width: 136px;
        }
        .auto-style46 {
            height: 20px;
            width: 181px;
        }
        .auto-style47 {
            height: 20px;
            width: 163px;
        }
        .auto-style48 {
            width: 163px;
        }
        .auto-style49 {
            height: 20px;
            width: 141px;
        }
        .auto-style50 {
            width: 141px;
        }
        .auto-style51 {
            height: 20px;
            width: 216px;
        }
        .auto-style52 {
            width: 216px;
        }
        .auto-style53 {
            height: 20px;
            width: 101px;
        }
        .auto-style54 {
            width: 101px;
        }
        .auto-style56 {
            width: 197px;
        }
        .auto-style57 {
            width: 81px;
        }
        .auto-style58 {
            width: 110px;
        }
        .auto-style59 {
            width: 198px;
        }
        .auto-style60 {
            height: 71px;
            width: 1476px;
        }
        .auto-style61 {
            width: 100%;
        }
        .auto-style63 {
            width: 211px;
        }
        .auto-style64 {
            width: 182px;
        }
        .auto-style65 {
            width: 298px;
            height: 20px;
        }
        .auto-style66 {
            width: 298px;
        }
        .auto-style67 {
            width: 141px;
            height: 26px;
        }
        .auto-style68 {
            width: 181px;
            height: 26px;
        }
        .auto-style69 {
            width: 163px;
            height: 26px;
        }
        .auto-style70 {
            width: 216px;
            height: 26px;
        }
        .auto-style71 {
            width: 101px;
            height: 26px;
        }
        .auto-style72 {
            width: 298px;
            height: 26px;
        }
        .auto-style73 {
            height: 74px;
            text-align: left;
            width: 1469px;
            margin-top: 27px;
        }
        .auto-style74 {
            background-color: #FF9900;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style75 {
            margin-left: 1437px;
        }
        .auto-style76 {
            height: 74px;
            text-align: left;
            width: 1469px;
            margin-top: 27px;
            color: #FF0000;
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
        <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style60">
            <table class="auto-style61">
                <tr>
                    <td class="auto-style64">&nbsp;</td>
                    <td class="auto-style63">&nbsp;</td>
                    <td class="auto-style58">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style64">Buscar Docente por Codigo:</td>
                    <td class="auto-style63">
                        <asp:TextBox ID="TextBox4" runat="server" Width="174px"></asp:TextBox>
                    </td>
                    <td class="auto-style58">
                        <asp:Button ID="Button2" runat="server" BackColor="#00CC00" BorderColor="Lime" BorderStyle="Outset" Font-Bold="True" OnClick="Button2_Click" Text="Buscar" Width="91px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style64">&nbsp;</td>
                    <td class="auto-style63">&nbsp;</td>
                    <td class="auto-style58">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div style="height: 756px; width: 1481px; margin-left: 17px; margin-top: 17px">
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="doccodigo" DataSourceID="SqlDataSource1" Height="181px" Width="960px">
                <EditItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style10" colspan="6">Actualizacion de Docentes</td>
                        </tr>
                        <tr>
                            <td class="auto-style32">Codigo Usuario:</td>
                            <td class="auto-style59">
                                <asp:TextBox ID="usucodigoTextBox" runat="server" Text='<%# Bind("usucodigo") %>' />
                            </td>
                            <td class="auto-style58">Apellido 1:</td>
                            <td class="auto-style56">
                                <asp:TextBox ID="docapellido1TextBox" runat="server" Text='<%# Bind("docapellido1") %>' />
                            </td>
                            <td class="auto-style57">Imagen:</td>
                            <td class="auto-style29">
                                <asp:TextBox ID="docimagenTextBox" runat="server" Text='<%# Bind("imagen") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style32">Codigo Docente:</td>
                            <td class="auto-style59">
                                <asp:Label ID="doccodigoLabel1" runat="server" Text='<%# Eval("doccodigo") %>' />
                            </td>
                            <td class="auto-style58">Apellido 2:</td>
                            <td class="auto-style56">
                                <asp:TextBox ID="docapellido2TextBox" runat="server" Text='<%# Bind("docapellido2") %>' />
                            </td>
                            <td class="auto-style57">Archivo:</td>
                            <td class="auto-style29">
                                <asp:TextBox ID="docarchivoTextBox" runat="server" Text='<%# Bind("archivo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style32">Telefono:</td>
                            <td class="auto-style59">
                                <asp:TextBox ID="dotelefonoTextBox" runat="server" Text='<%# Bind("dotelefono") %>' />
                            </td>
                            <td class="auto-style58">Nombre 1:</td>
                            <td class="auto-style56">
                                <asp:TextBox ID="docnombre1TextBox" runat="server" Text='<%# Bind("docnombre1") %>' />
                            </td>
                            <td class="auto-style57">&nbsp;</td>
                            <td class="auto-style29">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style32">Ingreso:</td>
                            <td class="auto-style59">
                                <asp:TextBox ID="docingresoTextBox" runat="server" Text='<%# Bind("docingreso") %>' />
                            </td>
                            <td class="auto-style58">Nombre 2:</td>
                            <td class="auto-style56">
                                <asp:TextBox ID="docnombre2TextBox" runat="server" Text='<%# Bind("docnombre2") %>' />
                            </td>
                            <td class="auto-style57">&nbsp;</td>
                            <td class="auto-style29">&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" ForeColor="Black" Font-Bold="True" Font-Overline="False" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" ForeColor="Black" Font-Bold="True" Font-Italic="False" Font-Overline="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style19" colspan="6"><strong><span class="auto-style13">Crear Docente</span></strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style49">Codigo Usuario:</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="usucodigoTextBox" runat="server" Text='<%# Bind("usucodigo") %>' />
                            </td>
                            <td class="auto-style47">Apellido 1:</td>
                            <td class="auto-style51">
                                <asp:TextBox ID="docapellido1TextBox" runat="server" Text='<%# Bind("docapellido1") %>' />
                            </td>
                            <td class="auto-style53">Imagen:</td>
                            <td class="auto-style65">
                                <asp:FileUpload ID="docimagenFileUpload1" runat="server" Width="241px" Enabled='<%# Bind("imagen") %>' Height="35px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style67">Codigo Docente:</td>
                            <td class="auto-style68">
                                <asp:TextBox ID="doccodigoTextBox" runat="server" Text='<%# Bind("doccodigo") %>' />
                            </td>
                            <td class="auto-style69">Apellido 2:</td>
                            <td class="auto-style70">
                                <asp:TextBox ID="docapellido2TextBox" runat="server" Text='<%# Bind("docapellido2") %>' />
                            </td>
                            <td class="auto-style71">Archivo:</td>
                            <td class="auto-style72">
                                <asp:FileUpload ID="docarchivoFileUpload1" runat="server" Height="26px" Width="242px" Enabled='<%# Bind("archivo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style49">Telefono:</td>
                            <td class="auto-style46">
                                <asp:TextBox ID="dotelefonoTextBox" runat="server" Text='<%# Bind("dotelefono") %>' />
                            </td>
                            <td class="auto-style47">Nombre 1:</td>
                            <td class="auto-style51">
                                <asp:TextBox ID="docnombre1TextBox" runat="server" Text='<%# Bind("docnombre1") %>' />
                            </td>
                            <td class="auto-style53">&nbsp;</td>
                            <td class="auto-style65">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style50">Ingreso:</td>
                            <td class="auto-style31">
                                <asp:TextBox ID="docingresoTextBox" runat="server" Text='<%# Bind("docingreso") %>' />
                            </td>
                            <td class="auto-style48">Nombre 2:</td>
                            <td class="auto-style52">
                                <asp:TextBox ID="docnombre2TextBox" runat="server" Text='<%# Bind("docnombre2") %>' />
                            </td>
                            <td class="auto-style54">&nbsp;</td>
                            <td class="auto-style66">
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" Width="105px" />
                            </td>
                        </tr>
                    </table>
&nbsp;<br />&nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" Font-Bold="True" ForeColor="Black" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" ForeColor="Black" />
                    <strong>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style76"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style76"></asp:Label>
                    </strong>
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style5" colspan="6"><strong>Actualizacion de Docentes</strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style28">Codigo Usuario:</td>
                            <td class="auto-style24">
                                <asp:Label ID="usucodigoLabel" runat="server" Text='<%# Bind("usucodigo") %>' />
                            </td>
                            <td class="auto-style4">Apellido 1:</td>
                            <td class="auto-style3">
                                <asp:Label ID="docapellido1Label" runat="server" Text='<%# Bind("docapellido1") %>' />
                            </td>
                            <td class="auto-style25">Imagen:</td>
                            <td class="auto-style3">&nbsp;
                                <asp:Label ID="docimagenLabel" runat="server" Text='<%# Eval("imagen") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style27">Codigo Docente: </td>
                            <td class="auto-style17">
                                <asp:Label ID="doccodigoLabel" runat="server" Text='<%# Eval("doccodigo") %>' />
                            </td>
                            <td class="auto-style7">Apellido 2:</td>
                            <td class="auto-style8">
                                <asp:Label ID="docapellido2Label" runat="server" Text='<%# Bind("docapellido2") %>' />
                            </td>
                            <td class="auto-style23">Archivo:</td>
                            <td class="auto-style8">&nbsp;
                                <asp:Label ID="docarchivoLabel" runat="server" Text='<%# Bind("archivo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">Telefono:</td>
                            <td class="auto-style24">
                                <asp:Label ID="dotelefonoLabel" runat="server" Text='<%# Bind("dotelefono") %>' />
                            </td>
                            <td class="auto-style4">Apellido 1:</td>
                            <td class="auto-style3">
                                <asp:Label ID="docnombre1Label" runat="server" Text='<%# Bind("docnombre1") %>' />
                            </td>
                            <td class="auto-style25">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style28">Ingreso:</td>
                            <td class="auto-style24">
                                <asp:Label ID="docingresoLabel" runat="server" Text='<%# Bind("docingreso") %>' />
                            </td>
                            <td class="auto-style4">Nombre 2:</td>
                            <td class="auto-style3">
                                <asp:Label ID="docnombre2Label" runat="server" Text='<%# Bind("docnombre2") %>' />
                            </td>
                            <td class="auto-style25">&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" Font-Bold="True" ForeColor="Black" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" BackColor="Red" BorderColor="#FF3300" BorderStyle="Outset" Font-Bold="True" ForeColor="Black" OnClick="DeleteButton_Click" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" BackColor="#00CC00" BorderColor="Lime" BorderStyle="Outset" Font-Bold="True" ForeColor="Black" />
                </ItemTemplate>
            </asp:FormView>
    
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" DeleteCommand="DELETE FROM [tbldocentes] WHERE [doccodigo] = @doccodigo" InsertCommand="INSERT INTO [tbldocentes] ([usucodigo], [doccodigo], [docapellido1], [docapellido2], [docnombre1], [docnombre2], [docingreso], [dotelefono], [imagen], [archivo]) VALUES (@usucodigo, @doccodigo, @docapellido1, @docapellido2, @docnombre1, @docnombre2, @docingreso, @dotelefono, @imagen, @archivo)" SelectCommand="SELECT * FROM [tbldocentes] ORDER BY [docapellido1], [docapellido2], [docnombre1]" UpdateCommand="UPDATE [tbldocentes] SET [usucodigo] = @usucodigo, [docapellido1] = @docapellido1, [docapellido2] = @docapellido2, [docnombre1] = @docnombre1, [docnombre2] = @docnombre2, [docingreso] = @docingreso, [dotelefono] = @dotelefono, [imagen] = @imagen, [archivo] = @archivo WHERE [doccodigo] = @doccodigo">
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
                    <asp:Parameter Name="imagen" Type="String" />
                    <asp:Parameter Name="archivo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="usucodigo" Type="Int32" />
                    <asp:Parameter Name="docapellido1" Type="String" />
                    <asp:Parameter Name="docapellido2" Type="String" />
                    <asp:Parameter Name="docnombre1" Type="String" />
                    <asp:Parameter Name="docnombre2" Type="String" />
                    <asp:Parameter Name="docingreso" Type="String" />
                    <asp:Parameter Name="dotelefono" Type="String" />
                    <asp:Parameter Name="imagen" Type="String" />
                    <asp:Parameter Name="archivo" Type="String" />
                    <asp:Parameter Name="doccodigo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
                <div class="auto-style73">
                    <strong>
                    <asp:Button ID="Button4" runat="server" Height="22px" Text="X" Width="16px" BackColor="#FF9900" BorderStyle="None" CssClass="auto-style75" Font-Bold="True" OnClick="Button4_Click" Visible="False" />

                    <asp:Label ID="Label7" runat="server" CssClass="auto-style74" Height="45px" Width="1463px" style="border-radius: 10px" EnableTheming="True" Visible="False"></asp:Label>

                    </strong>

                </div>
        </div>
     </div>
</asp:Content>
