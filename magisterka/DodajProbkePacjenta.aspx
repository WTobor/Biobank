<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="DodajProbkePacjenta.aspx.cs" Inherits="magisterka.DodajProbkeProgramu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 210px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="left">
    <asp:Label ID="WybranyProgramLabel" Text="" runat="server" />
    <br />
    <p>NOWA PRÓBKA</p>
    </div>
    <br />
    <br />
    <br />
    
    <table style="vertical-align: baseline; text-align: left">
    <tr>
        <td>
        <asp:Label ID="Label1" runat="server" Text="numer*"></asp:Label>
        </td>
        <td class="auto-style1">
        <asp:TextBox ID="TextBoxNumer" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID ="validAutorzy" runat ="server" ControlToValidate ="TextBoxNumer" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red" Width="150px"/>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label2" runat="server" Text="nazwa*"></asp:Label>
        </td>
        <td class="auto-style1">
        <asp:TextBox ID="TextBoxNazwa" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID ="validTytul" runat ="server" ControlToValidate ="TextBoxNazwa" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red" Width="150px"/>
        <br />
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label3" runat="server" Text="data*"></asp:Label>
        </td>
        <td class="auto-style1">
        <asp:Calendar ID="CalendarProbka" runat="server" CaptionAlign="Bottom" Font-Size="Smaller" Height="149px" Width="16px">
        <TitleStyle Font-Bold="True" Font-Size="Larger" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:Calendar>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label4" runat="server" Text="uwagi"></asp:Label>
        </td>
        <td class="auto-style1">
        <asp:TextBox ID="TextBoxUwagi" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label5" runat="server" Text="status*"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:DropDownList ID="DropDownListStatus" runat="server" DataSourceID="SqlDataSource1" DataTextField="Tekst" DataValueField="id_slownika_statusow">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
                SelectCommand="SELECT id_slownika_statusow, [nazwa_statusu] as Tekst FROM [SLOWNIK_STATUSOW]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label6" runat="server" Text="materiał*"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:DropDownList ID="DropDownListMaterial" runat="server" DataSourceID="SqlDataSource2" DataTextField="Tekst" DataValueField="id_slownika_materialow">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
                SelectCommand="SELECT id_slownika_materialow, nazwa_materialu as Tekst FROM SLOWNIK_MATERIALOW">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td></td>
        <td class="auto-style1">
            <span style="float:right"><asp:Label runat="server" ID="Pole_obow" Font-Italic="True" Font-Size="Smaller">* - pole obowiązkowe</asp:Label></span>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Button ID="DodawanieProbki" runat="server" OnClick="DodajKlik" Text="Dodaj" Width="100px" />
        </td>
    </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
