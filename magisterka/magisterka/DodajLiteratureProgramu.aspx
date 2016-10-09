<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="DodajLiteratureProgramu.aspx.cs" Inherits="magisterka.DodajLiteratureProgramu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="left">
    <asp:Label ID="WybranyProgramLabel" Text="" runat="server" />
    <br />
    <p>NOWA LITERATURA</p>
    </div>
    <br />
    <br />
    <br />
    
    <table style="vertical-align: baseline; text-align: left">
    <tr>
        <td>
        <asp:Label ID="Label1" runat="server" Text="autorzy*"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxAutorzy" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID ="validAutorzy" runat ="server" ControlToValidate ="TextBoxAutorzy" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red" Width="150px"/>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label2" runat="server" Text="tytuł*"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxTytul" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID ="validTytul" runat ="server" ControlToValidate ="TextBoxTytul" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red" Width="150px"/>
        <br />
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label3" runat="server" Text="czasopismo"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxCzasop" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label4" runat="server" Text="rok wydania"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownListLata" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label5" runat="server" Text="uwagi"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxUwagi" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label6" runat="server" Text="www"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxWww" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label7" runat="server" Text="treść"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxTresc" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
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
        <asp:Button ID="DodawanieLiteratury" runat="server" OnClick="DodajKlik" Text="Dodaj" Width="100px" />
        </td>
    </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
