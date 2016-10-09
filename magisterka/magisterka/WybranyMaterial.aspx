<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="WybranyMaterial.aspx.cs" Inherits="magisterka.WybranyMaterial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="id_slownika_materialow" DataSourceID="SqlDataSource2" ForeColor="#333333">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#EFF3FB" />
    <ItemTemplate>
        <b>numer:</b>
        <asp:Label ID="id_slownika_materialowLabel" runat="server" Text='<%# Eval("id_slownika_materialow") %>' />
        <br />
        <b>nazwa:</b>
        <asp:Label ID="nazwa_materialuLabel" runat="server" Text='<%# Eval("nazwa_materialu") %>' />
        <br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" SelectCommand="SELECT [id_slownika_materialow], [nazwa_materialu] FROM [SLOWNIK_MATERIALOW] WHERE ([id_slownika_materialow] = @id_slownika_materialow)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="-1" Name="id_slownika_materialow" SessionField="id_materialu" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
