<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="AcDocentesCursos.aspx.cs" Inherits="Proyecto.AcDocentesCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 58px;
        text-align: center;
    }
        .auto-style2 {
            height: 491px;
        }
    .auto-style3 {
        height: 127px;
    }
    .auto-style4 {
        height: 428px;
        width: 1400px;
        margin-left: 19px;
        margin-top: 35px;
    }
    .auto-style5 {
        height: 115px;
        width: 1399px;
        margin-left: 24px;
        margin-top: 2px;
    }
    .auto-style6 {
        width: 100%;
    }
    .auto-style7 {
        width: 86px;
    }
    .auto-style8 {
        width: 229px;
    }
    .auto-style9 {
            width: 412px;
        }
    .auto-style11 {
        width: 571px;
    }
    .auto-style12 {
        color: #660033;
        font-size: large;
    }
    .auto-style13 {
        width: 60px;
    }
    .auto-style14 {
        font-weight: normal;
    }
    .auto-style15 {
        color: #3399FF;
        height: 35px;
        margin-top: 0px;
    }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            margin-left: 183px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">

        <div style="height: 756px; width: 1481px; margin-left: 17px; margin-top: 17px">
            <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style1">
                <h1 class="auto-style15"><span class="auto-style14"><strong>Agregar docentes a cursos</strong></span></h1>
            </div>
            <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style2">
                <div class="auto-style4">
                    <div class="auto-style16">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="curcodigo,doccodigo" DataSourceID="SqlDataSource3" GridLines="Vertical" Height="385px" Width="1386px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="curcodigo" HeaderText="Codigo del curso" ReadOnly="True" SortExpression="curcodigo" />
                            <asp:BoundField DataField="doccodigo" HeaderText="Codigo del docente" ReadOnly="True" SortExpression="doccodigo" />
                            <asp:BoundField DataField="curnombre1" HeaderText="Nombre del curso" SortExpression="curnombre1" />
                            <asp:BoundField DataField="curintensidadh" HeaderText="Intensidad horaria del curso" SortExpression="curintensidadh" />
                            <asp:BoundField DataField="Docente" HeaderText="Docente" ReadOnly="True" SortExpression="Docente" />
                            <asp:BoundField DataField="usucodigo" HeaderText="Codigo de usuario" SortExpression="usucodigo" />
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT * FROM [InsertDocCur] ORDER BY [doccodigo], [Docente]"></asp:SqlDataSource>
                </div>
            </div>
            <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style3">
                <div class="auto-style5">
                    <table class="auto-style6">
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Docente:</td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Docente" DataValueField="doccodigo" Width="214px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [doccodigo], [Docente] FROM [qrycombo] ORDER BY [Docente]"></asp:SqlDataSource>
                            </td>
                            <td class="auto-style11">
                                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#33CCFF" BorderColor="#33CCFF" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton1_Click">Insertar</asp:LinkButton>
                            </td>
                            <td class="auto-style9"><strong>
                                <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Italic="True" Width="330px"></asp:Label>
                                </strong></td>
                            <td class="auto-style13">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style11">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Curso:</td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="curnombre1" DataValueField="curcodigo" Height="19px" Width="212px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [curcodigo], [curnombre1] FROM [tblcursos] ORDER BY [curnombre1]"></asp:SqlDataSource>
                            </td>
                            <td class="auto-style11">
                                <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#66FF33" BorderColor="#99FF66" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" Width="56px" OnClick="LinkButton2_Click">Buscar</asp:LinkButton>
                                <asp:Button ID="Button2" runat="server" BackColor="Yellow" BorderColor="#FFFF99" BorderStyle="Outset" CssClass="auto-style17" Font-Bold="True" ForeColor="Black" OnClick="Button2_Click" Text="Contar materias" Width="131px" />
                            </td>
                            <td class="auto-style9">
                                <asp:LinkButton ID="LinkButton3" runat="server" BackColor="Red" BorderColor="#FF3300" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" Width="63px" OnClick="LinkButton3_Click">Eliminar</asp:LinkButton>
                            </td>
                            <td class="auto-style13">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
