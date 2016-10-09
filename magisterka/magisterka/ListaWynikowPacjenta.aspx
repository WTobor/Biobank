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
         HorizontalAlign="Center" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="Brak danych do wyświetlenia" AllowSorting="True" >
    <Columns>
        <asp:BoundField DataField="nazwa_zmiennej" HeaderText="nazwa zmiennej" SortExpression="nazwa_zmiennej" HeaderStyle-Wrap="False" >    
<HeaderStyle Wrap="False"></HeaderStyle>
        </asp:BoundField>
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
    <%--ISNULL(data, GETDATE()) - jeśli data jest NULLEM, to zamienia automatycznie na datę dzisiejszą (ponieważ nie można wypełnić Calendar NULLem)--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
        SelectCommand="SELECT nazwa_zmiennej, wartosc, ISNULL(WYNIK.data, GETDATE()) AS data FROM WYNIK RIGHT JOIN SLOWNIK_ZMIENNA ON SLOWNIK_ZMIENNA.id_slownika_zmiennych=WYNIK.id_slownik_zmiennej LEFT JOIN PROBKA ON PROBKA.id_probki = WYNIK.id_probki AND PROBKA.id_projektu=@id_programu LEFT JOIN PACJ_PROB ON PACJ_PROB.id_probki=WYNIK.id_probki LEFT JOIN PACJENT ON PACJENT.id_pacjent=PACJ_PROB.id_pacjent AND PACJENT.id_pacjent=@id_pacjent WHERE SLOWNIK_ZMIENNA.id_projektu=@id_programu"
         >
        <SelectParameters>
            <asp:SessionParameter DefaultValue="-1" Name="id_pacjent" SessionField="id_pacjent" />
            <asp:SessionParameter DefaultValue="-1" Name="id_programu" SessionField="id_programu" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="nazwa_zmiennej" />
            <asp:Parameter Name="wartosc" />
            <asp:Parameter Name="id_wynik" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Aktualizuj" runat="server" OnClick="Aktualizuj_Click" Text="Aktualizuj" Width="150px" CssClass="left" />
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
</asp:Content>