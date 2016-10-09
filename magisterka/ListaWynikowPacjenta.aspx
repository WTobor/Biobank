<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ListaWynikowPacjenta.aspx.cs" Inherits="magisterka.ListaWynikow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="WybranyProgramLabel" Text="" runat="server" CssClass="left" />
                <br />
                <asp:Label ID="WybranyPacjentLabel" Text="" runat="server" CssClass="left" />
                <br />
                <br />
                <asp:LinkButton ID="WrocDoPacjenta" Text="Wróć do pacjenta" runat="server" CssClass="left" OnClick="WrocDoPacjenta_Click" />
                <br />
                <asp:LinkButton ID="WrocDoPacjentow" Text="Wróć do listy pacjentów" runat="server" CssClass="left" OnClick="WrocDoPacjentow_Click" />
                <br />
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
                <asp:DropDownList ID="DropDownListProbki" runat="server" Width="150px" DataSourceID="SqlDataSource2" DataTextField="data" DataValueField="id_probki" AutoPostBack="True" OnSelectedIndexChanged="DropDownListProbki_SelectedIndexChanged">
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
    <asp:GridView ID="GridViewWyniki" runat="server" Width="650px" CellPadding="10" ForeColor="#333333"
         HorizontalAlign="Center" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Brak danych do wyświetlenia" AllowSorting="True" DataKeyNames ="id_probki">
    <Columns>
        <asp:BoundField DataField="nazwa_zmiennej" HeaderText="zmienna" SortExpression="nazwa_zmiennej" HeaderStyle-Wrap="False"/>
        <%--edycja--%>
        <asp:TemplateField HeaderText="wartość">
            <ItemTemplate>
                <asp:TextBox ID="txtwartosc" runat="server" Text='<%# Eval("wartosc") %>' Width="100" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="data" SortExpression="data">
            <ItemTemplate>
                <asp:Calendar ID="CalendarWynik" runat="server"  Font-Size="Smaller" SelectedDate='<%# Bind("data") %>' VisibleDate='<%# Eval("data") %>'>
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black"></TodayDayStyle>
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField Visible=false>
            <ItemTemplate>
                <asp:Label ID="id_probki" runat="server" Text='<%# Eval("id_probki") %>' Width="70" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label ID="blad" runat="server" Text="" Width="70" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <EditRowStyle BackColor="#2461BF" HorizontalAlign="Center"/>
    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
        SelectCommand="SELECT nazwa_zmiennej, wartosc, ISNULL(W.data, GETDATE()) AS data, W.id_probki FROM SLOWNIK_ZMIENNA 
LEFT JOIN (SELECT WYNIK.wartosc, WYNIK.data, WYNIK.id_slownik_zmiennej, WYNIK.id_probki FROM WYNIK JOIN PROBKA ON PROBKA.id_probki = WYNIK.id_probki AND PROBKA.id_projektu=@id_programu JOIN PACJ_PROB ON PACJ_PROB.id_probki=WYNIK.id_probki AND PACJ_PROB.id_pacjent=@id_pacjent) W ON SLOWNIK_ZMIENNA.id_slownika_zmiennych=W.id_slownik_zmiennej WHERE SLOWNIK_ZMIENNA.id_projektu=@id_programu;"
         >
        <SelectParameters>
            <asp:SessionParameter DefaultValue="-1" Name="id_programu" SessionField="id_programu" />
            <asp:SessionParameter DefaultValue="-1" Name="id_pacjent" SessionField="id_pacjent" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Aktualizuj" runat="server" OnClick="Aktualizuj_Click" Text="Aktualizuj" Width="150px" CssClass="left" />
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
</asp:Content>