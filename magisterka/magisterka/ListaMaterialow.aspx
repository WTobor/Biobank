<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ListaMaterialow.aspx.cs" Inherits="magisterka.ListaMaterialow1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="left">
    <table>
        <tr>
            <td>
                <asp:Button ID="DodajMaterial" runat="server" OnClick="DodajMaterial_Click" Text="Dodaj materiał" Width="150px" CssClass="left" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="PoprAktual" runat="server" ForeColor="Green"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridViewMaterialy" runat="server" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateEditButton="True"
                CellPadding="10" DataKeyNames="id_slownika_materialow" DataSourceID="SqlDataSource2" ForeColor="#333333"
                OnSelectedIndexChanged="GridViewMaterialy_SelectedIndexChanged" CaptionAlign="Bottom" HorizontalAlign="Center" EmptyDataText="Brak danych do wyświetlenia">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id_slownika_materialow" HeaderText="id_slownika_materialow" InsertVisible="False" ReadOnly="True" SortExpression="id_slownika_materialow" Visible="False" />
                    <asp:BoundField DataField="nazwa_materialu" HeaderText="nazwa materiału" SortExpression="nazwa_materialu" NullDisplayText="--" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Height="40px" />
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
                    SelectCommand="SELECT [id_slownika_materialow], [nazwa_materialu] FROM [SLOWNIK_MATERIALOW]"
                    DeleteCommand="DELETE FROM [slownik_materialow] WHERE [id_slownika_materialow] = @id_slownika_materialow"
                    UpdateCommand="UPDATE[slownik_materialow] SET [nazwa_materialu] = @nazwa_materialu WHERE [id_slownika_materialow] = @id_slownika_materialow"
                    OnDeleted="Aktualizacja" OnUpdated="Aktualizacja">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table> 
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
