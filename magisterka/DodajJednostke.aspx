<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="DodajJednostke.aspx.cs" Inherits="magisterka.DodajJednostke" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <p>NOWA JEDNOSTKA</p>
    <br />
    <table>
    <tr>
        <td>
        <asp:Label ID="LabelJednNadrz" runat="server" Text="nazwa jednostki nadrzędnej*"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxNazwaJednNadrz" runat="server" Width="200px" ></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID ="validNazwaNadrz" runat ="server" ControlToValidate ="TextBoxNazwaJednNadrz" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red"/>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelJednPodrz" runat="server" Text="nazwa jednostki podrzędnej*"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxNazwaJednPodrz" runat="server" Width="200px"></asp:TextBox>
         <br />
        <asp:RequiredFieldValidator ID ="validNazwaJednPodrz" runat ="server" ControlToValidate ="TextBoxNazwaJednPodrz" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red"/>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelUlica" runat="server" Text="ulica"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxUlica" runat="server" Width="200px"></asp:TextBox>
            <br />
        <asp:RegularExpressionValidator id ="validUlica" runat ="server" ControlToValidate ="TextBoxUlica" ValidationExpression ="^[0-9a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ /]{3,25}$" ErrorMessage ="Niepoprawna nazwa ulicy." display ="dynamic" ForeColor="Red" />
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelKodPoczt" runat="server" Text="kod pocztowy"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxKodPocztowy" runat="server" Width="200px"></asp:TextBox>
            <br />
        <asp:RegularExpressionValidator id ="validKodPocztowy" runat ="server" ControlToValidate ="TextBoxKodPocztowy" ValidationExpression ="\d\d\-\d\d\d" ErrorMessage ="Niepoprawny kod pocztowy." display ="dynamic" ForeColor="Red"/>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelMiasto" runat="server" Text="miasto"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxMiasto" runat="server" Width="200px"></asp:TextBox>
            <br />
        <asp:RegularExpressionValidator id ="validMiasto" runat ="server" ControlToValidate ="TextBoxMiasto" ValidationExpression ="^[a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ]{3,25}$" ErrorMessage ="Niepoprawna wartość pola." display ="dynamic" ForeColor="Red" />
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelEMail" runat="server" Text="e-mail"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxMail" runat="server" Width="200px" TextMode="Email"></asp:TextBox>
            <br />
        <asp:RegularExpressionValidator id ="validMail" runat ="server" ControlToValidate ="TextBoxMail"
       ValidationExpression ="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
       ErrorMessage ="Niepoprawny adres e-mail."
       display ="dynamic" ForeColor="Red" />
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelTel" runat="server" Text="tel"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxTel" runat="server" Width="200px"></asp:TextBox>
            <br />
        <asp:RegularExpressionValidator id ="validCyfra" runat ="server" ControlToValidate ="TextBoxTel" ValidationExpression ="^[\d]{9}$" ErrorMessage ="Niepoprawna wartość pola." display ="dynamic" ForeColor="Red" />
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelWww" runat="server" Text="www"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxWww" runat="server" Width="200px"></asp:TextBox>
            <br />
        <asp:Label ID="WwwWal" runat="server" Text="Niepoprawna wartość pola." Visible ="false" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelNip" runat="server" Text="NIP"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxNip" runat="server" Width="200px" ></asp:TextBox>
            <br />
        <asp:RegularExpressionValidator id ="validCyfra2" runat ="server" ControlToValidate ="TextBoxNip" ValidationExpression ="^[\d]{10}$" ErrorMessage ="Niepoprawna wartość pola." display ="dynamic" ForeColor="Red" />
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelFax" runat="server" Text="fax"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxFax" runat="server" Width="200px"></asp:TextBox>
            <br />
        <asp:RegularExpressionValidator id ="validCyfra3" runat ="server" ControlToValidate ="TextBoxFax" ValidationExpression ="^[\d]{9}$" ErrorMessage ="Niepoprawna wartość pola." display ="Static" ForeColor="Red"/>
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
        <asp:Button ID="ButtonDodaj" runat="server" OnClick="DodajKlik" Text="Dodaj" Width="100px" />
        </td>
    </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
