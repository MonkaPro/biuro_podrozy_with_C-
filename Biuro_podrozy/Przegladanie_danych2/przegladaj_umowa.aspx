<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="przegladaj_umowa.aspx.cs" Inherits="Biuro_podrozy.Przegladanie_danych2.przegladaj_umowa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p title="Przeglądaj dane umowa">
        Przeglądanie danych umowa
    </p>
     <p title="Przeglądaj dane umowa">
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Umowa] ORDER BY [Data_zawarcia_umowa]"></asp:SqlDataSource>
         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Data_zawarcia_umowa" DataValueField="Id_wycieczka">
         </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Umowa.Id_wycieczka, Umowa.Id_sprzedawca, Umowa.Id_uczestnik, Umowa.Data_zawarcia_umowa, Umowa.Data_platnosci_umowa, Umowa.Typ_platnosci_umowa, Umowa.Znizka, Wycieczka.Kraj_wycieczka, Sprzedawca.Nazwisko_sprzedawca, Uczestnicy.Nazwisko_uczestnik FROM Umowa INNER JOIN Wycieczka ON Umowa.Id_wycieczka = Wycieczka.Id_wycieczka INNER JOIN Sprzedawca ON Umowa.Id_sprzedawca = Sprzedawca.Id_sprzedawca INNER JOIN Uczestnicy ON Umowa.Id_uczestnik = Uczestnicy.Id_uczestnik WHERE (Umowa.Id_umowa = @Id_umowa)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList1" Name="Id_umowa" PropertyName="SelectedValue" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="Id_sprzedawca" HeaderText="Id_sprzedawca" SortExpression="Id_sprzedawca" Visible="False" />
                 <asp:BoundField DataField="Id_uczestnik" HeaderText="Id_uczestnik" SortExpression="Id_uczestnik" Visible="False" />
                 <asp:BoundField DataField="Data_zawarcia_umowa" HeaderText="Data zawarcia umowa" DataFormatString="{0:d}" SortExpression="Data_zawarcia_umowa" />
                 <asp:BoundField DataField="Data_platnosci_umowa" HeaderText="Data platnosci umowa" DataFormatString="{0:d}" SortExpression="Data_platnosci_umowa" />
                 <asp:BoundField DataField="Typ_platnosci_umowa" HeaderText="Typ platnosci umowa" SortExpression="Typ_platnosci_umowa" />
                 <asp:BoundField DataField="Znizka" HeaderText="Znizka" SortExpression="Znizka" />
                 <asp:BoundField DataField="Kraj_wycieczka" HeaderText="Kraj wycieczka" SortExpression="Kraj_wycieczka" />
                 <asp:BoundField DataField="Nazwisko_sprzedawca" HeaderText="Nazwisko sprzedawca" SortExpression="Nazwisko_sprzedawca" />
                 <asp:BoundField DataField="Nazwisko_uczestnik" HeaderText="Nazwisko uczestnik" SortExpression="Nazwisko_uczestnik" />
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
     <br />
    </asp:Content>
