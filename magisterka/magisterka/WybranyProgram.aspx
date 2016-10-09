<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="WybranyProgram.aspx.cs" Inherits="magisterka.WybranyProgram" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <br />
    <asp:Label ID="WybranyProgramLabel" Text="" runat="server" CssClass="left" />
    <br /> 
    <br />
    <asp:Button ID="Uczestnicy" runat="server" OnClick="Uczestnicy_Click" Text="Uczestnicy" Width="200px" />
    <br />
    <asp:Button ID="Eksperymenty" runat="server" OnClick="Eksperymenty_Click" Text="Eksperymenty" Width="200px" />
    <br />     
    <asp:Button ID="Literatura" runat="server" OnClick="Literatura_Click" Text="Literatura" Width="200px"/>
    <br />
    <asp:Button ID="Grupy" runat="server" OnClick="Grupy_Click" Text="Grupy" Width="200px" />
    <br />
    <asp:Button ID="Pacjenci" runat="server" OnClick="Pacjenci_Click" Text="Pacjenci" Width="200px" />
    <br />
    <asp:Button ID="Raport" runat="server" OnClick="Raport_Click" Text="Raport" Width="200px" />
    <br />
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
