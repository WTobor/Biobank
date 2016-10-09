<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="DodajEksperymentProgramu.aspx.cs" Inherits="magisterka.DodajEksperymentProjektu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="left">
    <asp:Label ID="WybranyProgramLabel" Text="" runat="server" />
    <br />
    <p>NOWY EKSPERYMENT</p>
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
        <asp:Label ID="Label1" runat="server" Text="data*"></asp:Label>
        </td>
        <td>
        <asp:Calendar ID="CalendarEksp" runat="server" CaptionAlign="Bottom" Font-Size="Smaller" Height="149px" Width="16px" >
        <TitleStyle Font-Bold="True" Font-Size="Larger" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectorStyle BackColor="#FFCC66"></SelectorStyle>
        </asp:Calendar>
    </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelOpis" runat="server" Text="opis*"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxOpisEksp" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID ="validOpisEksp" runat ="server" ControlToValidate ="TextBoxOpisEksp" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red" Width="150px"/>
        <br />
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelWynik" runat="server" Text="wynik"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxWynikEksp" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="LabelUwagi" runat="server" Text="uwagi"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="TextBoxUwagiEksp" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="LabelMetody" runat="server" Text="metody*"></asp:Label>
        </td>
        <td>
            <style type="text/css">
            label { display: inline-block; padding: 5px}
            </style>
            <asp:CheckBoxList ID="CheckBoxListMetody" runat="server" DataSourceID="SqlDataSource1" DataTextField="nazwa_metody" DataValueField="nazwa_metody" CssClass="label" Width="500px" Height="10px" RepeatDirection="Horizontal" TextAlign="Left" >
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" SelectCommand="SELECT [nazwa_metody] FROM [SLOWNIK_METOD]"></asp:SqlDataSource>
            <asp:Label ID="validMetody" runat="server" Text="Wybierz co najmniej jedną metodę" ForeColor="Red" Visible="false"></asp:Label>
            <br>
            <asp:Button ID="DodajMetode" runat="server" CausesValidation="false" Text="Dodaj metodę" OnClick="DodajMetode_Click" />            
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
        <asp:Button ID="DodawanieEksperymentu" runat="server" OnClick="DodajKlik" Text="Dodaj" Width="100px" />
        </td>
    </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
