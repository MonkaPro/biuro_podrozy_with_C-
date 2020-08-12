<%@ Page Title="" Language="C#" MasterPageFile="~/Strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="dodaj_zaliczka.aspx.cs" Inherits="Biuro_podrozy.Wprowadzanie_danych.dodaj_zaliczka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 38%;
        }
        .auto-style2 {
            width: 131px;
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
    <p title="Dodaj dane zalicka">
        Dodawanie danych zaliczka
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Zaliczka] WHERE [Id_zaliczka] = @Id_zaliczka" InsertCommand="INSERT INTO [Zaliczka] ([Id_umowa], [Data_wplaty_zaliczla], [Kwota_zaliczka]) VALUES (@Id_umowa, @Data_wplaty_zaliczla, @Kwota_zaliczka)" SelectCommand="SELECT * FROM [Zaliczka]" UpdateCommand="UPDATE [Zaliczka] SET [Id_umowa] = @Id_umowa, [Data_wplaty_zaliczla] = @Data_wplaty_zaliczla, [Kwota_zaliczka] = @Kwota_zaliczka WHERE [Id_zaliczka] = @Id_zaliczka">
        <DeleteParameters>
            <asp:Parameter Name="Id_zaliczka" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id_umowa" Type="Int32" />
            <asp:ControlParameter ControlID="TextBox2" Name="Data_wplaty_zaliczla" PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="TextBox3" Name="Kwota_zaliczka" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id_umowa" Type="Int32" />
            <asp:Parameter Name="Data_wplaty_zaliczla" Type="DateTime" />
            <asp:Parameter Name="Kwota_zaliczka" Type="String" />
            <asp:Parameter Name="Id_zaliczka" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Uczestnicy]"></asp:SqlDataSource>
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Uczestnik wpłacający zaliczkę:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nazwisko_uczestnik" DataValueField="Id_uczestnik">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="nie wybrano uczestnika" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Data wpłaty zaliczki:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" type="Date" TextMode="Date" class="date"></asp:TextBox>
 
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="nie podano daty" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Kwota zaliczk:</td>

            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Dodaj" OnClick="Button1_Click" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="nie podano ceny" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr> 
        
    </table>
   
</asp:Content>
