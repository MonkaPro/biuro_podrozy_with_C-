<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="przegladaj_atrakcja_dodatkowa.aspx.cs" Inherits="Biuro_podrozy.Przegladanie_danych1.przegladaj_atrakcja_dodatkowa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Przeglądanie danych atrakcja dodatkowa</p>
    <p style="font-size: small; font-family: Arial, Helvetica, sans-serif">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Atrakcja_dodatkowa] ORDER BY [Data_atrakcja_dodatkowa]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Data_atrakcja_dodatkowa], [Rodzaj_atrakcja_dodatkowa], [Cena_atrakcja_dodatkowa] FROM [Atrakcja_dodatkowa] WHERE ([Id_atrakcja_dodatakowa] = @Id_atrakcja_dodatakowa)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Id_atrakcja_dodatakowa" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Data_atrakcja_dodatkowa" HeaderText="Data atrakcja dodatkowa" DataFormatString="{0:d}" SortExpression="Data_atrakcja_dodatkowa"/>
                <asp:BoundField DataField="Rodzaj_atrakcja_dodatkowa" HeaderText="Rodzaj atrakcja dodatkowa" SortExpression="Rodzaj_atrakcja_dodatkowa" />
                <asp:BoundField DataField="Cena_atrakcja_dodatkowa" HeaderText="Cena atrakcja dodatkowa" SortExpression="Cena_atrakcja_dodatkowa" />
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
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Rodzaj_atrakcja_dodatkowa" DataValueField="Id_atrakcja_dodatakowa">
        </asp:DropDownList>
    </p>
</asp:Content>
