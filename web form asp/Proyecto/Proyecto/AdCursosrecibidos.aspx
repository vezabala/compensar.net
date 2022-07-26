<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="AdCursosrecibidos.aspx.cs" Inherits="Proyecto.AdCursosrecibidos" %>
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
        .auto-style6 {
            width: 4px;
        }
        .auto-style8 {
            width: 174px;
        }
        .auto-style9 {
            width: 261px;
        }
        .auto-style10 {
            width: 200px;
        }
        .auto-style11 {
            width: 159px;
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
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Listado de Cursos:</td>
                        <td class="auto-style11">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="curnombre1" DataValueField="curcodigo" AutoPostBack="True" Width="150px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [curcodigo], [curnombre1] FROM [tblcursos] ORDER BY [curcodigo]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style10">Listado de docentes por curso:</td>
                        <td class="auto-style9">
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Docente" DataValueField="doccodigo" Height="24px" Width="244px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [doccodigo], [Docente] FROM [qrycomboDocenteEstudiante] WHERE ([curcodigo] = @curcodigo)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="curcodigo" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </div>
            <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style2">
                <div margin-left: 17px; margin-top: 17px" class="auto-style4">
                    <div class="auto-style5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Codigo_del_curso,Codigo_del_estudiante" DataSourceID="SqlDataSource2" GridLines="Vertical" Height="463px" Width="1394px" AllowPaging="True">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Codigo_del_curso" HeaderText="Codigo del curso" ReadOnly="True" SortExpression="Codigo_del_curso" />
                            <asp:BoundField DataField="Nombre_del_curso" HeaderText="Nombre del curso" SortExpression="Nombre_del_curso" />
                            <asp:BoundField DataField="Codigo_del_estudiante" HeaderText="Codigo del estudiante" SortExpression="Codigo_del_estudiante" ReadOnly="True" />
                            <asp:BoundField DataField="Estudiante" HeaderText="Estudiante" SortExpression="Estudiante" ReadOnly="True" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [Codigo del curso] AS Codigo_del_curso, [Nombre del curso] AS Nombre_del_curso, [Codigo del estudiante] AS Codigo_del_estudiante, [Estudiante] FROM [qryCursoEstudiante] WHERE (([Codigo del docente] = @Codigo_del_docente) AND ([Codigo del curso] = @Codigo_del_curso))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="Codigo_del_docente" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="Codigo_del_curso" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
