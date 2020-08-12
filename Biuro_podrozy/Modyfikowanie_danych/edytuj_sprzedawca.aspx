<%@ Page Title="" Language="C#" MasterPageFile="~/strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="edytuj_sprzedawca.aspx.cs" Inherits="Biuro_podrozy.Modyfikowanie_danych.edytuj_sprzedawca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <p title="Edytowanie danych sprzedawca">
        Edytowanie danych sprzedawca
    </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Sprzedawca] WHERE [Id_sprzedawca] = @Id_sprzedawca" InsertCommand="INSERT INTO [Sprzedawca] ([Imie_sprzedawca], [Nazwisko_sprzedawca], [Telefon_sprzedawca], [Email_sprzedawca]) VALUES (@Imie_sprzedawca, @Nazwisko_sprzedawca, @Telefon_sprzedawca, @Email_sprzedawca)" SelectCommand="SELECT * FROM [Sprzedawca]" UpdateCommand="UPDATE [Sprzedawca] SET [Imie_sprzedawca] = @Imie_sprzedawca, [Nazwisko_sprzedawca] = @Nazwisko_sprzedawca, [Telefon_sprzedawca] = @Telefon_sprzedawca, [Email_sprzedawca] = @Email_sprzedawca WHERE [Id_sprzedawca] = @Id_sprzedawca">
            <DeleteParameters>
                <asp:Parameter Name="Id_sprzedawca" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Imie_sprzedawca" Type="String" />
                <asp:Parameter Name="Nazwisko_sprzedawca" Type="String" />
                <asp:Parameter Name="Telefon_sprzedawca" Type="String" />
                <asp:Parameter Name="Email_sprzedawca" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Imie_sprzedawca" Type="String" />
                <asp:Parameter Name="Nazwisko_sprzedawca" Type="String" />
                <asp:Parameter Name="Telefon_sprzedawca" Type="String" />
                <asp:Parameter Name="Email_sprzedawca" Type="String" />
                <asp:Parameter Name="Id_sprzedawca" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id_sprzedawca" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id_sprzedawca" HeaderText="Id_sprzedawca" InsertVisible="False" ReadOnly="True" SortExpression="Id_sprzedawca" Visible="False" />
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
    </p>
</asp:Content>
