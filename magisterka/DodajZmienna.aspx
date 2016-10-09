<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="DodajZmienna.aspx.cs" Inherits="magisterka.DodajZmienna" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <table>
    <tr>
        <td class="auto-style2">
        <asp:Label ID="Label1" runat="server" Text="nazwa zmiennej*"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxNazwaZmiennej" runat="server" Width="200px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID ="validNazwaZmiennej" runat ="server" ControlToValidate ="TextBoxNazwaZmiennej" ErrorMessage ="Pole jest obowiązkowe. " Display ="Static" ForeColor="Red"/>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
        <asp:Label ID="Label2" runat="server" Text="jednostka zmiennej"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxJednostkaZmiennej" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
        <asp:Label ID="Label3" runat="server" Text="program*"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:DropDownList ID="DropDownListProgramy" runat="server" DataSourceID="SqlDataSource1" DataTextField="Tekst" DataValueField="id_projektu">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" SelectCommand="SELECT id_projektu, nazwa_projektu AS Tekst FROM PROJEKT WHERE (id_Admin = @id_Admin)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="-1" Name="id_Admin" SessionField="id_uzytk" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <style type="text/css">
            label { display: inline-block;}
                .auto-style1 {
                    width: 144px;
                }
                .auto-style2 {
                    width: 142px;
                }
            </style>
        </td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td>
            <span style="float:right"><asp:Label runat="server" ID="Pole_obow" Font-Italic="True" Font-Size="Smaller">* - pole obowiązkowe</asp:Label></span>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
        <asp:Button ID="ButtonDodajZmienna" runat="server" OnClick="DodajKlik" Text="Dodaj" Width="100px" />
        </td>
    </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
