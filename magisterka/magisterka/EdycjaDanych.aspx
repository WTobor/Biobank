<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="EdycjaDanych.aspx.cs" Inherits="magisterka.EdycjaDanych" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
<div class="left">
    <p>EDYCJA DANYCH</p>
    </div>
    <br />
    <br />
    <table class="table" style="vertical-align: baseline; text-align: left">
    <tr>
        <td>
    <asp:Label runat="server" Width="150px" >JEDNOSTKA*</asp:Label>
        </td>
        <td>
    <asp:DropDownList runat="server" ID="DropDownListJednostka" DataSourceID="SqlDataSource1" DataTextField="Tekst"  DataValueField="id_jednostki" Width="300" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
        SelectCommand="SELECT id_jednostki, [nazwa_nadrz] + ', ' + [nazwa_podrz] AS Tekst from JEDNOSTKA">
    </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
    <asp:Label runat="server" Width="150px">IMIĘ*</asp:Label>
        </td>
        <td>
    <asp:TextBox runat="server" ID="TextBoxImie" Autopostback="false"/>
    <asp:RequiredFieldValidator ID ="validImie" runat ="server" ControlToValidate ="TextBoxImie" ErrorMessage ="Pole jest obowiązkowe." Display ="Dynamic" ForeColor="Red"/>
            <br />
    <asp:RegularExpressionValidator id ="poprImie" runat ="server" ControlToValidate ="TextBoxImie" ValidationExpression ="^[A-ZĄĆĘŁŃÓŚŹŻ]{1}[a-ząćęłńóśźż]{2,15}$" ErrorMessage ="Niepoprawne imię." display ="dynamic" ForeColor="Red" />
            <br />
        </td>
    </tr>
    <tr>
        <td>
    <asp:Label runat="server" Width="150px">NAZWISKO*</asp:Label>
        </td>
        <td>
    <asp:TextBox runat="server" ID="TextBoxNazwisko" Autopostback="false"/>
    <asp:RequiredFieldValidator ID ="validNazwisko" runat ="server" ControlToValidate ="TextBoxNazwisko" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red"/>
            <br />
    <asp:RegularExpressionValidator id ="poprNazwisko" runat ="server" ControlToValidate ="TextBoxNazwisko" ValidationExpression ="^[A-ZĄĆĘŁŃÓŚŹŻ]{1}[a-ząćęłńóśźż]{2,25}$" ErrorMessage ="Niepoprawne nazwisko." display ="dynamic" ForeColor="Red" />
            <br />
        </td>
    </tr>
    <tr>
        <td>
    <asp:Label runat="server" Width="150px">EMAIL*</asp:Label>
        </td>
        <td>
    <asp:TextBox runat="server" ID="TextBoxMail"  />
    <asp:RequiredFieldValidator ID ="validEMail" runat ="server" ControlToValidate ="TextBoxMail" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red"/>
    &nbsp;<br />
    <asp:RegularExpressionValidator id ="validMail" runat ="server" ControlToValidate ="TextBoxMail"
       ValidationExpression ="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
       ErrorMessage ="Niepoprawny adres e-mail."
       display ="dynamic" ForeColor="Red" />
        </td>
    </tr>
    <tr>
        <td>
    <asp:Label runat="server" Width="150px">TELEFON</asp:Label>
        </td>
        <td>
    <asp:TextBox runat="server" ID="TextBoxTel" TextMode="Phone" />
            <br />
    <asp:RegularExpressionValidator id ="validTel" runat ="server" ControlToValidate ="TextBoxTel"
       ValidationExpression ="^[\d]{9}$"
       ErrorMessage ="Niepoprawny numer telefonu."
       display ="dynamic" ForeColor="Red" />
        </td>
    </tr>
        <tr>
        <td></td>
        <td>
            <span style="float:right"><asp:Label runat="server" ID="Pole_obow" Font-Italic="True" Font-Size="Smaller">* - pole obowiązkowe</asp:Label></span>
        </td>
    </tr>
    </table>
    <asp:Button ID="Zmien" runat="server" Text="Zapisz zmiany" OnClick="Zmien_Click" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
