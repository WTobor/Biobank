<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="Rejestracja.aspx.cs" Inherits="magisterka.Rejestracja" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="left">
    <table>
        <tr>
            <td>
                <p>Tworzenie nowego konta</p>
            </td>
        </tr>
        <tr>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="PoprDodanoJedn" runat="server" Text="" ForeColor ="green"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
        <asp:Label runat="server" Width="150px" >JEDNOSTKA*</asp:Label>
            </td>
            <td>
        <asp:DropDownList runat="server" ID="DropDownListJednostka" DataSourceID="SqlDataSource1" DataTextField="Tekst"  DataValueField="id_jednostki" Width="300" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" SelectCommand="SELECT id_jednostki, [nazwa_nadrz] + ', ' + [nazwa_podrz] AS Tekst from JEDNOSTKA">
        </asp:SqlDataSource>
        <asp:Button ID="DodajJednostke" runat="server" OnClick="DodajJednostke_Click" CausesValidation="false" Text="Dodaj jednostkę" Width="150px" />
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
        <asp:RegularExpressionValidator id ="poprImie" runat ="server" ControlToValidate ="TextBoxImie" ValidationExpression ="^[A-ZĄĆĘŁŃÓŚŹŻ]{1}[a-ząćęłńóśźż]{2,15}$" ErrorMessage ="Niepoprawna wartość pola." display ="dynamic" ForeColor="Red" />
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
        <asp:RegularExpressionValidator id ="poprNazwisko" runat ="server" ControlToValidate ="TextBoxNazwisko" ValidationExpression ="^[A-ZĄĆĘŁŃÓŚŹŻ]{1}[a-ząćęłńóśźż]{2,25}$" ErrorMessage ="Niepoprawna wartość pola." display ="dynamic" ForeColor="Red" />
                <br />
            </td>
        </tr>
        <tr>
            <td>
        <asp:Label runat="server" Width="150px">LOGIN*</asp:Label>
        <asp:TextBox runat="server" ID="validTmp" Visible="false" />
            </td>
            <td>
        <asp:TextBox runat="server" ID="TextBoxLogin" />
        <asp:RequiredFieldValidator ID ="validLogin" runat ="server" ControlToValidate ="TextBoxLogin" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red"/>
                <br />
    
        <asp:RegularExpressionValidator id ="validacjaLoginu" runat ="server" ControlToValidate="validTmp"
            ErrorMessage ="Podany login istnieje już w bazie." display ="static" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td>
        <asp:Label runat="server" Width="150px">HASŁO*</asp:Label>
            </td>
            <td>
        <asp:TextBox runat="server" ID="TextBoxHaslo" TextMode="Password" />
        <asp:RequiredFieldValidator ID ="validHaslo" runat ="server" ControlToValidate ="TextBoxHaslo" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td>
        <asp:Label runat="server" Width="150px">POTWIERDŹ HASŁO*</asp:Label>
            </td>
            <td>
        <asp:TextBox runat="server" ID="TextBoxPotwHasla" TextMode="Password" />
        <asp:RequiredFieldValidator ID ="validHaslo2" runat ="server" ControlToValidate ="TextBoxPotwHasla" ErrorMessage ="Pole jest obowiązkowe. " Display ="Static" ForeColor="Red"/>
                <br />
        <asp:CompareValidator id ="validHaslo2Haslo" runat ="server" ControlToValidate ="TextBoxHaslo" ControlToCompare ="TextBoxPotwHasla" Operator ="Equal" ErrorMessage ="Hasła nie są takie same." Display ="Static" ForeColor="Red"/>
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
            <td>
        <asp:Label runat="server" Width="150px">UPRAWNIENIA*</asp:Label>
            </td>
            <td>
        <asp:DropDownList ID="DropDownListUprawnienia" runat="server" DataSourceID="SqlDataSource2" DataTextField="Tekst" DataValueField="id_uprawnienia" Width="150px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" SelectCommand="SELECT id_uprawnienia, nazwa_uprawnienia AS Tekst FROM UPRAWNIENIA"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td> 
                <cc1:CaptchaControl ID="Captcha1" runat="server"
            CaptchaBackgroundNoise="Low" CaptchaLength="5"
            CaptchaHeight="60" CaptchaWidth="200"
            CaptchaLineNoise="None" CaptchaMinTimeout="5"
            CaptchaMaxTimeout="240" FontColor = "#529E00" Width="200px" />
            </td>
            <td>
                <asp:ImageButton ImageUrl="~/Images/refresh.png" runat="server" CausesValidation="false" Width="20px" />
                <asp:CustomValidator ErrorMessage="Podano zły kod. Spróbuj ponownie." OnServerValidate="WpiszKodVal" runat="server" ForeColor ="red" />
            </td>
        </tr>
        <tr>
            <td>
       <asp:Label runat="server" AssociatedControlID="WpiszKod" >Wpisz kod*</asp:Label>
       <asp:TextBox runat="server" ID="WpiszKod" Width="100px" />
       <asp:RequiredFieldValidator ID ="validKod" runat ="server" ControlToValidate ="WpiszKod" ErrorMessage ="Pole jest obowiązkowe." Display ="Static" ForeColor="Red"/>
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>
       <span style="float:right"><asp:Label runat="server" ID="Pole_obow" Font-Italic="True" Font-Size="Smaller">* - pole obowiązkowe</asp:Label></span>
            </td>  
        </tr>
        <tr>
            <td></td>
            <td>
        <asp:Button runat="server" CommandName="Zarejestruj" Text="Zarejestruj" OnClick="Rejestracja_Click" />
            </td>
        </tr>
    </table> 
    </div>
</asp:Content>
