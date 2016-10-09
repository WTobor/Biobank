<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ListaZmiennych.aspx.cs" Inherits="magisterka.ListaZmiennych" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="left">
    <table>
        <tr>
            <td>
                <asp:Button ID="DodajZmienna" runat="server" OnClick="DodajZmienna_Click" Text="Dodaj zmienną" Width="150px" CssClass="left" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="PoprAktual" runat="server" ForeColor="Green"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridViewZmienne" runat="server" AllowSorting="True" AutoGenerateColumns="False" 
                    AutoGenerateEditButton="True" CellPadding="10" DataSourceID="SqlDataSource2" ForeColor="#333333"
                    OnSelectedIndexChanged="GridViewZmienne_SelectedIndexChanged" CaptionAlign="Bottom" HorizontalAlign="Center" EmptyDataText="Brak danych do wyświetlenia" DataKeyNames="id_slownika_zmiennych">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id_slownika_zmiennych" HeaderText="id_slownika_zmiennych" SortExpression="id_slownika_zmiennych" InsertVisible="False" ReadOnly="True" Visible="False" />
                        <asp:BoundField DataField="nazwa_zmiennej" HeaderText="nazwa zmiennej" SortExpression="nazwa_zmiennej" />
                        <asp:BoundField DataField="akronim" HeaderText="akronim programu" ReadOnly="True" SortExpression="akronim" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" Height="40px" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
                    DeleteCommand="DELETE FROM [SLOWNIK_ZMIENNA] WHERE [id_slownika_zmiennych] = @id_slownika_zmiennych" 
                    SelectCommand="SELECT SLOWNIK_ZMIENNA.id_slownika_zmiennych, SLOWNIK_ZMIENNA.nazwa_zmiennej, PROJEKT.akronim FROM SLOWNIK_ZMIENNA LEFT OUTER JOIN PROJEKT ON PROJEKT.id_projektu = SLOWNIK_ZMIENNA.id_projektu WHERE (PROJEKT.id_projektu IN (SELECT id_projektu FROM UZYTK_PROJEKT WHERE (id_uzytk = @id_uzytk))) OR (PROJEKT.id_Admin = @id_uzytk)" 
                    UpdateCommand="UPDATE [SLOWNIK_ZMIENNA] SET [nazwa_zmiennej] = @nazwa_zmiennej WHERE [id_slownika_zmiennych] = @id_slownika_zmiennych"
                    OnDeleted="Aktualizacja" OnUpdated="Aktualizacja">
                    <DeleteParameters>
                        <asp:Parameter Name="id_slownika_zmiennych" Type="Int32" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="0" Name="id_uzytk" SessionField="id_uzytk" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nazwa_zmiennej" Type="String" />
                        <asp:Parameter Name="id_slownika_zmiennych" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
