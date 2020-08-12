<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="edytuj_zaliczka.aspx.cs" Inherits="Biuro_podrozy.Modyfikowanie_danych.edytuj_zaliczka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p title="Edytuj dane zaliczka">
        Edytowanie danych zaliczka
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Zaliczka] WHERE [Id_zaliczka] = @Id_zaliczka" InsertCommand="INSERT INTO [Zaliczka] ([Id_umowa], [Data_wplaty_zaliczla], [Kwota_zaliczka]) VALUES (@Id_umowa, @Data_wplaty_zaliczla, @Kwota_zaliczka)" SelectCommand="SELECT * FROM [Zaliczka]" UpdateCommand="UPDATE [Zaliczka] SET [Id_umowa] = @Id_umowa, [Data_wplaty_zaliczla] = @Data_wplaty_zaliczla, [Kwota_zaliczka] = @Kwota_zaliczka WHERE [Id_zaliczka] = @Id_zaliczka">
        <DeleteParameters>
            <asp:Parameter Name="Id_zaliczka" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id_umowa" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Data_wplaty_zaliczla" />
            <asp:Parameter Name="Kwota_zaliczka" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id_umowa" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Data_wplaty_zaliczla" />
            <asp:Parameter Name="Kwota_zaliczka" Type="String" />
            <asp:Parameter Name="Id_zaliczka" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id_zaliczka" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
             <asp:BoundField DataField="Id_zaliczka" HeaderText="Id_zaliczka" InsertVisible="False" ReadOnly="True" SortExpression="Id_zaliczka" Visible="False" />
             <asp:BoundField DataField="Id_umowa" HeaderText="Id_umowa" SortExpression="Id_umowa" Visible="False" />
             <asp:BoundField DataField="Data_wplaty_zaliczla" HeaderText="Data wplaty zaliczla" DataFormatString="{0:d}" SortExpression="Data_wplaty_zaliczla" ConvertEmptyStringToNull="False" />
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
</asp:Content>
