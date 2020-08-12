<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="edytuj_umowa.aspx.cs" Inherits="Biuro_podrozy.Modyfikowanie_danych.edytuj_umowa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p title="Edytuj dane umowa">
        Edytowanie danych umowa
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Umowa] WHERE [Id_umowa] = @Id_umowa" InsertCommand="INSERT INTO [Umowa] ([Id_wycieczka], [Id_sprzedawca], [Id_uczestnik], [Data_zawarcia_umowa], [Data_platnosci_umowa], [Typ_platnosci_umowa], [Znizka]) VALUES (@Id_wycieczka, @Id_sprzedawca, @Id_uczestnik, @Data_zawarcia_umowa, @Data_platnosci_umowa, @Typ_platnosci_umowa, @Znizka)" SelectCommand="SELECT * FROM [Umowa]" UpdateCommand="UPDATE [Umowa] SET [Id_wycieczka] = @Id_wycieczka, [Id_sprzedawca] = @Id_sprzedawca, [Id_uczestnik] = @Id_uczestnik, [Data_zawarcia_umowa] = @Data_zawarcia_umowa, [Data_platnosci_umowa] = @Data_platnosci_umowa, [Typ_platnosci_umowa] = @Typ_platnosci_umowa, [Znizka] = @Znizka WHERE [Id_umowa] = @Id_umowa">
        <DeleteParameters>
            <asp:Parameter Name="Id_umowa" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id_wycieczka" Type="Int32" />
            <asp:Parameter Name="Id_sprzedawca" Type="Int32" />
            <asp:Parameter Name="Id_uczestnik" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Data_zawarcia_umowa" />
            <asp:Parameter DbType="Date" Name="Data_platnosci_umowa" />
            <asp:Parameter Name="Typ_platnosci_umowa" Type="String" />
            <asp:Parameter Name="Znizka" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id_wycieczka" Type="Int32" />
            <asp:Parameter Name="Id_sprzedawca" Type="Int32" />
            <asp:Parameter Name="Id_uczestnik" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Data_zawarcia_umowa" />
            <asp:Parameter DbType="Date" Name="Data_platnosci_umowa" />
            <asp:Parameter Name="Typ_platnosci_umowa" Type="String" />
            <asp:Parameter Name="Znizka" Type="String" />
            <asp:Parameter Name="Id_umowa" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id_umowa" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id_umowa" HeaderText="Id_umowa" InsertVisible="False" ReadOnly="True" SortExpression="Id_umowa" Visible="False" />
            <asp:BoundField DataField="Id_wycieczka" HeaderText="Id_wycieczka" SortExpression="Id_wycieczka" Visible="False" />
            <asp:BoundField DataField="Id_sprzedawca" HeaderText="Id_sprzedawca" SortExpression="Id_sprzedawca" Visible="False" />
            <asp:BoundField DataField="Id_uczestnik" HeaderText="Id_uczestnik" SortExpression="Id_uczestnik" Visible="False" />
            <asp:BoundField DataField="Data_zawarcia_umowa" HeaderText="Data zawarcia umowa" DataFormatString="{0:d}" SortExpression="Data_zawarcia_umowa" />
            <asp:BoundField DataField="Data_platnosci_umowa" HeaderText="Data platnosci umowa" DataFormatString="{0:d}"  SortExpression="Data_platnosci_umowa" />
            <asp:BoundField DataField="Typ_platnosci_umowa" HeaderText="Typ platnosci umowa" SortExpression="Typ_platnosci_umowa" />
            <asp:BoundField DataField="Znizka" HeaderText="Znizka" SortExpression="Znizka" />
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
