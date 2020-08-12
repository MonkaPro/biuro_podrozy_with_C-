<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="przegladaj_hotel.aspx.cs" Inherits="Biuro_podrozy.Przegladanie_danych1.przegladaj_hotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p title="Przeglądaj dane hotel">
        Przeglądanie danych hotel
    </p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nazwa_hotel" DataValueField="Id_hotel"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Hotel]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="Brak danych do wyświetlenia" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Nazwa_hotel" HeaderText="Nazwa hotel" SortExpression="Nazwa_hotel" />
            <asp:BoundField DataField="Standard_hotel" HeaderText="Standard hotel" SortExpression="Standard_hotel" />
            <asp:BoundField DataField="Telefon_hotel" HeaderText="Telefon hotel" SortExpression="Telefon_hotel" />
            <asp:BoundField DataField="Email_hotel" HeaderText="Email hotel" SortExpression="Email_hotel" />
            <asp:BoundField DataField="Strona_internetowa_hotel" HeaderText="Strona internetowa hotel" SortExpression="Strona_internetowa_hotel" />
            <asp:BoundField DataField="Miejscowosc_hotel" HeaderText="Miejscowosc hotel" SortExpression="Miejscowosc_hotel" />
            <asp:BoundField DataField="Ulica_hotel" HeaderText="Ulica hotel" SortExpression="Ulica_hotel" />
            <asp:BoundField DataField="Nr_lokalu_hotel" HeaderText="Nr lokalu hotel" SortExpression="Nr_lokalu_hotel" />
            <asp:BoundField DataField="Kod_pocztowy_hotel" HeaderText="Kod pocztowy hotel" SortExpression="Kod_pocztowy_hotel" />
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
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nazwa_hotel], [Standard_hotel], [Telefon_hotel], [Email_hotel], [Strona_internetowa_hotel], [Miejscowosc_hotel], [Ulica_hotel], [Nr_lokalu_hotel], [Kod_pocztowy_hotel] FROM [Hotel] WHERE ([Id_hotel] = @Id_hotel)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Id_hotel" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Hotel] ORDER BY [Nazwa_hotel]"></asp:SqlDataSource>
</asp:Content>
