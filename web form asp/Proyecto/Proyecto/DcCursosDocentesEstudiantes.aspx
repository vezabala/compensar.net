<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoc.Master" AutoEventWireup="true" CodeBehind="DcCursosDocentesEstudiantes.aspx.cs" Inherits="Proyecto.DcCursosDocentesEstudiantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
         <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">

            <div style="height: 756px; width: 1481px; margin-left: 17px; margin-top: 17px">
                <div>
                    <h1 class="auto-style1">
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style2"></asp:Label>
                    </h1>
                </div>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="308px" Width="1161px">
                    <AlternatingRowStyle BackColor="Gainsboro" />
                    <Columns>
                        <asp:BoundField DataField="estcodigo" HeaderText="Codigo del estudiante" SortExpression="estcodigo" />
                        <asp:BoundField DataField="estapellido1" HeaderText="Primer apellido" SortExpression="estapellido1" />
                        <asp:BoundField DataField="estapellido2" HeaderText="Segundo apellido" SortExpression="estapellido2" />
                        <asp:BoundField DataField="estnombre1" HeaderText="Prime nombre" SortExpression="estnombre1" />
                        <asp:BoundField DataField="estnombre2" HeaderText="Segundo nombre" SortExpression="estnombre2" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [estcodigo], [estapellido1], [estapellido2], [estnombre1], [estnombre2] FROM [qryEstCurDoc] WHERE (([curcodigo] = @curcodigo) AND ([doccodigo] = @doccodigo)) ORDER BY [estapellido1]">
                    <SelectParameters>
                        <asp:SessionParameter Name="curcodigo" SessionField="verEstudianteCurso" Type="Int32" />
                        <asp:SessionParameter Name="doccodigo" SessionField="codigo" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#99FF33" BorderColor="#99FF66" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" PostBackUrl="~/DcCursosDocente.aspx">Volver</asp:LinkButton>
                <br />
            </div>
          </div>
     </main>
</asp:Content>
