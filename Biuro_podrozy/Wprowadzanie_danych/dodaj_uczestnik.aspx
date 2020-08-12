<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="dodaj_uczestnik.aspx.cs" Inherits="Biuro_podrozy.Wprowadzanie_danych.dodaj_uczestnik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 33%;
        }
        .auto-style2 {
            width: 115px;
        }
        .auto-style3 {
            width: 450px;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p title="Dodaj dane uczestnik">
        Dodawanie danych uczestnika</p>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Uczestnicy] WHERE [Id_uczestnik] = @Id_uczestnik" InsertCommand="INSERT INTO [Uczestnicy] ([Imie_uczestnik], [Nazwisko_uczestnik], [Ubezpieczenie], [Telefon_uczestnik], [Miejscowosc_uczestnik], [Nr_lokalu_uczestnik], [Ulica_uczestnik], [kod_pocztowy_uczestnik], [Email_uczestnik]) VALUES (@Imie_uczestnik, @Nazwisko_uczestnik, @Ubezpieczenie, @Telefon_uczestnik, @Miejscowosc_uczestnik, @Nr_lokalu_uczestnik, @Ulica_uczestnik, @kod_pocztowy_uczestnik, @Email_uczestnik)" SelectCommand="SELECT * FROM [Uczestnicy]" UpdateCommand="UPDATE [Uczestnicy] SET [Imie_uczestnik] = @Imie_uczestnik, [Nazwisko_uczestnik] = @Nazwisko_uczestnik, [Ubezpieczenie] = @Ubezpieczenie, [Telefon_uczestnik] = @Telefon_uczestnik, [Miejscowosc_uczestnik] = @Miejscowosc_uczestnik, [Nr_lokalu_uczestnik] = @Nr_lokalu_uczestnik, [Ulica_uczestnik] = @Ulica_uczestnik, [kod_pocztowy_uczestnik] = @kod_pocztowy_uczestnik, [Email_uczestnik] = @Email_uczestnik WHERE [Id_uczestnik] = @Id_uczestnik">
        <DeleteParameters>
            <asp:Parameter Name="Id_uczestnik" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Imie_uczestnik" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="Nazwisko_uczestnik" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="DropDownList1" Name="Ubezpieczenie" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="Telefon_uczestnik" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="Miejscowosc_uczestnik" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox5" Name="Nr_lokalu_uczestnik" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox6" Name="Ulica_uczestnik" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox7" Name="kod_pocztowy_uczestnik" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox8" Name="Email_uczestnik" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Imie_uczestnik" Type="String" />
            <asp:Parameter Name="Nazwisko_uczestnik" Type="String" />
            <asp:Parameter Name="Ubezpieczenie" Type="Boolean" />
            <asp:Parameter Name="Telefon_uczestnik" Type="String" />
            <asp:Parameter Name="Miejscowosc_uczestnik" Type="String" />
            <asp:Parameter Name="Nr_lokalu_uczestnik" Type="String" />
            <asp:Parameter Name="Ulica_uczestnik" Type="String" />
            <asp:Parameter Name="kod_pocztowy_uczestnik" Type="String" />
            <asp:Parameter Name="Email_uczestnik" Type="String" />
            <asp:Parameter Name="Id_uczestnik" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Imię:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="nie podano imienia">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Nazwisko:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="nie podano nazwiska">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Ubezpieczenie:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="100px">
                    <asp:ListItem>Tak</asp:ListItem>
                    <asp:ListItem>Nie</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="nie podano informacji o ubezpieczeniu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Telefon:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="nie podano telefonu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Miejscowość:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="nie podano miejscowości">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Numer lokalu:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="nie podano numeru lokalu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Ulica:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="nie podano ulicy">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Kod pocztowy:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox7" runat="server" Height="22px" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="nie podano kodu pocztowego">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email:<br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dodaj" />
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" ErrorMessage="nie podano maila">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox8" ErrorMessage="podany adres email nie jest poprawny" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
