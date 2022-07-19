<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="Proyecto.Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="curcodigo" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" GridLines="Vertical">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    
                    <asp:TemplateField HeaderText="Codigo del curso" InsertVisible="False" SortExpression="curcodigo">
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
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" BackColor="#3399FF" BorderColor="#3399FF" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" BackColor="Red" BorderColor="#990000" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" BackColor="#0099CC" BorderColor="#0066CC" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar" BackColor="#00CC00" BorderColor="#006600" BorderStyle="Outset" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" BackColor="Red" BorderColor="#990000" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle ForeColor="Black" BackColor="#EEEEEE" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [curcodigo], [curnombre1], [curintensidadh], [curdescripcion] FROM [tblcursos] ORDER BY [curcodigo], [curnombre1]" DeleteCommand="DELETE FROM [tblcursos] WHERE [curcodigo] = @curcodigo" InsertCommand="INSERT INTO [tblcursos] ([curnombre1], [curintensidadh], [curdescripcion]) VALUES (@curnombre1, @curintensidadh, @curdescripcion)" UpdateCommand="UPDATE [tblcursos] SET [curnombre1] = @curnombre1, [curintensidadh] = @curintensidadh, [curdescripcion] = @curdescripcion WHERE [curcodigo] = @curcodigo">
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
        </div>
    </form>
</body>
</html>
