
<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="WybranaZmienna.aspx.cs" Inherits="magisterka.WybranaZmienna" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="id_slownika_zmiennych" DataSourceID="SqlDataSource2" ForeColor="#333333">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#EFF3FB" />
    <ItemTemplate>
        <b>numer:</b>
        <asp:Label ID="id_slownika_zmiennychLabel" runat="server" Text='<%# Eval("id_slownika_zmiennych") %>' />
        <br />
        <b>nazwa:</b>
        <asp:Label ID="nazwa_zmiennejLabel" runat="server" Text='<%# Eval("nazwa_zmiennej") %>' />
        <br />
        <b>jednostka:</b>
        <asp:Label ID="jednostka_zmiennejLabel" runat="server" Text='<%# Eval("jednostka_zmiennej") %>' />
        <br />
        <b>numer projektu:</b>
        <asp:Label ID="id_projektLabel" runat="server" Text='<%# Eval("id_projekt") %>' />
        <br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" SelectCommand="SELECT [id_slownika_zmiennych], [nazwa_zmiennej], [jednostka_zmiennej], [id_projekt] FROM [SLOWNIK_ZMIENNA] WHERE ([id_slownika_zmiennych] = @id_slownika_zmiennych)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="-1" Name="id_slownika_zmiennych" SessionField="id_zmiennej" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
