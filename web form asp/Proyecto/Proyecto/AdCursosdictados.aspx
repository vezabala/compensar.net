<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="AdCursosdictados.aspx.cs" Inherits="Proyecto.AdCursosdictados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 77px;
            width: 1445px;
        }
        .auto-style2 {
            height: 597px;
            width: 1445px;
        }
        .auto-style3 {
            width: 127px;
        }
        .auto-style4 {
            height: 529px;
            width: 1417px;
            margin-left: 8px;
            margin-top: 22px;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">

        <div style="height: 756px; width: 1481px; margin-left: 17px; margin-top: 17px">
            <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style1">

                <table class="nav-justified">
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Listado de Cursos</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="curnombre1" DataValueField="curcodigo" AutoPostBack="True" Width="150px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [curcodigo], [curnombre1] FROM [tblcursos] ORDER BY [curcodigo]"></asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </div>
            <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style2">
                <div margin-left: 17px; margin-top: 17px" class="auto-style4">
                    <div class="auto-style5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="curcodigo,doccodigo" DataSourceID="SqlDataSource2" GridLines="Vertical" Height="463px" Width="1394px" AllowPaging="True">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="curcodigo" HeaderText="Codigo del curso:" ReadOnly="True" SortExpression="curcodigo" />
                            <asp:BoundField DataField="curnombre1" HeaderText="Nombre del curso" SortExpression="curnombre1" />
                            <asp:BoundField DataField="doccodigo" HeaderText="Codigo del docente" SortExpression="doccodigo" ReadOnly="True" />
                            <asp:BoundField DataField="docapellido1" HeaderText="Apellido 1" SortExpression="docapellido1" />
                            <asp:BoundField DataField="docapellido2" HeaderText="Apellido 2" SortExpression="docapellido2" />
                            <asp:BoundField DataField="docnombre1" HeaderText="Nombre 1" SortExpression="docnombre1" />
                            <asp:BoundField DataField="docnombre2" HeaderText="Nombre 2" SortExpression="docnombre2" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT * FROM [qryDocenteEnCurso] WHERE ([curcodigo] = @curcodigo) ORDER BY [docapellido1], [docnombre1]">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="curcodigo" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
