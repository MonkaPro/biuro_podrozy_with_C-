<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="edytuj_rezydent.aspx.cs" Inherits="Biuro_podrozy.Modyfikowanie_danych.edytuj_rezydent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p title="Edytuj dane rezydent">
        Edytowanie danych rezydent
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Rezdent] WHERE [Id_rezdent] = @Id_rezdent" InsertCommand="INSERT INTO [Rezdent] ([Imie_rezdent], [Nazwisko_rezdent], [Telefon_rezdent], [Email_rezdent]) VALUES (@Imie_rezdent, @Nazwisko_rezdent, @Telefon_rezdent, @Email_rezdent)" SelectCommand="SELECT * FROM [Rezdent]" UpdateCommand="UPDATE [Rezdent] SET [Imie_rezdent] = @Imie_rezdent, [Nazwisko_rezdent] = @Nazwisko_rezdent, [Telefon_rezdent] = @Telefon_rezdent, [Email_rezdent] = @Email_rezdent WHERE [Id_rezdent] = @Id_rezdent">
        <DeleteParameters>
            <asp:Parameter Name="Id_rezdent" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Imie_rezdent" Type="String" />
            <asp:Parameter Name="Nazwisko_rezdent" Type="String" />
            <asp:Parameter Name="Telefon_rezdent" Type="String" />
            <asp:Parameter Name="Email_rezdent" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Imie_rezdent" Type="String" />
            <asp:Parameter Name="Nazwisko_rezdent" Type="String" />
            <asp:Parameter Name="Telefon_rezdent" Type="String" />
            <asp:Parameter Name="Email_rezdent" Type="String" />
            <asp:Parameter Name="Id_rezdent" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id_rezdent" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id_rezdent" HeaderText="Id_rezdent" InsertVisible="False" ReadOnly="True" SortExpression="Id_rezdent" Visible="False" />
            <asp:BoundField DataField="Imie_rezdent" HeaderText="Imie rezdent" SortExpression="Imie_rezdent" />
            <asp:BoundField DataField="Nazwisko_rezdent" HeaderText="Nazwisko rezdent" SortExpression="Nazwisko_rezdent" />
            <asp:BoundField DataField="Telefon_rezdent" HeaderText="Telefon rezdent" SortExpression="Telefon_rezdent" />
            <asp:BoundField DataField="Email_rezdent" HeaderText="Email rezdent" SortExpression="Email_rezdent" />
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
