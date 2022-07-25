<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="Accursos.aspx.cs" Inherits="Proyecto.Accursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
        <div style="height: 756px; width: 1481px; margin-left: 17px; margin-top: 17px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="curcodigo" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="510px" Width="1471px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:TemplateField HeaderText="Codigo del Curso" InsertVisible="False" SortExpression="curcodigo">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("curcodigo") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("curcodigo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre del curso" SortExpression="curnombre1">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("curnombre1") %>' Width="70px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("curnombre1") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Intensidad horaria" SortExpression="curintensidadh">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("curintensidadh") %>' Width="70px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("curintensidadh") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Descripcion" SortExpression="curdescripcion">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("curdescripcion") %>' Width="225px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("curdescripcion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" Font-Overline="False" ForeColor="Black"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" BackColor="Red" BorderColor="#FF3300" BorderStyle="Outset" Font-Overline="False" ForeColor="Black"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" BackColor="#0099FF" BorderColor="#33CCFF" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar" BackColor="#00CC00" BorderColor="Lime" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" BackColor="Red" BorderColor="#FF3300" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" DeleteCommand="DELETE FROM [tblcursos] WHERE [curcodigo] = @curcodigo" InsertCommand="INSERT INTO [tblcursos] ([curnombre1], [curintensidadh], [curdescripcion]) VALUES (@curnombre1, @curintensidadh, @curdescripcion)" SelectCommand="SELECT [curcodigo], [curnombre1], [curintensidadh], [curdescripcion] FROM [tblcursos] ORDER BY [curcodigo], [curnombre1]" UpdateCommand="UPDATE [tblcursos] SET [curnombre1] = @curnombre1, [curintensidadh] = @curintensidadh, [curdescripcion] = @curdescripcion WHERE [curcodigo] = @curcodigo">
                <DeleteParameters>
                    <asp:Parameter Name="curcodigo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="curnombre1" Type="String" />
                    <asp:Parameter Name="curintensidadh" Type="Int32" />
                    <asp:Parameter Name="curdescripcion" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="curnombre1" Type="String" />
                    <asp:Parameter Name="curintensidadh" Type="Int32" />
                    <asp:Parameter Name="curdescripcion" Type="String" />
                    <asp:Parameter Name="curcodigo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:LinkButton ID="LinkButton4" runat="server" BackColor="#FF9900" BorderColor="#FFCC00" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" PostBackUrl="~/AgregarCurso.aspx">Agregar Curso</asp:LinkButton>
            
            <br />
            
            <div class="auto-style73">
                    <strong>
                    <asp:Button ID="Button4" runat="server" Height="22px" Text="X" Width="16px" BackColor="#FF9900" BorderStyle="None" CssClass="auto-style75" Font-Bold="True" OnClick="Button4_Click" Visible="False" />

                    <asp:Label ID="Label7" runat="server" CssClass="auto-style74" Height="45px" Width="1463px" style="border-radius: 10px" EnableTheming="True" Visible="False"></asp:Label>

                    </strong>

           </div>
        </div>
    </div>
</asp:Content>
