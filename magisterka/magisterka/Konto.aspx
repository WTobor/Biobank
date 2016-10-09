<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="Konto.aspx.cs" Inherits="magisterka.Konto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
<div class="left">
    <p>TWOJE DANE </p>
    </div>
    <br />
    <br />
    <table class="table" style="vertical-align: baseline; text-align: left">
    <tr>
        <td>
            <asp:Label id="PoprAktual" runat="server" ForeColor="Green"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
    <asp:Label runat="server" Width="150px" >JEDNOSTKA</asp:Label>
        </td>
        <td>
    <asp:Label runat="server" ID="LabelJedn"/></td>
    </tr>
    <tr>
        <td>
    <asp:Label runat="server" Width="150px">IMIĘ</asp:Label>
        </td>
        <td>
    <asp:Label runat="server" ID="LabelImie"/>
        </td>
    </tr>
    <tr>
        <td>
    <asp:Label runat="server" Width="150px">NAZWISKO</asp:Label>
        </td>
        <td>
    <asp:Label runat="server" ID="LabelNazwisko"/>
        </td>
    </tr>
    <tr>
        <td>
    <asp:Label runat="server" Width="150px">EMAIL</asp:Label>
        </td>
        <td>
    <asp:Label runat="server" ID="LabelMail"/>
        </td>
    </tr>
    <tr>
        <td>
    <asp:Label runat="server" Width="150px">TELEFON</asp:Label>
        </td>
        <td>
    <asp:Label runat="server" ID="LabelTelefon"/>
        </td>
    </tr>
    </table>
    <asp:Button ID="ZmienDane" runat="server" Text="Zmień dane" OnClick="ZmienDane_Click" />
    <asp:Button ID="ZmienHaslo" runat="server" Text="Zmień hasło" OnClick="ZmienHaslo_Click" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
