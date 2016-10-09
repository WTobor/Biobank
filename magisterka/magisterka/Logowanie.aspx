<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="Logowanie.aspx.cs" Inherits="magisterka.Logowanie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 59px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Label ID="LabelBrakDostepu" Text="Wymagany zalogowany użytkownik" runat="server" Visible="false" ForeColor="Red"/>
    <br />
    <asp:Label ID="LabelWylogowane" runat="server" Text="Poprawnie wylogowano" ForeColor="Green" Width="300px" Visible="false"></asp:Label> 
    <br />
    <asp:Label ID="LabelRejestracja" runat="server" ForeColor="Green" Visible="false"></asp:Label>   
    <table>
        <tr>
            <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="Login"></asp:Label></td>
            <td><asp:Textbox ID="LoginTextBox" runat="server" Width="200px"></asp:Textbox></td>
        </tr>
        <tr>
            <td class="auto-style1"><asp:Label ID="Label5" runat="server" Text="Hasło"></asp:Label></td>
            <td><asp:Textbox ID="HasloTextBox" runat="server" Width="200px" TextMode="Password"></asp:Textbox></td>
        </tr>
        <tr>
            <td>

            </td>
            <td>
               <asp:Label ID="LabelNiepoprawneLogowanie" runat="server" Text="Niepoprawne parametry logowania" ForeColor="Red" Width="300px" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="LabelWyslanoMaila" runat="server" Text="Wysłano maila z nowym hasłem" ForeColor="Green" Width="300px" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td></td>
            <td> 
            <asp:LinkButton ID="ZapomnHasla" runat="server" OnClick="ZapomnHasla_Click">Zapomniałeś hasła?</asp:LinkButton>
            </td>
        </tr>
        </table>   
    <asp:Button ID="Zaloguj" runat="server" OnClick="ZalogujKlik" Text="Zaloguj" Width="150px" />
    <asp:Button ID="Button1" runat="server" OnClick="ZarejestrujKlik" Text="Zarejestruj" Width="150px" />
</asp:Content>
