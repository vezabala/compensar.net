<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="Acestudiantes.aspx.cs" Inherits="Proyecto.Acestudiantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style58 {
            width: 110px;
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
        text-align: center;
            font-size: x-large;
            color: #0000FF;
        }
    .auto-style77 {
        font-size: x-large;
        color: #0000FF;
    }
    .auto-style78 {
        width: 155px;
    }
    .auto-style79 {
        width: 141px;
    }
    .auto-style80 {
        width: 154px;
    }
    .auto-style81 {
        width: 91px;
    }
    .auto-style82 {
        width: 99px;
    }
        .auto-style83 {
            width: 213px;
        }
        .auto-style84 {
            width: 159px;
        }
        .auto-style85 {
            width: 150px;
        }
        .auto-style86 {
            width: 151px;
        }
        .auto-style87 {
            width: 167px;
        }
        .auto-style88 {
            width: 306px;
        }
        .auto-style89 {
            width: 76px;
        }
        .auto-style90 {
            width: 186px;
        }
        .auto-style91 {
            width: 180px;
        }
        .auto-style92 {
            width: 181px;
        }
        .auto-style93 {
            width: 73px;
        }
        .auto-style94 {
            font-size: large;
            color: #800000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
        <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style60">
            <table class="auto-style61">
                <tr>
                    <td class="auto-style83">&nbsp;</td>
                    <td class="auto-style63">&nbsp;</td>
                    <td class="auto-style58">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style83">Buscar Estudiante&nbsp; por Codigo:</td>
                    <td class="auto-style63">
                        <asp:TextBox ID="TextBox4" runat="server" Width="174px"></asp:TextBox>
                    </td>
                    <td class="auto-style58">
                        <asp:Button ID="Button2" runat="server" BackColor="#00CC00" BorderColor="Lime" BorderStyle="Outset" Font-Bold="True" Text="Buscar" Width="91px" OnClick="Button2_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style83">&nbsp;</td>
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
                <div class="auto-style73">
                    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="estcodigo" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="1180px">
                        <EditItemTemplate>
                            <table class="auto-style61">
                                <tr>
                                    <td class="auto-style76" colspan="6"><strong>Actualizar estudiante</strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style90"><strong>Codigo de usuario:</strong></td>
                                    <td class="auto-style91">
                                        <asp:DropDownList ID="usucodigoDropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="usunombre" DataValueField="usucodigo" Height="20px" SelectedValue='<%# Bind("usucodigo") %>' Width="162px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [usucodigo], [usunombre] FROM [tbltipousuario] ORDER BY [usucodigo]"></asp:SqlDataSource>
                                    </td>
                                    <td class="auto-style92"><strong>Apellido 1:</strong></td>
                                    <td class="auto-style92">
                                        <asp:TextBox ID="estapellido1TextBox" runat="server" Text='<%# Bind("estapellido1") %>' />
                                    </td>
                                    <td class="auto-style93"><strong>Imagen:</strong></td>
                                    <td>
                                        <asp:FileUpload ID="estimagenFileUpload1" runat="server" Height="22px" Width="262px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style90"><strong>Codigo de estudiante:</strong></td>
                                    <td class="auto-style91">
                                        <asp:Label ID="estcodigoLabel1" runat="server" Text='<%# Eval("estcodigo") %>' />
                                    </td>
                                    <td class="auto-style92"><strong>Apellido 2:</strong></td>
                                    <td class="auto-style92">
                                        <asp:TextBox ID="estapellido2TextBox" runat="server" Text='<%# Bind("estapellido2") %>' />
                                    </td>
                                    <td class="auto-style93">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style90"><strong>Ingreso:</strong></td>
                                    <td class="auto-style91">
                                        <asp:TextBox ID="estingresoTextBox" runat="server" Text='<%# Bind("estingreso") %>' />
                                    </td>
                                    <td class="auto-style92"><strong>Nombre 1:</strong></td>
                                    <td class="auto-style92">
                                        <asp:TextBox ID="estnombre1TextBox" runat="server" Text='<%# Bind("estnombre1") %>' />
                                    </td>
                                    <td class="auto-style93">&nbsp;</td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#99FF33" BorderColor="#CCFF66" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton2_Click">Eliminar imagen y actualizar</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style90"><strong>Telefono:</strong></td>
                                    <td class="auto-style91">
                                        <asp:TextBox ID="estelefonoTextBox" runat="server" Text='<%# Bind("estelefono") %>' />
                                    </td>
                                    <td class="auto-style92"><strong>Nombre 2:</strong></td>
                                    <td class="auto-style92">
                                        <asp:TextBox ID="estnombre2TextBox" runat="server" Text='<%# Bind("estnombre2") %>' />
                                    </td>
                                    <td class="auto-style93">&nbsp;</td>
                                    <td>
                                        <asp:LinkButton ID="UpdateButton" runat="server" BorderStyle="Dotted" CausesValidation="True" CommandName="Update" Text="Actualizar" Visible="False" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <asp:LinkButton ID="LinkButton3" runat="server" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton3_Click">Actualizar</asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" Font-Italic="False" Font-Overline="False" ForeColor="Black" />
                            &nbsp; <strong>
                            <asp:Label ID="Label9" runat="server" CssClass="auto-style94"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label10" runat="server" CssClass="auto-style94"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label11" runat="server" CssClass="auto-style94"></asp:Label>
                            </strong>
                        </EditItemTemplate>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            <table class="auto-style61">
                                <tr>
                                    <td class="auto-style76" colspan="6"><strong>Crear estudiante</strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style84"><strong>Codigo de usuario:</strong></td>
                                    <td class="auto-style87">
                                        <asp:DropDownList ID="usucodigoDropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="usunombre" DataValueField="usucodigo" Height="22px" SelectedValue='<%# Bind("usucodigo") %>' Width="159px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [usucodigo], [usunombre] FROM [tbltipousuario] ORDER BY [usucodigo]"></asp:SqlDataSource>
                                    </td>
                                    <td class="auto-style85"><strong>Apellido 1:</strong></td>
                                    <td class="auto-style86">
                                        <asp:TextBox ID="estapellido1TextBox" runat="server" Text='<%# Bind("estapellido1") %>' />
                                    </td>
                                    <td class="auto-style89"><strong>Imagen:</strong></td>
                                    <td class="auto-style88">
                                        <asp:FileUpload ID="estimagenFileUpload1" runat="server" Enabled='<%# Bind("imagen") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style84"><strong>Codigo de estudiante:</strong></td>
                                    <td class="auto-style87">
                                        <asp:TextBox ID="estcodigoTextBox" runat="server" Text='<%# Bind("estcodigo") %>' />
                                    </td>
                                    <td class="auto-style85"><strong>Apellido 2:</strong></td>
                                    <td class="auto-style86">
                                        <asp:TextBox ID="estapellido2TextBox" runat="server" Text='<%# Bind("estapellido2") %>' />
                                    </td>
                                    <td class="auto-style89">&nbsp;</td>
                                    <td class="auto-style88">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style84"><strong>Ingreso:</strong></td>
                                    <td class="auto-style87">
                                        <asp:TextBox ID="estingresoTextBox" runat="server" Text='<%# Bind("estingreso") %>' />
                                    </td>
                                    <td class="auto-style85"><strong>Nombre 1:</strong></td>
                                    <td class="auto-style86">
                                        <asp:TextBox ID="estnombre1TextBox" runat="server" Text='<%# Bind("estnombre1") %>' />
                                    </td>
                                    <td class="auto-style89">&nbsp;</td>
                                    <td class="auto-style88">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style84"><strong>Telefono:</strong></td>
                                    <td class="auto-style87">
                                        <asp:TextBox ID="estelefonoTextBox" runat="server" Text='<%# Bind("estelefono") %>' />
                                    </td>
                                    <td class="auto-style85"><strong>Nombre 2:</strong></td>
                                    <td class="auto-style86">
                                        <asp:TextBox ID="estnombre2TextBox" runat="server" Text='<%# Bind("estnombre2") %>' />
                                    </td>
                                    <td class="auto-style89">&nbsp;</td>
                                    <td class="auto-style88">
                                        <asp:LinkButton ID="InsertButton" runat="server" BorderStyle="Solid" CausesValidation="True" CommandName="Insert" Text="Insertar" Visible="False" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#0099FF" BorderColor="#66FFFF" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton1_Click">Insertar</asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" />
                            &nbsp; <strong>
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style90"></asp:Label>
                            <br />
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style90"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label8" runat="server" CssClass="auto-style90"></asp:Label>
                            </strong>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table class="auto-style61">
                                <tr>
                                    <td class="auto-style76" colspan="6"><strong><span class="auto-style77">Actualizacion de estudiantes</span></strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style78"><strong>Codigo de usuario:</strong></td>
                                    <td class="auto-style79">
                                        <asp:Label ID="usucodigoLabel" runat="server" Text='<%# Bind("usucodigo") %>' />
                                    </td>
                                    <td class="auto-style82"><strong>Apellido 1:</strong></td>
                                    <td class="auto-style80">
                                        <asp:Label ID="estapellido1Label" runat="server" Text='<%# Bind("estapellido1") %>' />
                                    </td>
                                    <td class="auto-style81"><strong>Imagen:</strong></td>
                                    <td>
                                        <asp:Label ID="imagenLabel" runat="server" Text='<%# Bind("imagen") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style78"><strong>Codigo de estudiante:</strong></td>
                                    <td class="auto-style79">
                                        <asp:Label ID="estcodigoLabel" runat="server" Text='<%# Eval("estcodigo") %>' />
                                    </td>
                                    <td class="auto-style82"><strong>Apellido2:</strong></td>
                                    <td class="auto-style80">
                                        <asp:Label ID="estapellido2Label" runat="server" Text='<%# Bind("estapellido2") %>' />
                                    </td>
                                    <td class="auto-style81">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style78"><strong>Ingreso:</strong></td>
                                    <td class="auto-style79">
                                        <asp:Label ID="estingresoLabel" runat="server" Text='<%# Bind("estingreso") %>' />
                                    </td>
                                    <td class="auto-style82"><strong>Nombre 1:</strong></td>
                                    <td class="auto-style80">
                                        <asp:Label ID="estnombre1Label" runat="server" Text='<%# Bind("estnombre1") %>' />
                                    </td>
                                    <td class="auto-style81">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style78"><strong>Telefono:</strong></td>
                                    <td class="auto-style79">
                                        <asp:Label ID="estelefonoLabel" runat="server" Text='<%# Bind("estelefono") %>' />
                                    </td>
                                    <td class="auto-style82"><strong>Nombre 2:</strong></td>
                                    <td class="auto-style80">
                                        <asp:Label ID="estnombre2Label" runat="server" Text='<%# Bind("estnombre2") %>' />
                                    </td>
                                    <td class="auto-style81">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            &nbsp;<br />&nbsp;<asp:LinkButton ID="EditButton" runat="server" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" CausesValidation="False" CommandName="Edit" Font-Bold="True" Font-Overline="False" ForeColor="Black" Text="Editar" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" BackColor="Red" BorderColor="#FF3300" BorderStyle="Outset" CausesValidation="False" CommandName="Delete" Font-Bold="True" Font-Italic="False" Font-Overline="False" ForeColor="Black" Text="Eliminar" OnClick="DeleteButton_Click" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" BackColor="#00CC00" BorderColor="Lime" BorderStyle="Outset" CausesValidation="False" CommandName="New" Font-Bold="True" Font-Overline="False" ForeColor="Black" Text="Nuevo" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" DeleteCommand="DELETE FROM [tblestudiantes] WHERE [estcodigo] = @estcodigo" InsertCommand="INSERT INTO [tblestudiantes] ([usucodigo], [estcodigo], [estapellido1], [estapellido2], [estnombre1], [estnombre2], [estingreso], [estelefono], [imagen]) VALUES (@usucodigo, @estcodigo, @estapellido1, @estapellido2, @estnombre1, @estnombre2, @estingreso, @estelefono, @imagen)" SelectCommand="SELECT * FROM [tblestudiantes] ORDER BY [estcodigo], [estapellido1], [estnombre1]" UpdateCommand="UPDATE [tblestudiantes] SET [usucodigo] = @usucodigo, [estapellido1] = @estapellido1, [estapellido2] = @estapellido2, [estnombre1] = @estnombre1, [estnombre2] = @estnombre2, [estingreso] = @estingreso, [estelefono] = @estelefono, [imagen] = @imagen WHERE [estcodigo] = @estcodigo">
                        <DeleteParameters>
                            <asp:Parameter Name="estcodigo" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="usucodigo" Type="Int32" />
                            <asp:Parameter Name="estcodigo" Type="Int32" />
                            <asp:Parameter Name="estapellido1" Type="String" />
                            <asp:Parameter Name="estapellido2" Type="String" />
                            <asp:Parameter Name="estnombre1" Type="String" />
                            <asp:Parameter Name="estnombre2" Type="String" />
                            <asp:Parameter Name="estingreso" Type="String" />
                            <asp:Parameter Name="estelefono" Type="String" />
                            <asp:Parameter Name="imagen" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="usucodigo" Type="Int32" />
                            <asp:Parameter Name="estapellido1" Type="String" />
                            <asp:Parameter Name="estapellido2" Type="String" />
                            <asp:Parameter Name="estnombre1" Type="String" />
                            <asp:Parameter Name="estnombre2" Type="String" />
                            <asp:Parameter Name="estingreso" Type="String" />
                            <asp:Parameter Name="estelefono" Type="String" />
                            <asp:Parameter Name="imagen" Type="String" />
                            <asp:Parameter Name="estcodigo" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <strong>
                    <asp:Button ID="Button4" runat="server" Height="22px" Text="X" Width="16px" BackColor="#FF9900" BorderStyle="None" CssClass="auto-style75" Font-Bold="True" OnClick="Button4_Click" Visible="False" />

                    <asp:Label ID="Label7" runat="server" CssClass="auto-style74" Height="45px" Width="1463px" style="border-radius: 10px" EnableTheming="True" Visible="False"></asp:Label>

                    </strong>

                </div>
        </div>
     </div>
</asp:Content>
