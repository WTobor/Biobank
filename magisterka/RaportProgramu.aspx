<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="RaportProgramu.aspx.cs" Inherits="magisterka.RaportProgramu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <table>
    <tr>
            <td>
                <asp:Label ID="WybranyProgramLabel" Text="" runat="server" CssClass="left" />
            </td>
        </tr>
        <tr>
            <td>
                <p>RAPORTY</p>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="PoprAktual" runat="server" ForeColor="Green"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="RaportTxt" runat="server" Text="Generuj raport .txt" OnClick="RaportTxt_Click" />
            </td>
        </tr>
        <tr>
            <td>                
                <asp:Button ID="RaportCsv" runat="server" Text="Generuj raport .csv" OnClick="RaportCsv_Click" />
            </td>
        </tr>
    </table>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
