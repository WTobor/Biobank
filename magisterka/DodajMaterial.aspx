<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="DodajMaterial.aspx.cs" Inherits="magisterka.DodajMaterial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <table>
    <tr>
        <td>
        <asp:Label ID="Label1" runat="server" Text="nazwa materiału*"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxNazwaMaterialu" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID ="validNazwa" runat ="server" ControlToValidate ="TextBoxNazwaMaterialu" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red" Width="150px"/>
        <br />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <span style="float:right"><asp:Label runat="server" ID="Pole_obow" Font-Italic="True" Font-Size="Smaller">* - pole obowiązkowe</asp:Label></span>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Button ID="DodawanieMaterialu" runat="server" OnClick="DodajKlik" Text="Dodaj" Width="100px" />
        </td>
    </tr>
    </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
