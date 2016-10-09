<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="DodajUzytkProgramu.aspx.cs" Inherits="magisterka.DodajUzytkownikaProgramu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <table class="table" style="vertical-align: baseline; text-align: left">
    <tr>
        <td>
            <asp:Label ID="WybranyProgramLabel" runat="server" CssClass="left" />
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelImie" runat="server" Text="użytkownik*"></asp:Label>
        </td>
        <td>
        <asp:DropDownList runat="server" ID="DropDownListUzytk" Width="300px" />
        </td>
    </tr>
        <%--gdyby można było decydować o uprawnieniach, to można by tu je zmieniać--%>
    <%--<tr>
        <td>
        <asp:Label ID="LabelUprawnienia" runat="server" Text="uprawnienia*"></asp:Label>
        </td>
        <td>
        <asp:DropDownList ID="DropDownListUprawnienia" runat="server" DataSourceID="SqlDataSource2" DataTextField="Tekst" DataValueField="id_uprawnienia" Width="150px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
        SelectCommand="SELECT id_uprawnienia, nazwa_uprawnienia AS Tekst FROM UPRAWNIENIA WHERE id_uprawnienia != 1"></asp:SqlDataSource>    
        </td>
    </tr>--%>
    <tr>
        <td>
            <asp:Label runat="server" ID="BrakDanych" Text ="Brak użytkowników" ForeColor="Red" Visible ="false"></asp:Label>
        </td>
        <td>
            <span style="float:right"><asp:Label runat="server" ID="Pole_obow" Font-Italic="True" Font-Size="Smaller">* - pole obowiązkowe</asp:Label></span>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Button ID="DodawanieUzytkownika" runat="server" OnClick="DodajKlik" Text="Dodaj" Width="100px" />
        </td>
    </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
