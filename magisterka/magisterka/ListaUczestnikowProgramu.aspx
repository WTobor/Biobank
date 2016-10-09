<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ListaUczestnikowProgramu.aspx.cs" Inherits="magisterka.ListaUczestnikowProgramu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <div class="left">
    <table>
        <tr>
            <td>
                <asp:Label ID="WybranyProgramLabel" runat="server" CssClass="left" />            </td>
        </tr>
        <tr>
            <td>
                <p>UCZESTNICY</p>
            </td>
        </tr>
        <tr>
            <td>
                <p style="font-weight: bold">Admin:</p>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LabelAdmin" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <p style="font-weight: bold">Uczestnicy:</p>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="DodajUzytkownika" runat="server" OnClick="DodajUzytkownika_Click" Text="Dodaj uczestnika" Width="160px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label id="PoprAktual" runat="server" ForeColor="Green"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ListView ID="ListViewUzytkownicy" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <li style="">imie:
                        <asp:Label ID="imieLabel" runat="server" Text='<%# Eval("imie") %>' />
                        <br />
                        nazwisko:
                        <asp:Label ID="nazwiskoLabel" runat="server" Text='<%# Eval("nazwisko") %>' />
                        <br />
                        uprawnienia:
                        <asp:Label ID="uprawnieniaLabel" runat="server" Text='<%# Eval("uprawnienia") %>' />
                        <br />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="">imie:
                        <asp:TextBox ID="imieTextBox" runat="server" Text='<%# Bind("imie") %>' />
                        <br />
                        nazwisko:
                        <asp:TextBox ID="nazwiskoTextBox" runat="server" Text='<%# Bind("nazwisko") %>' />
                        <br />
                        uprawnienia:
                        <asp:TextBox ID="uprawnieniaTextBox" runat="server" Text='<%# Bind("uprawnienia") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    Brak danych do wyświetlenia
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">imie:
                        <asp:TextBox ID="imieTextBox" runat="server" Text='<%# Bind("imie") %>' />
                        <br />
                        nazwisko:
                        <asp:TextBox ID="nazwiskoTextBox" runat="server" Text='<%# Bind("nazwisko") %>' />
                        <br />
                        uprawnienia:
                        <asp:TextBox ID="uprawnieniaTextBox" runat="server" Text='<%# Bind("uprawnienia") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="">imie:
                        <asp:Label ID="imieLabel" runat="server" Text='<%# Eval("imie") %>' />
                        <br />
                        nazwisko:
                        <asp:Label ID="nazwiskoLabel" runat="server" Text='<%# Eval("nazwisko") %>' />
                        <br />
                        uprawnienia:
                        <asp:Label ID="uprawnieniaLabel" runat="server" Text='<%# Eval("uprawnienia") %>' />
                        <br />
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="">imie:
                        <asp:Label ID="imieLabel" runat="server" Text='<%# Eval("imie") %>' />
                        <br />
                        nazwisko:
                        <asp:Label ID="nazwiskoLabel" runat="server" Text='<%# Eval("nazwisko") %>' />
                        <br />
                        uprawnienia:
                        <asp:Label ID="uprawnieniaLabel" runat="server" Text='<%# Eval("uprawnienia") %>' />
                        <br />
                    </li>
                </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" SelectCommand="SELECT [UZYTK].imie, [UZYTK].nazwisko, [UPRAWNIENIA].nazwa_uprawnienia AS uprawnienia FROM [UZYTK] INNER JOIN UPRAWNIENIA ON [UPRAWNIENIA].id_uprawnienia = [UZYTK].id_uprawnienia INNER JOIN UZYTK_PROJEKT ON [UZYTK].id_uzytk = UZYTK_PROJEKT.id_uzytk where (UZYTK_PROJEKT.id_projektu = @id_programu)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="-1" Name="id_programu" SessionField="id_programu" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </div>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
