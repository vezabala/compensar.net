<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="DocinicioConsulta.aspx.cs" Inherits="Proyecto.DocinicioConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 78px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 186px;
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
            text-align: center;
            color: #0099FF;
        }
        .auto-style8 {
            color: #0099FF;
        }
        .auto-style10 {
            width: 127px;
        }
        .auto-style11 {
            width: 156px;
        }
        .auto-style12 {
            width: 157px;
        }
        .auto-style13 {
            width: 158px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
        <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Buscar Docente por Codigo:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server" Width="174px"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button2" runat="server" BackColor="#00CC00" BorderColor="Lime" BorderStyle="Outset" Font-Bold="True" Text="Buscar" Width="92px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button3" runat="server" BackColor="Red" BorderColor="#FF3300" BorderStyle="Outset" Font-Bold="True" Font-Strikeout="False" Text="Volver" Width="92px" PostBackUrl="~/Acdocentes.aspx" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
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
             <asp:FormView ID="FormView1" runat="server" DataKeyNames="doccodigo" DataSourceID="SqlDataSource1" Width="960px" CellPadding="4" ForeColor="#333333">
                 <EditItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style10" colspan="6">Actualizacion de Docentes</td>
                        </tr>
                        <tr>
                            <td class="auto-style32">Codigo Usuario:</td>
                            <td class="auto-style59">
                                <asp:DropDownList ID="usucodigoDropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="usunombre" DataValueField="usucodigo" SelectedValue='<%# Bind("usucodigo") %>' Width="129px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [usucodigo], [usunombre] FROM [tbltipousuario] ORDER BY [usucodigo]"></asp:SqlDataSource>
                            </td>
                            <td class="auto-style58">Apellido 1:</td>
                            <td class="auto-style56">
                                <asp:TextBox ID="docapellido1TextBox" runat="server" Text='<%# Bind("docapellido1") %>' />
                            </td>
                            <td class="auto-style57">Imagen:</td>
                            <td class="auto-style76">
                                <asp:FileUpload ID="docimagenFileUpload1" runat="server" Width="244px" />
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
                            <td class="auto-style76">
                                <asp:FileUpload ID="docarchivoFileUpload1" runat="server" Height="25px" Width="248px" />
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
                            <td class="auto-style76">
                                <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#99FF33" BorderColor="#CCFF66" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton2_Click">Eliminar imagen y actualizar</asp:LinkButton>
                            </td>
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
                            <td class="auto-style76">
                                <asp:LinkButton ID="LinkButton3" runat="server" BackColor="Yellow" BorderColor="#FFFF66" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton3_Click">Eliminar archivo y actualizar</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" ForeColor="Black" Font-Bold="True" Font-Overline="False" OnClick="LinkButton1_Click" >Actualizar</asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" ForeColor="Black" Font-Bold="True" Font-Italic="False" Font-Overline="False" />
                    &nbsp; 
                     <asp:Label ID="Label9" runat="server" CssClass="auto-style77" Font-Bold="True" Font-Italic="True" style="color: #990000; font-size: large"></asp:Label>
                     <strong>
                    <br />
                    <br />
                    </strong>
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style78" Font-Bold="True" Font-Italic="True" style="font-size: large; color: #990000"></asp:Label>
                    <br />
                    <br />
                    <strong><em>
                    <asp:Label ID="Label11" runat="server" CssClass="auto-style78" style="color: #990000; font-size: large"></asp:Label>
                    <asp:LinkButton ID="UpdateButton" runat="server" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" CausesValidation="True" CommandName="Update" Font-Bold="True" Font-Overline="False" ForeColor="Black" Text="Actualizar" visible="false"/>
                    </em></strong>
                </EditItemTemplate>
                 <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
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
                     imagen:
                     <asp:TextBox ID="imagenTextBox" runat="server" Text='<%# Bind("imagen") %>' />
                     <br />
                     archivo:
                     <asp:TextBox ID="archivoTextBox" runat="server" Text='<%# Bind("archivo") %>' />
                     <br />
                     <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                     &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                 </InsertItemTemplate>
                 <ItemTemplate>
                     <table class="auto-style2">
                         <tr>
                             <td class="auto-style7" colspan="6"><strong><span class="auto-style8">Actualizacion de docentes</span></strong></td>
                         </tr>
                         <tr>
                             <td class="auto-style10">Codigo Usuario:</td>
                             <td class="auto-style12">
                                 <asp:Label ID="usucodigoLabel" runat="server" Text='<%# Bind("usucodigo") %>' />
                             </td>
                             <td class="auto-style11">Apellido 1:</td>
                             <td class="auto-style12">
                                 <asp:Label ID="docapellido1Label" runat="server" Text='<%# Bind("docapellido1") %>' />
                             </td>
                             <td class="auto-style12">Imagen:</td>
                             <td class="auto-style13">
                                 <asp:Label ID="imagenLabel" runat="server" Text='<%# Bind("imagen") %>' />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style10">Codigo Docente:</td>
                             <td class="auto-style12">
                                 <asp:Label ID="doccodigoLabel" runat="server" Text='<%# Eval("doccodigo") %>' />
                             </td>
                             <td class="auto-style11">Apellido 2:</td>
                             <td class="auto-style12">
                                 <asp:Label ID="docapellido2Label" runat="server" Text='<%# Bind("docapellido2") %>' />
                             </td>
                             <td class="auto-style12">Archivo:</td>
                             <td class="auto-style13">
                                 <asp:Label ID="archivoLabel" runat="server" Text='<%# Bind("archivo") %>' />
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style10">Telefono:</td>
                             <td class="auto-style12">
                                 <asp:Label ID="dotelefonoLabel" runat="server" Text='<%# Bind("dotelefono") %>' />
                             </td>
                             <td class="auto-style11">Nombre 1:</td>
                             <td class="auto-style12">
                                 <asp:Label ID="docnombre1Label" runat="server" Text='<%# Bind("docnombre1") %>' />
                             </td>
                             <td class="auto-style12">&nbsp;</td>
                             <td class="auto-style13">&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style10">Ingreso</td>
                             <td class="auto-style12">
                                 <asp:Label ID="docingresoLabel" runat="server" Text='<%# Bind("docingreso") %>' />
                             </td>
                             <td class="auto-style11">Nombre 2:</td>
                             <td class="auto-style12">
                                 <asp:Label ID="docnombre2Label" runat="server" Text='<%# Bind("docnombre2") %>' />
                             </td>
                             <td class="auto-style12">&nbsp;</td>
                             <td class="auto-style13">&nbsp;</td>
                         </tr>
                     </table>
                     <br />
                     <asp:LinkButton ID="EditButton" runat="server" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" CausesValidation="False" CommandName="Edit" Font-Bold="True" Font-Overline="False" ForeColor="Black" Text="Editar" />
                     &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" BackColor="Red" BorderColor="#FF3300" BorderStyle="Outset" CausesValidation="False" CommandName="Delete" Font-Bold="True" Font-Overline="False" ForeColor="Black" Text="Eliminar" OnClick="DeleteButton_Click" />
                     &nbsp;
                 </ItemTemplate>
                 <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                 <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
             </asp:FormView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" DeleteCommand="DELETE FROM [tbldocentes] WHERE [doccodigo] = @doccodigo" InsertCommand="INSERT INTO [tbldocentes] ([usucodigo], [doccodigo], [docapellido1], [docapellido2], [docnombre1], [docnombre2], [docingreso], [dotelefono], [imagen], [archivo]) VALUES (@usucodigo, @doccodigo, @docapellido1, @docapellido2, @docnombre1, @docnombre2, @docingreso, @dotelefono, @imagen, @archivo)" SelectCommand="SELECT * FROM [tbldocentes] WHERE ([doccodigo] = @doccodigo)" UpdateCommand="UPDATE [tbldocentes] SET [usucodigo] = @usucodigo, [docapellido1] = @docapellido1, [docapellido2] = @docapellido2, [docnombre1] = @docnombre1, [docnombre2] = @docnombre2, [docingreso] = @docingreso, [dotelefono] = @dotelefono, [imagen] = @imagen, [archivo] = @archivo WHERE [doccodigo] = @doccodigo">
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
                 <SelectParameters>
                     <asp:ControlParameter ControlID="TextBox4" Name="doccodigo" PropertyName="Text" Type="Int32" />
                 </SelectParameters>
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
         </div>
     </div>
</asp:Content>
