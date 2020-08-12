<%@ Page Title="" Language="C#" MasterPageFile="~/strona_wzorcowa.Master" AutoEventWireup="true" CodeBehind="dodaj_atrakcja_dodatkowa.aspx.cs" Inherits="Biuro_podrozy.Wprowadzanie_danych.dodaj_atrakcja_dodatkowa1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 21%;
        }
        .auto-style2 {
            width: 77px;
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
    <p>
        Dodawanie danych atrakcja dodatkowa</p>
    <p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Data:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" type="Date" TextMode="Date" class="date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Cena:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Rodzaj:<br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dodaj" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Atrakcja_dodatkowa] WHERE [Id_atrakcja_dodatakowa] = @Id_atrakcja_dodatakowa" InsertCommand="INSERT INTO [Atrakcja_dodatkowa] ([Data_atrakcja_dodatkowa], [Cena_atrakcja_dodatkowa], [Rodzaj_atrakcja_dodatkowa]) VALUES (@Data_atrakcja_dodatkowa, @Cena_atrakcja_dodatkowa, @Rodzaj_atrakcja_dodatkowa)" SelectCommand="SELECT * FROM [Atrakcja_dodatkowa]" UpdateCommand="UPDATE [Atrakcja_dodatkowa] SET [Data_atrakcja_dodatkowa] = @Data_atrakcja_dodatkowa, [Cena_atrakcja_dodatkowa] = @Cena_atrakcja_dodatkowa, [Rodzaj_atrakcja_dodatkowa] = @Rodzaj_atrakcja_dodatkowa WHERE [Id_atrakcja_dodatakowa] = @Id_atrakcja_dodatakowa">
                        <DeleteParameters>
                            <asp:Parameter Name="Id_atrakcja_dodatakowa" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="Data_atrakcja_dodatkowa" PropertyName="Text" Type="DateTime" />
                            <asp:ControlParameter ControlID="TextBox2" Name="Cena_atrakcja_dodatkowa" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="Rodzaj_atrakcja_dodatkowa" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Data_atrakcja_dodatkowa" Type="dateTime" />
                         
                            <asp:Parameter Name="Cena_atrakcja_dodatkowa" Type="String" />
                            <asp:Parameter Name="Rodzaj_atrakcja_dodatkowa" Type="String" />
                            <asp:Parameter Name="Id_atrakcja_dodatakowa" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
