<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="przegladaj_rezydent.aspx.cs" Inherits="Biuro_podrozy.Przegladanie_danych2.przegladaj_rezydent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p title="Przeglądaj dane rezydent">
        Przeglądanie danych rezydent
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Rezdent] ORDER BY [Nazwisko_rezdent]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Nazwisko_rezdent" DataValueField="Id_rezdent">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Rezdent]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="Brak danych do wyświetlenia" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
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
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Imie_rezdent], [Nazwisko_rezdent], [Telefon_rezdent], [Email_rezdent] FROM [Rezdent] WHERE ([Id_rezdent] = @Id_rezdent)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Id_rezdent" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
