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
        <tr>
            <td>
                Dodaj wartości na podstawie próbki:
            </td>
            <td>
                <asp:DropDownList ID="DropDownListProbki" runat="server" Width="150px" DataSourceID="SqlDataSource2" DataTextField="data" DataValueField="id_probki" AutoPostBack="True">
				</asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" SelectCommand="SELECT PROBKA.[id_probki], ([numer] + ', ' + [nazwa]) AS data FROM [dbo].[PROBKA] JOIN PACJ_PROB ON PACJ_PROB.id_probki=PROBKA.id_probki WHERE id_pacjent=@id_pacjent AND id_projektu=@id_programu order by id_probki asc">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="-1" Name="id_pacjent" SessionField="id_pacjent" />
                        <asp:SessionParameter DefaultValue="-1" Name="id_programu" SessionField="id_programu" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="BrakProbek" runat="server" ForeColor="Red" Visible="true"></asp:Label>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" SelectCommand="SELECT nazwa_zmiennej, wartosc, ISNULL(W.data, GETDATE()) AS data, W.id_probki FROM SLOWNIK_ZMIENNA 
LEFT JOIN (SELECT WYNIK.wartosc, WYNIK.data, WYNIK.id_slownik_zmiennej, WYNIK.id_probki FROM WYNIK JOIN PROBKA ON PROBKA.id_probki = WYNIK.id_probki AND PROBKA.id_projektu=@id_programu JOIN PACJ_PROB ON PACJ_PROB.id_probki=WYNIK.id_probki AND PACJ_PROB.id_pacjent=@id_pacjent) W ON SLOWNIK_ZMIENNA.id_slownika_zmiennych=W.id_slownik_zmiennej WHERE SLOWNIK_ZMIENNA.id_projektu=@id_programu;">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="-1" Name="id_programu" SessionField="id_programu" />
            <asp:SessionParameter DefaultValue="-1" Name="id_pacjent" SessionField="id_pacjent" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
