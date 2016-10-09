<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="DodajMetode.aspx.cs" Inherits="magisterka.DodajMetode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="WybranyProgramLabel" runat="server" CssClass="left" />
    <br />
    <div class="left">
    <p>NOWA METODA</p>
    <br />
    <table>
    <tr>
        <td>
        <asp:Label ID="LabelNazwaMetody" runat="server" Text="nazwa metody*"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxNazwaMetody" runat="server" Width="200px" ></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID ="validNazwaMetody" runat ="server" ControlToValidate ="TextBoxNazwaMetody" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red"/>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelSlowaKlucz" runat="server" Text="słowa kluczowe"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxSlowaKlucz" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelOpisMetody" runat="server" Text="opis metody"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxOpisMetody" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelUwagi" runat="server" Text="uwagi"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxUwagi" runat="server" Width="200px"></asp:TextBox>
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
        <asp:Button ID="Dodaj" runat="server" Text="Dodaj" Width="100px" OnClick="Dodaj_Click" />
        </td>
    </tr>
    </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
