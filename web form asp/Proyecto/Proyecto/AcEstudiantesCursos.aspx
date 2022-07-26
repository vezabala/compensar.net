<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="AcEstudiantesCursos.aspx.cs" Inherits="Proyecto.AcEstudiantesCursos" %>
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
             margin-left: 53px;
             color: #0000FF;
         }
         .auto-style5 {
             width: 1375px;
             height: 449px;
             margin-left: 31px;
             margin-top: 20px;
         }
         .auto-style6 {
             text-align: center;
         }
         .auto-style7 {
             width: 100%;
         }
         .auto-style9 {
             width: 23px;
         }
         .auto-style10 {
             width: 74px;
         }
         .auto-style11 {
             width: 23px;
             height: 23px;
         }
         .auto-style12 {
             width: 74px;
             height: 23px;
         }
         .auto-style13 {
             height: 23px;
         }
         .auto-style14 {
             width: 248px;
         }
         .auto-style15 {
             height: 23px;
             width: 248px;
         }
         .auto-style16 {
             width: 80px;
         }
         .auto-style17 {
             height: 23px;
             width: 80px;
         }
         .auto-style18 {
             width: 253px;
         }
         .auto-style19 {
             height: 23px;
             width: 253px;
         }
         .auto-style20 {
        width: 585px;
    }
         .auto-style21 {
             height: 23px;
             width: 585px;
         }
         .auto-style22 {
             font-size: large;
             color: #800000;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">

        <div style="height: 756px; width: 1481px; margin-left: 17px; margin-top: 17px">
            <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style1">
                <h1 class="auto-style4"><strong>Agregar estudiantes a cursos</strong></h1>
            </div>
            <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style2">

                <div class="auto-style5">
                    <div class="auto-style6">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Codigo del curso,Codigo del estudiante" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="418px" Width="1370px">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Codigo del curso" HeaderText="Codigo del curso" ReadOnly="True" SortExpression="Codigo del curso" />
                                <asp:BoundField DataField="Nombre del curso" HeaderText="Nombre del curso" SortExpression="Nombre del curso" />
                                <asp:BoundField DataField="Codigo del docente" HeaderText="Codigo del docente" SortExpression="Codigo del docente" />
                                <asp:BoundField DataField="Docente" HeaderText="Docente" ReadOnly="True" SortExpression="Docente" />
                                <asp:BoundField DataField="Codigo del estudiante" HeaderText="Codigo del estudiante" ReadOnly="True" SortExpression="Codigo del estudiante" />
                                <asp:BoundField DataField="Estudiante" HeaderText="Estudiante" ReadOnly="True" SortExpression="Estudiante" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT * FROM [qryCursoEstudiante] ORDER BY [Estudiante]"></asp:SqlDataSource>
                </div>

            </div>
            <div style="border-radius: 20px; border: solid 2px #999999; margin-left: 17px; margin-top: 17px" class="auto-style3">
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style20">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10"><strong>Curso:</strong></td>
                        <td class="auto-style14">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="curnombre1" DataValueField="curcodigo" Height="35px" Width="232px" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [curcodigo], [curnombre1] FROM [tblcursos]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style16"><strong>Estudiante:</strong></td>
                        <td class="auto-style18">
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="Estudiante" DataValueField="estcodigo" Height="23px" Width="239px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [estcodigo], [Estudiante] FROM [qryestudiantes]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style20"><strong>
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style22"></asp:Label>
                            </strong></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11"></td>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style15"></td>
                        <td class="auto-style17"></td>
                        <td class="auto-style19"></td>
                        <td class="auto-style21"></td>
                        <td class="auto-style13"></td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10"><strong>Docente:</strong></td>
                        <td class="auto-style14">
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Docente" DataValueField="doccodigo" Height="20px" Width="233px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [doccodigo], [Docente] FROM [qrycomboDocenteEstudiante] WHERE ([curcodigo] = @curcodigo)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="curcodigo" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style18">
                            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#0099FF" BorderColor="#00CCFF" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton1_Click">Insertar</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" BackColor="#99FF33" BorderColor="#99FF66" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton2_Click">Buscar</asp:LinkButton>
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" BackColor="Red" BorderColor="#FF3300" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton3_Click">Eliminar</asp:LinkButton>
                        </td>
                        <td class="auto-style20">
                            <asp:LinkButton ID="LinkButton4" runat="server" BackColor="Yellow" BorderColor="#FFFF66" BorderStyle="Outset" Font-Bold="True" Font-Overline="False" ForeColor="Black" OnClick="LinkButton4_Click">Contar materias</asp:LinkButton>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style20">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
       </div>
    </div>
</asp:Content>
