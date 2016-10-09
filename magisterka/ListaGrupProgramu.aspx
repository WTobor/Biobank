<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ListaGrupProgramu.aspx.cs" Inherits="magisterka.ListaGrupProgramu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
	<asp:Label ID="WybranyProgramLabel" Text="" runat="server" CssClass="left" />
	<br />
	<div class="left">
		<p>GRUPY</p>
	</div>
	<table>
		<tr>
			<td>
				<asp:Button ID="DodajGrupe" runat="server" OnClick="DodajGrupe_Click" Text="Dodaj grupę" Width="150px" />
			</td>
		</tr>
		<tr>
			<td>
				<asp:Label ID="LabelNapis" runat="server" Text="Wybierz z listy"></asp:Label>
			</td>
		</tr>
		<tr>
			<td>
				<asp:DropDownList ID="DropDownListGrupy" runat="server" DataSourceID="SqlDataSource2" DataTextField="nazwa_grupy" DataValueField="nazwa_grupy" Width="150px">
				</asp:DropDownList>
				<asp:Button ID="WybierzZListy" runat="server" Text="Wybierz" OnClick="WybierzZListy_Click" />
				<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" SelectCommand="SELECT [nazwa_grupy] FROM [GRUPA]"></asp:SqlDataSource>
			</td>
		</tr>
		<tr>
			<td>
					<asp:Label id="PoprAktual" runat="server" ForeColor="Green"></asp:Label>
			</td>
		</tr>
		<tr>
			<td>
				<asp:GridView ID="GridViewGrupy" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_grupa" DataSourceID="SqlDataSource1" AutoGenerateEditButton="True"
				CaptionAlign="Top" HorizontalAlign="Center" EmptyDataText="Brak danych do wyświetlenia" Width="300px" CellPadding="4" ForeColor="#333333" GridLines="None"
                     OnSelectedIndexChanged="GridViewGrupy_SelectedIndexChanged" RowStyle-HorizontalAlign="Center">
				<AlternatingRowStyle BackColor="White" />
				<Columns>
					<asp:BoundField DataField="id_grupa" HeaderText="id_grupa" InsertVisible="False" ReadOnly="True" SortExpression="id_grupa" Visible="False" />
					<asp:BoundField DataField="nazwa_grupy" HeaderText="nazwa grupy" NullDisplayText="--" SortExpression="nazwa_grupy" />
				</Columns>
				<EditRowStyle BackColor="#2461BF" />
				<FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
				<PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
				<RowStyle BackColor="#EFF3FB" />
				<SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
				<SortedAscendingCellStyle BackColor="#F5F7FB" />
				<SortedAscendingHeaderStyle BackColor="#6D95E1" />
				<SortedDescendingCellStyle BackColor="#E9EBEF" />
				<SortedDescendingHeaderStyle BackColor="#4870BE" />
				</asp:GridView>
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:baza_pacjentow_v2ConnectionString %>" 
				SelectCommand="SELECT GRUPA.id_grupa, GRUPA.nazwa_grupy FROM GRUPA INNER JOIN GRUPA_PROJ ON GRUPA.id_grupa = GRUPA_PROJ.id_grupa WHERE (GRUPA_PROJ.id_projekt = @id_programu)" 
				UpdateCommand="UPDATE GRUPA SET nazwa_grupy = @nazwa_grupy WHERE (id_grupa = @id_grupa)"
				OnUpdated="Aktualizacja">
				<SelectParameters>
					<asp:SessionParameter DefaultValue="-1" Name="id_programu" SessionField="id_programu" />
				</SelectParameters>
				<UpdateParameters>
					<asp:Parameter Name="nazwa_grupy" />
					<asp:Parameter Name="id_grupa" />
				</UpdateParameters>
				</asp:SqlDataSource>
			</td>
		</tr>
	</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
