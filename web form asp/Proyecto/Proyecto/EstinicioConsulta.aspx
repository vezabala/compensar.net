<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="EstinicioConsulta.aspx.cs" Inherits="Proyecto.EstinicioConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            height: 78px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 191px;
        }
        .auto-style5 {
            width: 117px;
        }
        .auto-style6 {
            width: 151px;
        }
         .auto-style7 {
             margin-left: 0px;
         }
         .auto-style8 {
             width: 200px;
         }
         .auto-style9 {
             text-align: center;
             color: #0000FF;
             font-size: x-large;
         }
         .auto-style11 {
             width: 141px;
         }
         .auto-style12 {
             width: 154px;
         }
         .auto-style13 {
             width: 67px;
         }
         .auto-style14 {
             width: 90px;
         }
         .auto-style15 {
             width: 157px;
         }
         .auto-style18 {
             height: 31px;
             width: 326px;
         }
         .auto-style21 {
             width: 326px;
             height: 59px;
         }
         .auto-style30 {
             height: 59px;
             width: 410px;
         }
         .auto-style31 {
             width: 410px;
         }
         .auto-style32 {
             height: 31px;
             width: 410px;
         }
         .auto-style33 {
             height: 59px;
             width: 119px;
         }
         .auto-style35 {
             height: 31px;
             width: 119px;
         }
         .auto-style36 {
             width: 119px;
         }
         .auto-style38 {
             height: 59px;
             width: 210px;
         }
         .auto-style40 {
             height: 31px;
             width: 210px;
         }
         .auto-style41 {
             width: 373px;
             height: 59px;
         }
         .auto-style43 {
             height: 31px;
             width: 373px;
         }
         .auto-style44 {
             width: 400px;
             height: 59px;
         }
         .auto-style45 {
             width: 400px;
         }
         .auto-style46 {
             height: 31px;
             width: 400px;
         }
         .auto-style47 {
             width: 373px;
         }
         .auto-style48 {
             width: 326px;
         }
         .auto-style49 {
             width: 210px;
         }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
        <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Buscar Estudiante por Codigo:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server" Width="174px" CssClass="auto-style7"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button2" runat="server" BackColor="#00CC00" BorderColor="Lime" BorderStyle="Outset" Font-Bold="True" Text="Buscar" Width="92px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button3" runat="server" BackColor="Red" BorderColor="#FF3300" BorderStyle="Outset" Font-Bold="True" Font-Strikeout="False" Text="Volver" Width="92px" PostBackUrl="~/Acestudiantes.aspx" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
         <div style="height: 756px; width: 1481px; margin-left: 17px; margin-top: 17px">
             <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="estcodigo" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="1284px">
                 <EditItemTemplate>
                            <table class="auto-style61">
                                <tr>
                                    <td class="auto-style9" colspan="6"><strong>Actualizar estudiante</strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style44"><strong>Codigo de usuario:</strong></td>
                                    <td class="auto-style41">
                                        <asp:DropDownList ID="usucodigoDropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="usunombre" DataValueField="usucodigo" Height="20px" SelectedValue='<%# Bind("usucodigo") %>' Width="162px">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [usucodigo], [usunombre] FROM [tbltipousuario] ORDER BY [usucodigo]"></asp:SqlDataSource>
                                    </td>
                                    <td class="auto-style38"><strong>Apellido 1:</strong></td>
                                    <td class="auto-style21">
                                        <asp:TextBox ID="estapellido1TextBox" runat="server" Text='<%# Bind("estapellido1") %>' />
                                    </td>
                                    <td class="auto-style33"><strong>Imagen:</strong></td>
                                    <td class="auto-style30">
                                        <asp:FileUpload ID="estimagenFileUpload1" runat="server" Height="22px" Width="262px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style45"><strong>Codigo de estudiante:</strong></td>
                                    <td class="auto-style47">
                                        <asp:Label ID="estcodigoLabel1" runat="server" Text='<%# Eval("estcodigo") %>' />
                                    </td>
                                    <td class="auto-style49"><strong>Apellido 2:</strong></td>
                                    <td class="auto-style48">
                                        <asp:TextBox ID="estapellido2TextBox" runat="server" Text='<%# Bind("estapellido2") %>' />
                                    </td>
                                    <td class="auto-style36">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style46"><strong>Ingreso:</strong></td>
                                    <td class="auto-style43">
                                        <asp:TextBox ID="estingresoTextBox" runat="server" Text='<%# Bind("estingreso") %>' />
                                    </td>
                                    <td class="auto-style40"><strong>Nombre 1:</strong></td>
                                    <td class="auto-style18">
                                        <asp:TextBox ID="estnombre1TextBox" runat="server" Text='<%# Bind("estnombre1") %>' />
                                    </td>
                                    <td class="auto-style35"></td>
                                    <td class="auto-style32">
                                        <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#99FF33" BorderColor="#CCFF66" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton2_Click">Eliminar imagen y actualizar</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style45"><strong>Telefono:</strong></td>
                                    <td class="auto-style47">
                                        <asp:TextBox ID="estelefonoTextBox" runat="server" Text='<%# Bind("estelefono") %>' />
                                    </td>
                                    <td class="auto-style49"><strong>Nombre 2:</strong></td>
                                    <td class="auto-style48">
                                        <asp:TextBox ID="estnombre2TextBox" runat="server" Text='<%# Bind("estnombre2") %>' />
                                    </td>
                                    <td class="auto-style36">&nbsp;</td>
                                    <td class="auto-style31">
                                        <asp:LinkButton ID="UpdateButton" runat="server" BorderStyle="Dotted" CausesValidation="True" CommandName="Update" Text="Actualizar" Visible="False" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <asp:LinkButton ID="LinkButton3" runat="server" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton3_Click">Actualizar</asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" Font-Italic="False" Font-Overline="False" ForeColor="Black" />
                            &nbsp; <strong>
                            <asp:Label ID="Label9" runat="server" CssClass="auto-style94" style="font-size: large; color: #800000"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label10" runat="server" CssClass="auto-style94" style="font-size: large; color: #800000"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label11" runat="server" CssClass="auto-style94" style="color: #800000; font-size: large"></asp:Label>
                            </strong>
                        </EditItemTemplate>
                 <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
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
                     imagen:
                     <asp:TextBox ID="imagenTextBox" runat="server" Text='<%# Bind("imagen") %>' />
                     <br />
                     <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                     &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <table class="auto-style2">
                         <tr>
                             <td class="auto-style9" colspan="6"><strong>Actualizacion de estudiantes</strong></td>
                         </tr>
                         <tr>
                             <td class="auto-style15"><strong>Codigo de usuario:</strong></td>
                             <td class="auto-style11">
                                 <asp:Label ID="usucodigoLabel" runat="server" Text='<%# Bind("usucodigo") %>' />
                             </td>
                             <td class="auto-style14"><strong>Apellido 1:</strong></td>
                             <td class="auto-style12">
                                 <asp:Label ID="estapellido1Label" runat="server" Text='<%# Bind("estapellido1") %>' />
                             </td>
                             <td class="auto-style13"><strong>Imagen:</strong></td>
                             <td>
                                 <asp:Label ID="imagenLabel" runat="server" Text='<%# Bind("imagen") %>' />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style15"><strong>Codigo de estudiante:</strong></td>
                             <td class="auto-style11">
                                 <asp:Label ID="estcodigoLabel" runat="server" Text='<%# Eval("estcodigo") %>' />
                             </td>
                             <td class="auto-style14"><strong>Apellido 2:</strong></td>
                             <td class="auto-style12">
                                 <asp:Label ID="estapellido2Label" runat="server" Text='<%# Bind("estapellido2") %>' />
                             </td>
                             <td class="auto-style13"><strong></strong></td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style15"><strong>Ingreso:</strong></td>
                             <td class="auto-style11">
                                 <asp:Label ID="estingresoLabel" runat="server" Text='<%# Bind("estingreso") %>' />
                             </td>
                             <td class="auto-style14"><strong>Nombre 1:</strong></td>
                             <td class="auto-style12">
                                 <asp:Label ID="estnombre1Label" runat="server" Text='<%# Bind("estnombre1") %>' />
                             </td>
                             <td class="auto-style13"><strong></strong></td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style15"><strong>Telefono:</strong></td>
                             <td class="auto-style11">
                                 <asp:Label ID="estelefonoLabel" runat="server" Text='<%# Bind("estelefono") %>' />
                             </td>
                             <td class="auto-style14"><strong>Nombre 2:</strong></td>
                             <td class="auto-style12">
                                 <asp:Label ID="estnombre2Label" runat="server" Text='<%# Bind("estnombre2") %>' />
                             </td>
                             <td class="auto-style13"><strong></strong></td>
                             <td>&nbsp;</td>
                         </tr>
                     </table>
                     &nbsp;<br />&nbsp;<asp:LinkButton ID="EditButton" runat="server" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" CausesValidation="False" CommandName="Edit" Font-Bold="True" Font-Overline="False" ForeColor="Black" Text="Editar" />
                     &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" BackColor="Red" BorderColor="#FF3300" BorderStyle="Outset" CausesValidation="False" CommandName="Delete" Font-Bold="True" Font-Overline="False" ForeColor="Black" Text="Eliminar" OnClick="DeleteButton_Click" />
                     &nbsp;
                 </ItemTemplate>
                 <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                 <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
             </asp:FormView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" DeleteCommand="DELETE FROM [tblestudiantes] WHERE [estcodigo] = @estcodigo" InsertCommand="INSERT INTO [tblestudiantes] ([usucodigo], [estcodigo], [estapellido1], [estapellido2], [estnombre1], [estnombre2], [estingreso], [estelefono], [imagen]) VALUES (@usucodigo, @estcodigo, @estapellido1, @estapellido2, @estnombre1, @estnombre2, @estingreso, @estelefono, @imagen)" SelectCommand="SELECT * FROM [tblestudiantes] WHERE ([estcodigo] = @estcodigo) ORDER BY [estcodigo], [estapellido1], [estnombre1]" UpdateCommand="UPDATE [tblestudiantes] SET [usucodigo] = @usucodigo, [estapellido1] = @estapellido1, [estapellido2] = @estapellido2, [estnombre1] = @estnombre1, [estnombre2] = @estnombre2, [estingreso] = @estingreso, [estelefono] = @estelefono, [imagen] = @imagen WHERE [estcodigo] = @estcodigo">
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
                 <SelectParameters>
                     <asp:SessionParameter Name="estcodigo" SessionField="codigoEstudiante" Type="Int32" />
                 </SelectParameters>
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
         </div>
     </div>
</asp:Content>
