<%@ Page Title="" Language="C#" MasterPageFile="~/strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="dodaj_rezydent.aspx.cs" Inherits="Biuro_podrozy.Wprowadzanie_danych.dodaj_rezydent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 32%;
            height: 163px;
            margin-right: 0px;
        }
        .auto-style2 {
            width: 97px;
        }
        .auto-style3 {
            width: 97px;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p title="Dodaj dane rezydent">
        Dodawanie danych rezydent
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Rezdent] WHERE [Id_rezdent] = @Id_rezdent" InsertCommand="INSERT INTO [Rezdent] ([Imie_rezdent], [Nazwisko_rezdent], [Telefon_rezdent], [Email_rezdent]) VALUES (@Imie_rezdent, @Nazwisko_rezdent, @Telefon_rezdent, @Email_rezdent)" SelectCommand="SELECT * FROM [Rezdent]" UpdateCommand="UPDATE [Rezdent] SET [Imie_rezdent] = @Imie_rezdent, [Nazwisko_rezdent] = @Nazwisko_rezdent, [Telefon_rezdent] = @Telefon_rezdent, [Email_rezdent] = @Email_rezdent WHERE [Id_rezdent] = @Id_rezdent">
        <DeleteParameters>
            <asp:Parameter Name="Id_rezdent" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Imie_rezdent" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="Nazwisko_rezdent" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="Telefon_rezdent" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="Email_rezdent" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Imie_rezdent" Type="String" />
            <asp:Parameter Name="Nazwisko_rezdent" Type="String" />
            <asp:Parameter Name="Telefon_rezdent" Type="String" />
            <asp:Parameter Name="Email_rezdent" Type="String" />
            <asp:Parameter Name="Id_rezdent" Type="Int32" />
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
            <td class="auto-style3">Email:<br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dodaj" />
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="nie podano maila">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="podany adres email nie jest poprawny" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        
    </table>
    
</asp:Content>
