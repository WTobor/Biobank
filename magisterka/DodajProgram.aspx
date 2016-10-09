<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="DodajProgram.aspx.cs" Inherits="magisterka.DodajProgram" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 131px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
     <table>
     <tr>
        <td class="auto-style1">
        <asp:Label ID="Label0" runat="server" Text="akronim programu*"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxAkronim" runat="server" Width="200px"></asp:TextBox>
            <br />
        <asp:RequiredFieldValidator ID ="validAkronim" runat ="server" ControlToValidate ="TextBoxAkronim" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red"/>
        <br />
        <asp:RegularExpressionValidator id ="poprAkronim" runat ="server" ControlToValidate ="TextBoxAkronim" ValidationExpression ="^[A-ZĄĆĘŁŃÓŚŹŻa-ząćęłńóśźż .]{1,10}$" ErrorMessage ="Niewłaściwa wartość pola." display ="dynamic" ForeColor="Red" />
        <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
        <asp:Label ID="Label1" runat="server" Text="nazwa programu*"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxNazwaProgramu" runat="server" Width="200px"></asp:TextBox>
            <br />
        <asp:RequiredFieldValidator ID ="validNazwaProg" runat ="server" ControlToValidate ="TextBoxNazwaProgramu" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red"/>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
        <asp:Label ID="Label2" runat="server" Text="streszczenie"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxStreszczenieProgramu" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
        <asp:Label ID="Label3" runat="server" Text="cel naukowy"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxCelNauk" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
        <asp:Label ID="Label4" runat="server" Text="metody"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxMetody" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
        <asp:Label ID="Label5" runat="server" Text="efekt"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxEfekt" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
        <asp:Label ID="Label6" runat="server" Text="efekt nowatorski"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxEfektNowat" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
        <asp:Label ID="Label7" runat="server" Text="znaczenie"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxZnaczenie" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
        <asp:Label ID="Label8" runat="server" Text="zespół"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxZespol" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
        <asp:Label ID="Label9" runat="server" Text="uwagi"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxUwagi" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td>
            <span style="float:right"><asp:Label runat="server" ID="Pole_obow" Font-Italic="True" Font-Size="Smaller">* - pole obowiązkowe</asp:Label></span>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
        <asp:Button ID="DodawanieProgramu" runat="server" OnClick="DodajKlik" Text="Dodaj" Width="100px" />
        </td>
    </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
