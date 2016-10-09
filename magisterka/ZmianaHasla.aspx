<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ZmianaHasla.aspx.cs" Inherits="magisterka.ZmianaHasla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="left">
    <table>
        <tr>
            <td>
                <p>EDYCJA DANYCH</p>
            </td>
        </tr>
        <tr>
            <td>
        <asp:Label runat="server" Width="150px">NOWE HASŁO</asp:Label>
            </td>
            <td>
        <asp:TextBox runat="server" ID="TextBoxHaslo" Autopostback="false" TextMode="Password" />
        <asp:RequiredFieldValidator ID ="validHaslo" runat ="server" ControlToValidate ="TextBoxHaslo" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td>
        <asp:Label runat="server" Width="150px">POWTÓRZ NOWE HASŁO</asp:Label>
            </td>
            <td>
        <asp:TextBox runat="server" ID="TextBoxPotwHasla" TextMode="Password" />
        <asp:RequiredFieldValidator ID ="validHaslo2" runat ="server" ControlToValidate ="TextBoxPotwHasla" ErrorMessage ="Pole jest obowiązkowe. " Display ="Static" ForeColor="Red"/>
                <br />
        <asp:CompareValidator id ="validHaslo2Haslo" runat ="server" ControlToValidate ="TextBoxHaslo" ControlToCompare ="TextBoxPotwHasla" Operator ="Equal" ErrorMessage ="Hasła nie są takie same." Display ="Static" ForeColor="Red"/>
     
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Zmien" runat="server" Text="Zapisz zmiany" OnClick="Zmien_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
