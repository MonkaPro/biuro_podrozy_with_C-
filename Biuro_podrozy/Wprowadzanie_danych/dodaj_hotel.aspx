<%@ Page Title="" Language="C#" MasterPageFile="~/strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="dodaj_hotel.aspx.cs" Inherits="Biuro_podrozy.Wprowadzanie_danych.dodaj_hotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 465px;
        }
        .auto-style2 {
            width: 147px;
        }
        .auto-style3 {
            width: 246px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p title="Dodaj dane hotelu">
        Dodawanie danych hotelu
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Hotel] WHERE [Id_hotel] = @Id_hotel" InsertCommand="INSERT INTO [Hotel] ([Nazwa_hotel], [Standard_hotel], [Telefon_hotel], [Email_hotel], [Strona_internetowa_hotel], [Miejscowosc_hotel], [Ulica_hotel], [Nr_lokalu_hotel], [Kod_pocztowy_hotel]) VALUES (@Nazwa_hotel, @Standard_hotel, @Telefon_hotel, @Email_hotel, @Strona_internetowa_hotel, @Miejscowosc_hotel, @Ulica_hotel, @Nr_lokalu_hotel, @Kod_pocztowy_hotel)" SelectCommand="SELECT * FROM [Hotel]" UpdateCommand="UPDATE [Hotel] SET [Nazwa_hotel] = @Nazwa_hotel, [Standard_hotel] = @Standard_hotel, [Telefon_hotel] = @Telefon_hotel, [Email_hotel] = @Email_hotel, [Strona_internetowa_hotel] = @Strona_internetowa_hotel, [Miejscowosc_hotel] = @Miejscowosc_hotel, [Ulica_hotel] = @Ulica_hotel, [Nr_lokalu_hotel] = @Nr_lokalu_hotel, [Kod_pocztowy_hotel] = @Kod_pocztowy_hotel WHERE [Id_hotel] = @Id_hotel">
        <DeleteParameters>
            <asp:Parameter Name="Id_hotel" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Nazwa_hotel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="Standard_hotel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="Telefon_hotel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="Email_hotel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox5" Name="Strona_internetowa_hotel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox6" Name="Miejscowosc_hotel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox7" Name="Ulica_hotel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox8" Name="Nr_lokalu_hotel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox9" Name="Kod_pocztowy_hotel" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nazwa_hotel" Type="String" />
            <asp:Parameter Name="Standard_hotel" Type="String" />
            <asp:Parameter Name="Telefon_hotel" Type="String" />
            <asp:Parameter Name="Email_hotel" Type="String" />
            <asp:Parameter Name="Strona_internetowa_hotel" Type="String" />
            <asp:Parameter Name="Miejscowosc_hotel" Type="String" />
            <asp:Parameter Name="Ulica_hotel" Type="String" />
            <asp:Parameter Name="Nr_lokalu_hotel" Type="String" />
            <asp:Parameter Name="Kod_pocztowy_hotel" Type="String" />
            <asp:Parameter Name="Id_hotel" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    &nbsp;<table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;Nazwa:&nbsp;</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="nie podano nazwy">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Standard:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" Width="125px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="nie podano standardu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Telefon:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="nie podano telefonu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="nie podano maila">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="podany adres email nie jest poprawny" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Stona internetowa:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="nie podano strony">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Miejscowość:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="nie podano miejscowości">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Ulica:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="nie podano ulicy">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Numer lokalu:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="nie podano numeru lokalu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Kod pocztowy:<br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dodaj" />
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="nie podano kodu pocztowego">*</asp:RequiredFieldValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
