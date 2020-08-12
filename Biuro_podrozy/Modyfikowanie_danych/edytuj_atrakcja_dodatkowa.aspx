<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="edytuj_atrakcja_dodatkowa.aspx.cs" Inherits="Biuro_podrozy.Modyfikowanie_danych.edytuj_atrakcja_dodatkowa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p title="Edytuj atrakcja dodatkowa">
        Edytowanie danych atrakcja dodatkowa
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Atrakcja_dodatkowa] WHERE [Id_atrakcja_dodatakowa] = @Id_atrakcja_dodatakowa" InsertCommand="INSERT INTO [Atrakcja_dodatkowa] ([Data_atrakcja_dodatkowa], [Cena_atrakcja_dodatkowa], [Rodzaj_atrakcja_dodatkowa]) VALUES (@Data_atrakcja_dodatkowa, @Cena_atrakcja_dodatkowa, @Rodzaj_atrakcja_dodatkowa)" SelectCommand="SELECT * FROM [Atrakcja_dodatkowa]" UpdateCommand="UPDATE [Atrakcja_dodatkowa] SET [Data_atrakcja_dodatkowa] = @Data_atrakcja_dodatkowa, [Cena_atrakcja_dodatkowa] = @Cena_atrakcja_dodatkowa, [Rodzaj_atrakcja_dodatkowa] = @Rodzaj_atrakcja_dodatkowa WHERE [Id_atrakcja_dodatakowa] = @Id_atrakcja_dodatakowa">
        <DeleteParameters>
            <asp:Parameter Name="Id_atrakcja_dodatakowa" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Data_atrakcja_dodatkowa" Type="DateTime" />
            <asp:Parameter Name="Cena_atrakcja_dodatkowa" Type="String" />
            <asp:Parameter Name="Rodzaj_atrakcja_dodatkowa" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Data_atrakcja_dodatkowa" Type="DateTime" />
            <asp:Parameter Name="Cena_atrakcja_dodatkowa" Type="String" />
            <asp:Parameter Name="Rodzaj_atrakcja_dodatkowa" Type="String" />
            <asp:Parameter Name="Id_atrakcja_dodatakowa" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id_atrakcja_dodatakowa" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id_atrakcja_dodatakowa" HeaderText="Id_atrakcja_dodatakowa" ReadOnly="True" SortExpression="Id_atrakcja_dodatakowa" Visible="False" />
            <asp:BoundField DataField="Data_atrakcja_dodatkowa" HeaderText="Data atrakcja dodatkowa"  DataFormatString="{0:d}" SortExpression="Data_atrakcja_dodatkowa" ConvertEmptyStringToNull="False" />
            <asp:BoundField DataField="Cena_atrakcja_dodatkowa" HeaderText="Cena atrakcja dodatkowa" SortExpression="Cena_atrakcja_dodatkowa" />
            <asp:BoundField DataField="Rodzaj_atrakcja_dodatkowa" HeaderText="Rodzaj atrakcja dodatkowa" SortExpression="Rodzaj_atrakcja_dodatkowa" />
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
