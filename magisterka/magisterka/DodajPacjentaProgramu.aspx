<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="DodajPacjentaProgramu.aspx.cs" Inherits="magisterka.DodajPacjentaProgramu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="WybranyProgramLabel" runat="server" CssClass="left" />
    <br />
    <div class="left">
    <p>NOWY PACJENT</p>
    </div>
    <br />
    <table class="table"  style="vertical-align: baseline; text-align: left">
        <tr>
            <td>
            <asp:Label ID="LabelImie" runat="server" Text="imię*"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBoxImie" runat="server" Width="200px" AutoPostBack="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID ="validImie" runat ="server" ControlToValidate ="TextBoxImie" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red" Width="150px"/>
            <br />
            <asp:RegularExpressionValidator id ="poprImie" runat ="server" ControlToValidate ="TextBoxImie" ValidationExpression ="^[A-ZĄĆĘŁŃÓŚŹŻ]{1}[a-ząćęłńóśźż]{2,15}$" ErrorMessage ="Niepoprawne imię." display ="dynamic" ForeColor="Red" />
            <br />
            </td>
        </tr>
        <tr>
            <td>
            <asp:Label ID="LabelNazwisko" runat="server" Text="nazwisko*"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBoxNazwisko" runat="server" Width="200px" AutoPostBack="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID ="validNazwisko" runat ="server" ControlToValidate ="TextBoxNazwisko" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red" Width="150px"/>
            <br />
            <asp:RegularExpressionValidator id ="poprNazwisko" runat ="server" ControlToValidate ="TextBoxNazwisko" ValidationExpression ="^[A-ZĄĆĘŁŃÓŚŹŻ]{1}[a-ząćęłńóśźż]{2,25}$" ErrorMessage ="Niepoprawne nazwisko." display ="dynamic" ForeColor="Red" />
            <br />
            </td>
        </tr>
        <tr>
            <td>
            <asp:Label ID="LabelPesel" runat="server" Text="PESEL*"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBoxPesel" runat="server" Width="200px" AutoPostBack="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID ="validPesel" runat ="server" ControlToValidate ="TextBoxPesel" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red" Width="150px"/>
            <br />
            <asp:RegularExpressionValidator id ="validPeselPopr" runat ="server" ControlToValidate ="TextBoxPesel" ValidationExpression ="^[0123456789 -]{3,11}$" ErrorMessage ="Niepoprawny pesel." display ="dynamic" ForeColor="Red" />
            <br />
            </td>
        </tr>
        <%--<tr>
            <td>
            <asp:Label ID="LabelGrupa" runat="server" Text="grupa*"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListGrupa" runat="server" DataSourceID="SqlDataSource1" DataTextField="Tekst" DataValueField="id_grupa">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" SelectCommand="SELECT DISTINCT GRUPA.id_grupa, GRUPA.nazwa_grupy AS Tekst FROM GRUPA INNER JOIN GRUPA_PROJ ON GRUPA_PROJ.id_grupa = GRUPA.id_grupa WHERE (GRUPA_PROJ.id_projekt = @id_programu)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="-1" Name="id_programu" SessionField="id_programu" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>--%>
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
