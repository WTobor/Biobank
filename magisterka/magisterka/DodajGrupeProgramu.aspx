<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="DodajGrupeProgramu.aspx.cs" Inherits="magisterka.DodajGrupeProgramu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="left">
    <asp:Label ID="WybranyProgramLabel" Text="" runat="server" />
    <br />
    <p>NOWA GRUPA</p>
    <br />
    <br />
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table style="vertical-align: baseline; text-align: left">
    <tr>
        <td>
        <asp:Label ID="LabelNazwaGrupy" runat="server" Text="nazwa grupy*"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxNazwaGrupy" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID ="validNazwaGrupy" runat ="server" ControlToValidate ="TextBoxNazwaGrupy" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red" Width="150px"/>
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
        <asp:Button ID="DodawanieGrupy" runat="server" OnClick="DodajKlik" Text="Dodaj" Width="100px" />
        </td>
    </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
