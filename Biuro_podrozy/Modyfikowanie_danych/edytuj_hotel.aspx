<%@ Page Title="" Language="C#" MasterPageFile="~/strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="edytuj_hotel.aspx.cs" Inherits="Biuro_podrozy.Modyfikowanie_danych.edytuj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p title="Edytuj dane hotel">
        Edytowanie danych hotel
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Hotel] WHERE [Id_hotel] = @Id_hotel" InsertCommand="INSERT INTO [Hotel] ([Nazwa_hotel], [Standard_hotel], [Telefon_hotel], [Email_hotel], [Strona_internetowa_hotel], [Miejscowosc_hotel], [Ulica_hotel], [Nr_lokalu_hotel], [Kod_pocztowy_hotel]) VALUES (@Nazwa_hotel, @Standard_hotel, @Telefon_hotel, @Email_hotel, @Strona_internetowa_hotel, @Miejscowosc_hotel, @Ulica_hotel, @Nr_lokalu_hotel, @Kod_pocztowy_hotel)" SelectCommand="SELECT * FROM [Hotel]" UpdateCommand="UPDATE [Hotel] SET [Nazwa_hotel] = @Nazwa_hotel, [Standard_hotel] = @Standard_hotel, [Telefon_hotel] = @Telefon_hotel, [Email_hotel] = @Email_hotel, [Strona_internetowa_hotel] = @Strona_internetowa_hotel, [Miejscowosc_hotel] = @Miejscowosc_hotel, [Ulica_hotel] = @Ulica_hotel, [Nr_lokalu_hotel] = @Nr_lokalu_hotel, [Kod_pocztowy_hotel] = @Kod_pocztowy_hotel WHERE [Id_hotel] = @Id_hotel">
        <DeleteParameters>
            <asp:Parameter Name="Id_hotel" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nazwa_hotel" Type="String" />
            <asp:Parameter Name="Standard_hotel" Type="String" />
            <asp:Parameter Name="Telefon_hotel" Type="String" />
            <asp:Parameter Name="Email_hotel" Type="String" />
            <asp:Parameter Name="Strona_internetowa_hotel" Type="String" />
            <asp:Parameter Name="Miejscowosc_hotel" Type="String" />
            <asp:Parameter Name="Ulica_hotel" Type="String" />
            <asp:Parameter Name="Nr_lokalu_hotel" Type="String" />
            <asp:Parameter Name="Kod_pocztowy_hotel" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nazwa_hotel" Type="String" />
            <asp:Parameter Name="Standard_hotel" Type="String" />
            <asp:Parameter Name="Telefon_hotel" Type="String" />
            <asp:Parameter Name="Email_hotel" Type="String" />
            <asp:Parameter Name="Strona_internetowa_hotel" Type="String" />
            <asp:Parameter Name="Miejscowosc_hotel" Type="String" />
            <asp:Parameter Name="Ulica_hotel" Type="String" />
            <asp:Parameter Name="Nr_lokalu_hotel" Type="String" />
            <asp:Parameter Name="Kod_pocztowy_hotel" Type="String" />
            <asp:Parameter Name="Id_hotel" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id_hotel" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id_hotel" HeaderText="Id_hotel" InsertVisible="False" ReadOnly="True" SortExpression="Id_hotel" Visible="False" />
            <asp:BoundField DataField="Nazwa_hotel" HeaderText="Nazwa hotel" SortExpression="Nazwa_hotel" />
            <asp:BoundField DataField="Standard_hotel" HeaderText="Standard hotel" SortExpression="Standard_hotel" />
            <asp:BoundField DataField="Telefon_hotel" HeaderText="Telefon hotel" SortExpression="Telefon_hotel" />
            <asp:BoundField DataField="Email_hotel" HeaderText="Email hotel" SortExpression="Email_hotel" />
            <asp:BoundField DataField="Strona_internetowa_hotel" HeaderText="Strona internetowa hotel" SortExpression="Strona_internetowa_hotel" />
            <asp:BoundField DataField="Miejscowosc_hotel" HeaderText="Miejscowosc hotel" SortExpression="Miejscowosc_hotel" />
            <asp:BoundField DataField="Ulica_hotel" HeaderText="Ulicabhotel" SortExpression="Ulica_hotel" />
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
</asp:Content>
