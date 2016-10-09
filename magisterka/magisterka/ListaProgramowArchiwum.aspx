<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ListaProgramowArchiwum.aspx.cs" Inherits="magisterka.ListaProgramowArchiwum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="left">
    <table>
        <tr>
            <td>
                <p>ARCHIWUM</p>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="PoprAktual" runat="server" ForeColor="Green"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridViewProgramyAut" runat="server" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateSelectButton="True"
                CellPadding="10" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                OnSelectedIndexChanged="GridViewProgramyAut_SelectedIndexChanged" CaptionAlign="Top" HorizontalAlign="Center" EmptyDataText="Brak danych do wyświetlenia" DataKeyNames="id_projektu" Caption="PROGRAMY AUTORSKIE">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id_projektu" HeaderText="id_projektu" SortExpression="id_projektu" InsertVisible="False" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="nazwa_projektu" HeaderText="nazwa" SortExpression="nazwa_projektu" NullDisplayText="--" />
                    <asp:BoundField DataField="streszczenie" HeaderText="streszczenie" SortExpression="streszczenie" NullDisplayText="--" />
                    <asp:BoundField DataField="id_Admin" HeaderText="id_Admin" SortExpression="id_Admin" Visible="False" />
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
                <%--DeleteCommand - najpierw trzeba usunąć z wszystkich poprzednich tabel --%>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
                    SelectCommand="SELECT [id_projektu], [nazwa_projektu], [streszczenie], [id_Admin] FROM [PROJEKT] WHERE ([id_Admin] = @id_uzytk) AND status_archiwum = 'True'">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="-1" Name="id_uzytk" SessionField="id_uzytk" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
                <td>
                <asp:GridView ID="GridViewProgramyKoop" runat="server" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateSelectButton="True"
                CellPadding="10" DataSourceID="SqlDataSource3" ForeColor="#333333" 
                OnSelectedIndexChanged="GridViewProgramyKoop_SelectedIndexChanged" CaptionAlign="Top" HorizontalAlign="Center" EmptyDataText="Brak danych do wyświetlenia" DataKeyNames="id_projektu" PagerSettings-Position="Top" Caption="PROGRAMY KOOPERATORSKIE ">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id_projektu" HeaderText="id_projektu" SortExpression="id_projektu" InsertVisible="False" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="nazwa_projektu" HeaderText="nazwa" SortExpression="nazwa_projektu" NullDisplayText="--" />
                    <asp:BoundField DataField="streszczenie" HeaderText="streszczenie" SortExpression="streszczenie" NullDisplayText="--" />
                    <asp:BoundField DataField="id_Admin" HeaderText="id_Admin" SortExpression="id_Admin" Visible="False" />
                    <asp:BoundField DataField="login" HeaderText="Admin" SortExpression="login" NullDisplayText="--" />
                </Columns>
                <EditRowStyle CssClass="GridViewEditRow" BackColor="#2461BF" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Height="40px" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" BorderColor="Yellow" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Justify" VerticalAlign="Middle" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Justify" VerticalAlign="Middle" />
                <PagerSettings Position="Top"></PagerSettings>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
                    SelectCommand="SELECT PROJEKT.id_projektu, [nazwa_projektu],[streszczenie], id_Admin, [dbo].[UZYTK].login FROM [dbo].[PROJEKT] JOIN [dbo].[UZYTK] ON PROJEKT.id_Admin = [dbo].[UZYTK].id_uzytk JOIN [UZYTK_PROJEKT] ON PROJEKT.id_projektu = UZYTK_PROJEKT.id_projektu WHERE (UZYTK_PROJEKT.id_uzytk = @id_uzytk) AND status_archiwum = 'True'">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="-1" Name="id_uzytk" SessionField="id_uzytk" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
