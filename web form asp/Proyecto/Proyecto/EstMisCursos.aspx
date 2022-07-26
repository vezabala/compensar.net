<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEst.Master" AutoEventWireup="true" CodeBehind="EstMisCursos.aspx.cs" Inherits="Proyecto.EstMisCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 1479px;
            height: 734px;
            margin-left: 21px;
            margin-top: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper">
        <div class="row">
            <!-- Page Header -->
            <div class="col-lg-12 ">
                <h1 class="page-header">
                <asp:Label ID="Label1" runat="server" Text="Estudiante"></asp:Label>
                </h1>
                <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
                    <div class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="372px" Width="1233px">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="curcodigo" HeaderText="Codigo del curso" SortExpression="curcodigo" />
                                <asp:BoundField DataField="curnombre1" HeaderText="Nombre del curso" SortExpression="curnombre1" />
                                <asp:BoundField DataField="curintensidadh" HeaderText="Intensidad horaria" SortExpression="curintensidadh" />
                                <asp:BoundField DataField="curdescripcion" HeaderText="Descripcion" SortExpression="curdescripcion" />
                                <asp:BoundField DataField="doccodigo" HeaderText="Codigo del docente" SortExpression="doccodigo" />
                                <asp:BoundField DataField="Docente" HeaderText="Docente" ReadOnly="True" SortExpression="Docente" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [curcodigo], [curnombre1], [curintensidadh], [curdescripcion], [doccodigo], [Docente] FROM [qryMisCursosEstudiantes] WHERE ([estcodigo] = @estcodigo) ORDER BY [curnombre1]">
                            <SelectParameters>
                                <asp:SessionParameter Name="estcodigo" SessionField="codigo" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
