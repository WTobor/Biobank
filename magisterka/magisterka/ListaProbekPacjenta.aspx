<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ListaProbekPacjenta.aspx.cs" Inherits="magisterka.ListaProbekProgramu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="left">
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
                <p>PRÓBKI</p>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="DodajProbke" runat="server" Text="Dodaj próbkę" OnClick="DodajProbke_Click" Width="110px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="PoprAktual" runat="server" ForeColor="Green"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridViewProbki" runat="server" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateEditButton="True"
    CellPadding="10" DataSourceID="SqlDataSource2" ForeColor="#333333" CaptionAlign="Top" 
    HorizontalAlign="Center" EmptyDataText="Brak danych do wyświetlenia" DataKeyNames="id_probki" Width="500px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
            <asp:BoundField DataField="id_probki" HeaderText="id_probki" SortExpression="id_probki" InsertVisible="False" ReadOnly="True" Visible="False" />
            <asp:BoundField DataField="numer" HeaderText="numer" SortExpression="numer" NullDisplayText="--" />
            <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" NullDisplayText="--" />
            <asp:BoundField DataField="data" HeaderText="data" SortExpression="data" DataFormatString="{0:d}" NullDisplayText="--" ReadOnly="True" />
    </Columns>
    <EditRowStyle CssClass="GridViewEditRow" BackColor="#2461BF" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Height="20px"/>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
        SelectCommand="SELECT PROBKA.[id_probki], [numer], [nazwa], [data] FROM [PROBKA] JOIN PACJ_PROB ON PROBKA.id_probki = PACJ_PROB.id_probki WHERE ([id_projektu] = @id_projektu) AND ([id_pacjent]=@id_pacjent)"
        UpdateCommand="UPDATE [PROBKA] SET [numer] = @numer, [nazwa] = @nazwa WHERE ([id_probki] = @id_probki)"
        OnUpdated="Aktualizacja">
    <SelectParameters>
    <asp:SessionParameter DefaultValue="-1" Name="id_projektu" SessionField="id_programu" Type="Int32" />
        <asp:SessionParameter DefaultValue="-1" Name="id_pacjent" SessionField="id_pacjent" />
    </SelectParameters>
    <UpdateParameters>
            <asp:Parameter Name="numer" />
            <asp:Parameter Name="nazwa" />
            <asp:Parameter Name="data" />
            <asp:Parameter Name="id_probki" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
