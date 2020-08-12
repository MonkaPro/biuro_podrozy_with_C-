<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="edytuj_wycieczka.aspx.cs" Inherits="Biuro_podrozy.Modyfikowanie_danych.edytuj_wycieczka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p title="Edytuj dane wycieczka">
        Edytowanie danych wycieczka
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Wycieczka] WHERE [Id_wycieczka] = @Id_wycieczka" InsertCommand="INSERT INTO [Wycieczka] ([Id_hotel], [Kraj_wycieczka], [Data_wyjazdu_wycieczka], [Data_powrotu_wycieczka], [Cena_jednostkowa_wycieczka], [Srodek_transportu], [Ilosc_miejsc_wycieczka], [Miejsca_zajete_wycieczka]) VALUES (@Id_hotel, @Kraj_wycieczka, @Data_wyjazdu_wycieczka, @Data_powrotu_wycieczka, @Cena_jednostkowa_wycieczka, @Srodek_transportu, @Ilosc_miejsc_wycieczka, @Miejsca_zajete_wycieczka)" SelectCommand="SELECT * FROM [Wycieczka]" UpdateCommand="UPDATE [Wycieczka] SET [Id_hotel] = @Id_hotel, [Kraj_wycieczka] = @Kraj_wycieczka, [Data_wyjazdu_wycieczka] = @Data_wyjazdu_wycieczka, [Data_powrotu_wycieczka] = @Data_powrotu_wycieczka, [Cena_jednostkowa_wycieczka] = @Cena_jednostkowa_wycieczka, [Srodek_transportu] = @Srodek_transportu, [Ilosc_miejsc_wycieczka] = @Ilosc_miejsc_wycieczka, [Miejsca_zajete_wycieczka] = @Miejsca_zajete_wycieczka WHERE [Id_wycieczka] = @Id_wycieczka">
        <DeleteParameters>
            <asp:Parameter Name="Id_wycieczka" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id_hotel" Type="Int32" />
            <asp:Parameter Name="Kraj_wycieczka" Type="String" />
            <asp:Parameter Name="Data_wyjazdu_wycieczka" Type="DateTime" />
            <asp:Parameter Name="Data_powrotu_wycieczka" Type="DateTime" />
            <asp:Parameter Name="Cena_jednostkowa_wycieczka" Type="Int32" />
            <asp:Parameter Name="Srodek_transportu" Type="String" />
            <asp:Parameter Name="Ilosc_miejsc_wycieczka" Type="Int32" />
            <asp:Parameter Name="Miejsca_zajete_wycieczka" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id_hotel" Type="Int32" />
            <asp:Parameter Name="Kraj_wycieczka" Type="String" />
            <asp:Parameter Name="Data_wyjazdu_wycieczka" Type="DateTime" />
            <asp:Parameter Name="Data_powrotu_wycieczka" Type="DateTime" />
            <asp:Parameter Name="Cena_jednostkowa_wycieczka" Type="Int32" />
            <asp:Parameter Name="Srodek_transportu" Type="String" />
            <asp:Parameter Name="Ilosc_miejsc_wycieczka" Type="Int32" />
            <asp:Parameter Name="Miejsca_zajete_wycieczka" Type="Int32" />
            <asp:Parameter Name="Id_wycieczka" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id_wycieczka" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id_wycieczka" HeaderText="Id_wycieczka" InsertVisible="False" ReadOnly="True" SortExpression="Id_wycieczka" Visible="False" />
            <asp:BoundField DataField="Id_hotel" HeaderText="Id_hotel" SortExpression="Id_hotel" Visible="False" />
            <asp:BoundField DataField="Kraj_wycieczka" HeaderText="Kraj wycieczka" SortExpression="Kraj_wycieczka" />
            <asp:BoundField DataField="Data_wyjazdu_wycieczka" HeaderText="Data wyjazdu wycieczka" DataFormatString="{0:d}" SortExpression ="Data_wyjazdu_wycieczka" />
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
</asp:Content>
