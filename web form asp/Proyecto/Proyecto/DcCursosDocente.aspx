<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoc.Master" AutoEventWireup="true" CodeBehind="DcCursosDocente.aspx.cs" Inherits="Proyecto.DcCursosDocente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
         <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
            <div style="height: 756px; width: 1481px; margin-left: 17px; margin-top: 17px">
                <div class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" AllowPaging="True" Height="374px" Width="1134px" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="Gainsboro" />
                    <Columns>
                        <asp:BoundField DataField="curcodigo" HeaderText="Codigo del curso" SortExpression="curcodigo" />
                        <asp:BoundField DataField="curnombre1" HeaderText="Nombre del curso" SortExpression="curnombre1" />
                        <asp:BoundField DataField="curintensidadh" HeaderText="Intensidad horaria" SortExpression="curintensidadh" />
                        <asp:BoundField DataField="curdescripcion" HeaderText="Descripcion del curso" SortExpression="curdescripcion" />
                         <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" CausesValidation="False" CommandName="Select" Font-Bold="True" Font-Overline="False" ForeColor="Black" Text="Ver estudiantes del curso"></asp:LinkButton>
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
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [curcodigo], [curnombre1], [curintensidadh], [curdescripcion] FROM [qryMisCursos] WHERE ([doccodigo] = @doccodigo) ORDER BY [curcodigo], [curnombre1]">
                    <SelectParameters>
                        <asp:SessionParameter Name="doccodigo" SessionField="codigo" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
         </div>
    </main>
</asp:Content>
