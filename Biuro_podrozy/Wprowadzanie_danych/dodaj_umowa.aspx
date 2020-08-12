<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="dodaj_umowa.aspx.cs" Inherits="Biuro_podrozy.Wprowadzanie_danych.dodaj_umowa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 52%;
            margin-right: 254px;
        }
        .auto-style2 {
            width: 148px;
        }
        .auto-style3 {
            width: 166px;
        }
    </style>
     <script type="text/javascript" src="/scripts/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/scripts/jquery-ui-1.12.1.min.js"></script>

<link rel="stylesheet" href="/content/themes/base/jquery-ui.min.css" />

<script type="text/javascript">
    $(function () {
        $('.date').datepicker({
            changeYear: true,  //Recently added
            changeMonth: true  //Recently added
        }
        );
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p title="Dodaj dane umowa">
        Dodawanie danych umowa
    </p>
    <table class="auto-style1">
        

        <tr>
            <td class="auto-style2">
                Data wyjazdu :</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="Data_wyjazdu_wycieczka" DataValueField="Id_wycieczka">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Wycieczka]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="nie wybrano daty wyjazdu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        

        <tr>
            <td class="auto-style2">
                Nazwisko sprzedawca:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Nazwisko_sprzedawca" DataValueField="Id_sprzedawca">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Sprzedawca]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList2" ErrorMessage="nie wybrano nazwiska przedawcy">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        

        <tr>
            <td class="auto-style2">
                Nazwisko uczestnika:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nazwisko_uczestnik" DataValueField="Id_uczestnik">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Uczestnicy]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList3" ErrorMessage="nie wybrano nazwiska uczestnika">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        

        <tr>
            <td class="auto-style2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Umowa] WHERE [Id_umowa] = @Id_umowa" InsertCommand="INSERT INTO [Umowa] ([Id_wycieczka], [Id_sprzedawca], [Id_uczestnik], [Data_zawarcia_umowa], [Data_platnosci_umowa], [Typ_platnosci_umowa], [Znizka]) VALUES (@Id_wycieczka, @Id_sprzedawca, @Id_uczestnik, @Data_zawarcia_umowa, @Data_platnosci_umowa, @Typ_platnosci_umowa, @Znizka)" SelectCommand="SELECT * FROM [Umowa]" UpdateCommand="UPDATE [Umowa] SET [Id_wycieczka] = @Id_wycieczka, [Id_sprzedawca] = @Id_sprzedawca, [Id_uczestnik] = @Id_uczestnik, [Data_zawarcia_umowa] = @Data_zawarcia_umowa, [Data_platnosci_umowa] = @Data_platnosci_umowa, [Typ_platnosci_umowa] = @Typ_platnosci_umowa, [Znizka] = @Znizka WHERE [Id_umowa] = @Id_umowa">
                    <DeleteParameters>
                        <asp:Parameter Name="Id_umowa" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="DropDownList3" Name="Id_wycieczka" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="Id_sprzedawca" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="Id_uczestnik" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox5" Name="Data_zawarcia_umowa" PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="TextBox6" Name="Data_platnosci_umowa" PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="TextBox3" Name="Typ_platnosci_umowa" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox4" Name="Znizka" PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Id_wycieczka" Type="Int32" />
                        <asp:Parameter Name="Id_sprzedawca" Type="Int32" />
                        <asp:Parameter Name="Id_uczestnik" Type="Int32" />
                        <asp:Parameter Name="Data_zawarcia_umowa" Type="DateTime" />
                        <asp:Parameter Name="Data_platnosci_umowa" Type="DateTime" />
                        <asp:Parameter Name="Typ_platnosci_umowa" Type="String" />
                        <asp:Parameter Name="Znizka" Type="Boolean" />
                        <asp:Parameter Name="Id_umowa" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                Data zawarcia umowy:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox5" runat="server" type="Date" TextMode="Date" class="date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="nie podano daty zawarcia umowy">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Data płatnoci:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox6" runat="server" type="Date" TextMode="Date" class="date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="nie podano daty płatności">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Typ płatności</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" Width="106px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="nie podoano płatności">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Zniżka:<br />
                <asp:Button ID="Dodaj" runat="server" Text="Dodaj" OnClick="Dodaj_Click" />
            </td>
            
            <td class="auto-style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="nie podano zniżki">*</asp:RequiredFieldValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr> 
       
        </table>
  
</asp:Content>
