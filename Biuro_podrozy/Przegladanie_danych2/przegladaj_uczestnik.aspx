<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="przegladaj_uczestnik.aspx.cs" Inherits="Biuro_podrozy.Przegladanie_danych2.przegladaj_uczestnik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p title="Przeglądanie danych uczestnik">
        Przeglądanie danych uczestnik
    </p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Nazwisko_uczestnik" DataValueField="Id_uczestnik"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Imie_uczestnik], [Nazwisko_uczestnik], [Ubezpieczenie], [Telefon_uczestnik], [Miejscowosc_uczestnik], [Nr_lokalu_uczestnik], [Ulica_uczestnik], [kod_pocztowy_uczestnik], [Email_uczestnik] FROM [Uczestnicy] WHERE ([Id_uczestnik] = @Id_uczestnik)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Id_uczestnik" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="Brak danych do wyświetlenia" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Imie_uczestnik" HeaderText="Imie uczestnik" SortExpression="Imie_uczestnik" />
            <asp:BoundField DataField="Nazwisko_uczestnik" HeaderText="Nazwisko uczestnik" SortExpression="Nazwisko_uczestnik" />
            <asp:BoundField DataField="Ubezpieczenie" HeaderText="Ubezpieczenie" SortExpression="Ubezpieczenie" />
            <asp:BoundField DataField="Telefon_uczestnik" HeaderText="Telefon uczestnik" SortExpression="Telefon_uczestnik" />
            <asp:BoundField DataField="Miejscowosc_uczestnik" HeaderText="Miejscowosc uczestnik" SortExpression="Miejscowosc_uczestnik" />
            <asp:BoundField DataField="Nr_lokalu_uczestnik" HeaderText="Nr lokalu uczestnik" SortExpression="Nr_lokalu_uczestnik" />
            <asp:BoundField DataField="Ulica_uczestnik" HeaderText="Ulica uczestnik" SortExpression="Ulica_uczestnik" />
            <asp:BoundField DataField="kod_pocztowy_uczestnik" HeaderText="kod pocztowy uczestnik" SortExpression="kod_pocztowy_uczestnik" />
            <asp:BoundField DataField="Email_uczestnik" HeaderText="Email uczestnik" SortExpression="Email_uczestnik" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Uczestnicy]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Uczestnicy] ORDER BY [Nazwisko_uczestnik]"></asp:SqlDataSource>
</asp:Content>
