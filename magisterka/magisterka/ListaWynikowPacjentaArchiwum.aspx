<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ListaWynikowPacjentaArchiwum.aspx.cs" Inherits="magisterka.ListaWynikowPacjentaArchiwum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="WybranyProgramLabel" Text="" runat="server" CssClass="left" />
                <br />
                <asp:Label ID="WybranyPacjentLabel" Text="" runat="server" CssClass="left" />
            </td>
        </tr>
        <tr>
            <td>
                <p>WYNIKI</p>
            </td>
        </tr>
    </table>

    <asp:GridView ID="GridViewWynikiArchiwum" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Width="450px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="nazwa_zmiennej" HeaderText="nazwa zmiennej" SortExpression="nazwa_zmiennej" />
            <asp:BoundField DataField="wartosc" HeaderText="wartość" NullDisplayText="--" SortExpression="wartosc" />
            <asp:BoundField DataField="data" HeaderText="data" NullDisplayText="--" SortExpression="data" DataFormatString="{0:d}" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" SelectCommand="SELECT nazwa_zmiennej, wartosc, ISNULL(WYNIK.data, GETDATE()) AS data FROM WYNIK RIGHT JOIN SLOWNIK_ZMIENNA ON SLOWNIK_ZMIENNA.id_slownika_zmiennych=WYNIK.id_slownik_zmiennej LEFT JOIN PROBKA ON PROBKA.id_probki = WYNIK.id_probki AND PROBKA.id_projektu=@id_programu LEFT JOIN PACJ_PROB ON PACJ_PROB.id_probki=WYNIK.id_probki LEFT JOIN PACJENT ON PACJENT.id_pacjent=PACJ_PROB.id_pacjent AND PACJENT.id_pacjent=@id_pacjent">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="-1" Name="id_pacjent" SessionField="id_pacjent" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
