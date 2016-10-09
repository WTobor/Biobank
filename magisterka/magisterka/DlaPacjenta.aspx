<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="DlaPacjenta.aspx.cs" Inherits="magisterka.DlaPacjenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="left">
    <asp:Label ID="WybranyProgramLabel" Text="" runat="server" />
    <br />
    <asp:Label ID="WybranyPacjentLabel" Text="" runat="server" />
    <br>
    <br>
    <asp:Button ID="Probki" runat="server" OnClick="Probki_Click" Text="Próbki" Width="150px" />
    <asp:Button ID="Wyniki" runat="server" OnClick="Wyniki_Click" Text="Wyniki" Width="150px" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
