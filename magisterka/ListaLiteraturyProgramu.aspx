<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ListaLiteraturyProgramu.aspx.cs" Inherits="magisterka.ListaLiteraturyProgramu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <br />
    <asp:Label ID="WybranyProgramLabel" Text="" runat="server" CssClass="left" />
    <br />
    <div class="left">
    <p>LITERATURA</p>
    <table>
        <tr>
            <td>
                <asp:Button ID="DodajLiterature" runat="server" Text="Dodaj literaturę" OnClick="DodajLiterature_Click" Width="120"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="PoprAktual" runat="server" ForeColor="Green"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridViewLiteratura" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True"
         DataSourceID="SqlDataSource1" DataKeyNames="id_literatury" EmptyDataText="Brak danych do wyświetlenia"
        CaptionAlign="Top" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" Width="500px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id_literatury" HeaderText="id_literatury" InsertVisible="False" ReadOnly="True" 
                SortExpression="id_literatury" Visible="False"/>
            <asp:BoundField DataField="autorzy" HeaderText="autorzy" SortExpression="autorzy" NullDisplayText="--"/>
            <asp:BoundField DataField="tytul" HeaderText="tytuł" SortExpression="tytul" NullDisplayText="--" />
            <asp:BoundField DataField="czasopismo" HeaderText="czasopismo" SortExpression="czasopismo" NullDisplayText="--" />
            <asp:BoundField DataField="rok_wydania" HeaderText="rok wydania" SortExpression="rok_wydania" NullDisplayText="--" />
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
        SelectCommand="SELECT [id_literatury], [autorzy], [tytul], [czasopismo], [rok_wydania] FROM [LITERATURA] WHERE ([id_projektu] = @id_projektu)"
        UpdateCommand="UPDATE [LITERATURA] SET [autorzy] = @autorzy, [tytul] = @tytul, [czasopismo] = @czasopismo, [rok_wydania]=@rok_wydania WHERE ([id_literatury] = @id_literatury)"
        OnUpdated="Aktualizacja">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="-1" Name="id_projektu" SessionField="id_programu" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="autorzy" />
            <asp:Parameter Name="tytul" />
            <asp:Parameter Name="czasopismo" />
            <asp:Parameter Name="rok_wydania" />
            <asp:Parameter Name="id_literatury" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
