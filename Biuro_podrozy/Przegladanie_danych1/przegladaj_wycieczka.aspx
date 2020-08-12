<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="przegladaj_wycieczka.aspx.cs" Inherits="Biuro_podrozy.Przegladanie_danych1.przegladaj_wycieczka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p title="Przeglądaj dane wycieczka">
        Przeglądanie danych wycieczka
    </p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Data_wyjazdu_wycieczka" DataValueField="Id_wycieczka"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Wycieczka]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" EmptyDataText="Brak danych do wyświetlenia" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Kraj_wycieczka" HeaderText="Kraj wycieczka" SortExpression="Kraj_wycieczka" />
            <asp:BoundField DataField="Data_wyjazdu_wycieczka" HeaderText="Data wyjazdu wycieczka" DataFormatString="{0:d}" SortExpression="Data_wyjazdu_wycieczka" />
            <asp:BoundField DataField="Data_powrotu_wycieczka" HeaderText="Data powrotu wycieczka" DataFormatString="{0:d}" SortExpression="Data_powrotu_wycieczka" />
            <asp:BoundField DataField="Cena_jednostkowa_wycieczka" HeaderText="Cena jednostkowa wycieczka" SortExpression="Cena_jednostkowa_wycieczka" />
            <asp:BoundField DataField="Srodek_transportu" HeaderText="Srodek transportu" SortExpression="Srodek_transportu" />
            <asp:BoundField DataField="Ilosc_miejsc_wycieczka" HeaderText="Ilosc miejsc wycieczka" SortExpression="Ilosc_miejsc_wycieczka" />
            <asp:BoundField DataField="Miejsca_zajete_wycieczka" HeaderText="Miejsca zajete wycieczka" SortExpression="Miejsca_zajete_wycieczka" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Kraj_wycieczka], [Data_wyjazdu_wycieczka], [Data_powrotu_wycieczka], [Cena_jednostkowa_wycieczka], [Srodek_transportu], [Ilosc_miejsc_wycieczka], [Miejsca_zajete_wycieczka] FROM [Wycieczka] WHERE ([Id_wycieczka] = @Id_wycieczka)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Id_wycieczka" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Wycieczka] ORDER BY [Data_wyjazdu_wycieczka]"></asp:SqlDataSource>
</asp:Content>
