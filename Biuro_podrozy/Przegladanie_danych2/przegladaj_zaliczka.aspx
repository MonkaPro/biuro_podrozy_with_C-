<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="przegladaj_zaliczka.aspx.cs" Inherits="Biuro_podrozy.Przegladanie_danych2.przegladaj_zaliczka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p title="Przegladaj dane zaliczka">
        Przeglądanie danych zaliczka
    </p>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Data_wplaty_zaliczla" DataValueField="Id_zaliczka" AutoPostBack="True"></asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="Brak danych do wyświetlenia" ForeColor="Black" GridLines="Vertical" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Data_wplaty_zaliczla" HeaderText="Data wplaty zaliczla" SortExpression="Data_wplaty_zaliczla" />
            <asp:BoundField DataField="Kwota_zaliczka" HeaderText="Kwota zaliczka" SortExpression="Kwota_zaliczka" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id_umowa], [Data_wplaty_zaliczla], [Kwota_zaliczka] FROM [Zaliczka] WHERE ([Id_zaliczka] = @Id_zaliczka)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Id_zaliczka" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Zaliczka] ORDER BY [Data_wplaty_zaliczla]"></asp:SqlDataSource>
</asp:Content>
