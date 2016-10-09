<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ListaBadan.aspx.cs" Inherits="magisterka.ListaBadan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style type="text/css">
    label { display: inline-block; }
    label { margin-left : 10px; }
    </style>
    <asp:CheckBoxList ID="CheckBoxListWyniki" runat="server" BorderStyle="None" EnableTheming="True" Width="300px" RepeatDirection="Vertical" 
        RepeatLayout="Flow" TextAlign="Right" >
    </asp:CheckBoxList>
    <br />
    <asp:Button ID="ListaWynikow" runat="server" Height="40px" OnClick="ListaWynikow_Click" Text="Lista wyników" />
</asp:Content>
