<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAd.Master" AutoEventWireup="true" CodeBehind="AcGaleriaDocente.aspx.cs" Inherits="Proyecto.AcGaleriaDocente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 20px; border: solid 2px #999999; box-shadow: 2px 2px 5px #999999; height: 785px; width: 1526px">
        <div style="height: 756px; width: 1481px; margin-left: 17px; margin-top: 17px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="doccodigo" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="171px" Width="1010px" AllowPaging="True">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="usucodigo" HeaderText="Codigo Usuario" SortExpression="usucodigo" />
                    <asp:BoundField DataField="doccodigo" HeaderText="Codigo docente" ReadOnly="True" SortExpression="doccodigo" />
                    <asp:BoundField DataField="docapellido1" HeaderText="Apellido 1 Docente" SortExpression="docapellido1" />
                    <asp:BoundField DataField="docapellido2" HeaderText="Apellido 2 Docente" SortExpression="docapellido2" />
                    <asp:BoundField DataField="docnombre1" HeaderText="Nombre 1 Docente" SortExpression="docnombre1" />
                    <asp:BoundField DataField="docnombre2" HeaderText="Nombre 2 Docente" SortExpression="docnombre2" />
                    <asp:BoundField DataField="imagen" HeaderText="imagen" SortExpression="imagen" />
                    <asp:BoundField DataField="archivo" HeaderText="archivo" SortExpression="archivo" />
                    <asp:TemplateField HeaderText="Foto">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("imagen") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imagen", "~/imagenes/{0}") %>' Width="40px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PDF">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("archivo", "~/archivos/{0}") %>' Text="Abrir Archivo"></asp:HyperLink>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoaspConnectionString %>" SelectCommand="SELECT [usucodigo], [doccodigo], [docapellido1], [docapellido2], [docnombre1], [docnombre2], [imagen], [archivo] FROM [tbldocentes] ORDER BY [docapellido1], [docapellido2], [docnombre1]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
