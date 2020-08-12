<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="przegladaj_sprzedawca.aspx.cs" Inherits="Biuro_podrozy.Przegladanie_danych2.przegladaj_sprzedawca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p title="Przeglądaj dane sprzedawca">
        Przeglądanie danych sprzedawca
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Sprzedawca] ORDER BY [Nazwisko_sprzedawca]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Nazwisko_sprzedawca" DataValueField="Id_sprzedawca">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Sprzedawca]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="Brak danych do wyświetlenia" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Imie_sprzedawca" HeaderText="Imie sprzedawca" SortExpression="Imie_sprzedawca" />
            <asp:BoundField DataField="Nazwisko_sprzedawca" HeaderText="Nazwisko sprzedawca" SortExpression="Nazwisko_sprzedawca" />
            <asp:BoundField DataField="Telefon_sprzedawca" HeaderText="Telefon sprzedawca" SortExpression="Telefon_sprzedawca" />
            <asp:BoundField DataField="Email_sprzedawca" HeaderText="Email sprzedawca" SortExpression="Email_sprzedawca" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Imie_sprzedawca], [Nazwisko_sprzedawca], [Telefon_sprzedawca], [Email_sprzedawca] FROM [Sprzedawca] WHERE ([Id_sprzedawca] = @Id_sprzedawca)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Id_sprzedawca" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
