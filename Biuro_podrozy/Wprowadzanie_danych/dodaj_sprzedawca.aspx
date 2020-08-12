<%@ Page Title="" Language="C#" MasterPageFile="~/strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="dodaj_sprzedawca.aspx.cs" Inherits="Biuro_podrozy.Wprowadzanie_danych.dodaj_sprzedawca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 31%;
        }
        .auto-style2 {
            width: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p title="Dodaj dane sprzedawca">
        Dodawanie danych sprzedawca
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Sprzedawca] WHERE [Id_sprzedawca] = @Id_sprzedawca" InsertCommand="INSERT INTO [Sprzedawca] ([Imie_sprzedawca], [Nazwisko_sprzedawca], [Telefon_sprzedawca], [Email_sprzedawca]) VALUES (@Imie_sprzedawca, @Nazwisko_sprzedawca, @Telefon_sprzedawca, @Email_sprzedawca)" SelectCommand="SELECT * FROM [Sprzedawca]" UpdateCommand="UPDATE [Sprzedawca] SET [Imie_sprzedawca] = @Imie_sprzedawca, [Nazwisko_sprzedawca] = @Nazwisko_sprzedawca, [Telefon_sprzedawca] = @Telefon_sprzedawca, [Email_sprzedawca] = @Email_sprzedawca WHERE [Id_sprzedawca] = @Id_sprzedawca">
        <DeleteParameters>
            <asp:Parameter Name="Id_sprzedawca" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Imie_sprzedawca" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="Nazwisko_sprzedawca" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="Telefon_sprzedawca" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="Email_sprzedawca" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Imie_sprzedawca" Type="String" />
            <asp:Parameter Name="Nazwisko_sprzedawca" Type="String" />
            <asp:Parameter Name="Telefon_sprzedawca" Type="String" />
            <asp:Parameter Name="Email_sprzedawca" Type="String" />
            <asp:Parameter Name="Id_sprzedawca" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Imię:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="nie podano imienia">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Nazwisko:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="nie podano nazwiska">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Telefon:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="nie podano telefonu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email:<br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dodaj" />
                <br />
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="nie podano maila">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="podany adres mail nie jest poprawny" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
