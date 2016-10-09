<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ListaPacjentowProgramu.aspx.cs" Inherits="magisterka.ListaPacjentowProgramu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">    
    <div class="left">
    <table>
        <tr>
            <td>
                <asp:Label ID="WybranyProgramLabel" runat="server" CssClass="left" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="DodajPacjenta" runat="server" OnClick="DodajPacjenta_Click" Text="Dodaj pacjenta" Width="150px" CssClass="left" />
            </td>
        </tr>
        <tr>
            <td>
                <p>Wyszukaj po:</p>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPesel" runat="server" Text="PESEL"></asp:Label>&nbsp;<asp:TextBox ID="TextBoxPesel" runat="server" Width="100px"></asp:TextBox>
                <asp:Label ID="lblImie" runat="server" Text="IMIĘ"></asp:Label>&nbsp;<asp:TextBox ID="TextBoxImie" runat="server" Width="100px"></asp:TextBox>
                <asp:Label ID="lblNazwisko" runat="server" Text="NAZWISKO"></asp:Label>&nbsp;<asp:TextBox ID="TextBoxNazwisko" runat="server" Width="100px"></asp:TextBox>
                <asp:Button ID="Szukaj" runat="server" Text="Szukaj" Width="100px" OnClick="Szukaj_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="PoprAktual" runat="server" ForeColor="Green"></asp:Label>
            </td>
        </tr>
    </table>
    <%--żeby móc update robić trzeba dać DataKeyNames= i tu wstawić klucz główny tabeli--%>
    <asp:GridView ID="GridViewPacjenci" runat="server" AutoGenerateColumns="False" 
        AutoGenerateSelectButton="True" AutoGenerateEditButton="True"
        OnRowEditing="GridViewPacjenci_RowEditing" OnRowUpdating="GridViewPacjenci_RowUpdating"
        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True" 
        EmptyDataText="Brak danych do wyświetlenia" DataKeyNames="id_pacjent" CaptionAlign="Top" HorizontalAlign="Center" 
        OnSelectedIndexChanged="GridViewPacjenci_SelectedIndexChanged" OnRowDeleting="GridViewPacjenci_RowDeleting" Width="500px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id_pacjent" HeaderText="id_pacjent" SortExpression="id_pacjent" InsertVisible="False" ReadOnly="True" Visible="False" />
            <asp:BoundField DataField="pesel" HeaderText="pesel" SortExpression="pesel" />
            <asp:BoundField DataField="imie" HeaderText="imię" SortExpression="imie" />
            <asp:BoundField DataField="nazwisko" HeaderText="nazwisko" SortExpression="nazwisko" />
            <asp:BoundField DataField="id_grupa" HeaderText="id_grupa" InsertVisible="False" ReadOnly="True" SortExpression="id_grupa" Visible="False" />
            <asp:BoundField DataField="nazwa_grupy" HeaderText="nazwa grupy" SortExpression="nazwa_grupy" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" CssClass="GridViewEditRow" Width="50" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle"/>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle"/>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle"/>
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#FFCCFF" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#FFFFCC" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
        SelectCommand="SELECT PACJENT.id_pacjent, PACJENT.pesel, PACJENT.imie, PACJENT.nazwisko, GRUPA.id_grupa, GRUPA.nazwa_grupy FROM PACJENT INNER JOIN PACJ_PROJ ON PACJ_PROJ.id_pacjent = PACJENT.id_pacjent INNER JOIN GRUPA_PROJ ON GRUPA_PROJ.id_grupa_proj = PACJ_PROJ.id_grupa_proj INNER JOIN GRUPA ON GRUPA.id_grupa = GRUPA_PROJ.id_grupa WHERE (PACJ_PROJ.id_projektu = @id_projektu)"
        UpdateCommand="UPDATE PACJENT SET pesel = @pesel, imie = @imie, nazwisko = @nazwisko WHERE (id_pacjent = @id_pacjent)" 
        OnUpdated="Aktualizacja">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="-1" Name="id_projektu" SessionField="id_programu" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="pesel" />
            <asp:SessionParameter DefaultValue="-1" Name="imie" SessionField="imie" />
            <asp:SessionParameter DefaultValue="-1" Name="nazwisko" SessionField="nazwisko" />
            <asp:SessionParameter DefaultValue="-1" Name="id_pacjent" SessionField="id_pacjent" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>
