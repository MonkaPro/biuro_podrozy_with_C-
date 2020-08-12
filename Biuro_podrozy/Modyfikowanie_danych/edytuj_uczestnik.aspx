<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="edytuj_uczestnik.aspx.cs" Inherits="Biuro_podrozy.Modyfikowanie_danych.edytuj_uczestnik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p title="Edytuj dane uczestnik">
        Edytowanie danych uczestnik
    </p>
    <p title="Edytuj dane uczestnik">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Uczestnicy] WHERE [Id_uczestnik] = @Id_uczestnik" InsertCommand="INSERT INTO [Uczestnicy] ([Imie_uczestnik], [Nazwisko_uczestnik], [Ubezpieczenie], [Telefon_uczestnik], [Miejscowosc_uczestnik], [Nr_lokalu_uczestnik], [Ulica_uczestnik], [kod_pocztowy_uczestnik], [Email_uczestnik]) VALUES (@Imie_uczestnik, @Nazwisko_uczestnik, @Ubezpieczenie, @Telefon_uczestnik, @Miejscowosc_uczestnik, @Nr_lokalu_uczestnik, @Ulica_uczestnik, @kod_pocztowy_uczestnik, @Email_uczestnik)" SelectCommand="SELECT * FROM [Uczestnicy]" UpdateCommand="UPDATE [Uczestnicy] SET [Imie_uczestnik] = @Imie_uczestnik, [Nazwisko_uczestnik] = @Nazwisko_uczestnik, [Ubezpieczenie] = @Ubezpieczenie, [Telefon_uczestnik] = @Telefon_uczestnik, [Miejscowosc_uczestnik] = @Miejscowosc_uczestnik, [Nr_lokalu_uczestnik] = @Nr_lokalu_uczestnik, [Ulica_uczestnik] = @Ulica_uczestnik, [kod_pocztowy_uczestnik] = @kod_pocztowy_uczestnik, [Email_uczestnik] = @Email_uczestnik WHERE [Id_uczestnik] = @Id_uczestnik">
            <DeleteParameters>
                <asp:Parameter Name="Id_uczestnik" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Imie_uczestnik" Type="String" />
                <asp:Parameter Name="Nazwisko_uczestnik" Type="String" />
                <asp:Parameter Name="Ubezpieczenie" Type="String" />
                <asp:Parameter Name="Telefon_uczestnik" Type="String" />
                <asp:Parameter Name="Miejscowosc_uczestnik" Type="String" />
                <asp:Parameter Name="Nr_lokalu_uczestnik" Type="String" />
                <asp:Parameter Name="Ulica_uczestnik" Type="String" />
                <asp:Parameter Name="kod_pocztowy_uczestnik" Type="String" />
                <asp:Parameter Name="Email_uczestnik" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Imie_uczestnik" Type="String" />
                <asp:Parameter Name="Nazwisko_uczestnik" Type="String" />
                <asp:Parameter Name="Ubezpieczenie" Type="String" />
                <asp:Parameter Name="Telefon_uczestnik" Type="String" />
                <asp:Parameter Name="Miejscowosc_uczestnik" Type="String" />
                <asp:Parameter Name="Nr_lokalu_uczestnik" Type="String" />
                <asp:Parameter Name="Ulica_uczestnik" Type="String" />
                <asp:Parameter Name="kod_pocztowy_uczestnik" Type="String" />
                <asp:Parameter Name="Email_uczestnik" Type="String" />
                <asp:Parameter Name="Id_uczestnik" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id_uczestnik" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id_uczestnik" HeaderText="Id_uczestnik" InsertVisible="False" ReadOnly="True" SortExpression="Id_uczestnik" Visible="False" />
                <asp:BoundField DataField="Imie_uczestnik" HeaderText="Imie uczestnik" SortExpression="Imie_uczestnik" />
                <asp:BoundField DataField="Nazwisko_uczestnik" HeaderText="Nazwisko uczestnik" SortExpression="Nazwisko_uczestnik" />
                <asp:BoundField DataField="Ubezpieczenie" HeaderText="Ubezpieczenie" SortExpression="Ubezpieczenie" />
                <asp:BoundField DataField="Telefon_uczestnik" HeaderText="Telefon uczestnik" SortExpression="Telefon_uczestnik" />
                <asp:BoundField DataField="Miejscowosc_uczestnik" HeaderText="Miejscowosc uczestnik" SortExpression="Miejscowosc_uczestnik" />
                <asp:BoundField DataField="Nr_lokalu_uczestnik" HeaderText="Nr lokalu uczestnik" SortExpression="Nr_lokalu_uczestnik" />
                <asp:BoundField DataField="Ulica_uczestnik" HeaderText="Ulica uczestnik" SortExpression="Ulica_uczestnik" />
                <asp:BoundField DataField="kod_pocztowy_uczestnik" HeaderText="kod pocztowy uczestnik" SortExpression="kod_pocztowy_uczestnik" />
                <asp:BoundField DataField="Email_uczestnik" HeaderText="Email uczestnik" SortExpression="Email_uczestnik" />
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
