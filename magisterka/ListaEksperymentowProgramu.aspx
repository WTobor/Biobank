<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ListaEksperymentowProgramu.aspx.cs" Inherits="magisterka.ListaEksperymentowProgramu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="WybranyProgramLabel" Text="" runat="server" CssClass="left" />
    <br />
    <div class="left">
        <p>EKSPERYMENTY</p>
    <table>
        <tr>
            <td>
                <asp:Button ID="DodajEksperyment" runat="server" OnClick="DodajEksperyment_Click" Text="Dodaj eksperyment" Width="150px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="PoprAktual" runat="server" ForeColor="Green"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridViewEksperymenty" runat="server" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateEditButton="True"
    CellPadding="10" DataSourceID="SqlDataSource2" ForeColor="#333333" DataKeyNames="id_eksperymentu"
    CaptionAlign="Top" HorizontalAlign="Center" EmptyDataText="Brak danych do wyświetlenia" EnableSortingAndPagingCallbacks="True" Width="500px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
            <asp:BoundField DataField="id_eksperymentu" HeaderText="id_eksperymentu" SortExpression="id_eksperymentu" Visible="False" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="data" HeaderText="data" SortExpression="data" DataFormatString="{0:d}" ReadOnly="True" ItemStyle-Width="30" ItemStyle-Wrap="False" />
            <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" ItemStyle-Width="30" />
            <asp:BoundField DataField="wynik" HeaderText="wynik" SortExpression="wynik" ItemStyle-Width="30"/>
            <asp:BoundField DataField="uwagi" HeaderText="uwagi" SortExpression="uwagi" ItemStyle-Width="30"/>
            <asp:BoundField DataField="nazwa_metody" HeaderText="metoda" ReadOnly="True" SortExpression="nazwa_metody" ItemStyle-Width="30" />
    </Columns>
    <EditRowStyle CssClass="GridViewEditRow" BackColor="#2461BF" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Height="20px"/>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Justify" VerticalAlign="Middle" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
        SelectCommand="SELECT EKSPERYMENT.id_eksperymentu, data, opis, wynik, EKSPERYMENT.uwagi, SLOWNIK_METOD.nazwa_metody FROM EKSPERYMENT INNER JOIN EKSP_METODA ON EKSPERYMENT.id_eksperymentu = EKSP_METODA.id_eksperymentu INNER JOIN SLOWNIK_METOD ON EKSP_METODA.id_slownika_metod = SLOWNIK_METOD.id_slownika_metod WHERE (id_projektu = @id_programu)"
        UpdateCommand="UPDATE EKSPERYMENT SET opis = @opis, wynik = @wynik, uwagi = @uwagi WHERE (id_eksperymentu = @id_eksperymentu);"
        OnUpdated="Aktualizacja">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="-1" Name="id_programu" SessionField="id_programu" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="data" />
            <asp:Parameter Name="opis" />
            <asp:Parameter Name="wynik" />
            <asp:Parameter Name="uwagi" />
            <asp:Parameter Name="id_eksperymentu" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
