<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="dodaj_wycieczka.aspx.cs" Inherits="Biuro_podrozy.Wprowadzanie_danych.dodaj_wycieczka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 592px;
        }
        .auto-style2 {
            width: 169px;
        }
        .auto-style3 {
            width: 169px;
            height: 13px;
        }
        .auto-style4 {
            height: 13px;
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
    <p title="Doaje dane wycieczka">
        Dodawanie danych wycieczka
    </p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Wycieczka] WHERE [Id_wycieczka] = @Id_wycieczka" InsertCommand="INSERT INTO [Wycieczka] ([Id_hotel], [Kraj_wycieczka], [Data_wyjazdu_wycieczka], [Data_powrotu_wycieczka], [Cena_jednostkowa_wycieczka], [Srodek_transportu], [Ilosc_miejsc_wycieczka], [Miejsca_zajete_wycieczka]) VALUES (@Id_hotel, @Kraj_wycieczka, @Data_wyjazdu_wycieczka, @Data_powrotu_wycieczka, @Cena_jednostkowa_wycieczka, @Srodek_transportu, @Ilosc_miejsc_wycieczka, @Miejsca_zajete_wycieczka)" SelectCommand="SELECT * FROM [Wycieczka]" UpdateCommand="UPDATE [Wycieczka] SET [Id_hotel] = @Id_hotel, [Kraj_wycieczka] = @Kraj_wycieczka, [Data_wyjazdu_wycieczka] = @Data_wyjazdu_wycieczka, [Data_powrotu_wycieczka] = @Data_powrotu_wycieczka, [Cena_jednostkowa_wycieczka] = @Cena_jednostkowa_wycieczka, [Srodek_transportu] = @Srodek_transportu, [Ilosc_miejsc_wycieczka] = @Ilosc_miejsc_wycieczka, [Miejsca_zajete_wycieczka] = @Miejsca_zajete_wycieczka WHERE [Id_wycieczka] = @Id_wycieczka">
                    <DeleteParameters>
                        <asp:Parameter Name="Id_wycieczka" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Id_hotel" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Kraj_wycieczka" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="Data_wyjazdu_wycieczka" PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="TextBox3" Name="Data_powrotu_wycieczka" PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="TextBox4" Name="Cena_jednostkowa_wycieczka" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox7" Name="Srodek_transportu" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox5" Name="Ilosc_miejsc_wycieczka" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox6" Name="Miejsca_zajete_wycieczka" PropertyName="Text" Type="Int32" />
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
                Nazwa hotelu:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nazwa_hotel" DataValueField="Id_hotel">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Hotel]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="nie wybrano hotelu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Kraj wycieczki:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="nie podano kraju">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Data wyjazdu:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"  type="Date" TextMode="Date" class="date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="nie podano daty wyjazdu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Data powrotu</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" type="Date" TextMode="Date" class="date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="nie podano daty powrotu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Cena:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="nie podano ceny">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Środek transportu:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="nie podano środka transpotu">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Ilość miejsc:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="nie podano ilości miejsc">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mejsca zajęte:<br />
                <asp:Button ID="Button1" runat="server" Text="Dodaj" OnClick="Button1_Click" />
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="nie podano ilości miejsc zajętych">*</asp:RequiredFieldValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
