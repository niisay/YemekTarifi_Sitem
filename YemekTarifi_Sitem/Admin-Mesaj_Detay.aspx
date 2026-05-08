<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin-Mesaj_Detay.aspx.cs" Inherits="Admin_Mesaj_Detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style19 {
            margin-left: 0px;
        }
        .auto-style20 {
            width: 179px;
        }
        .auto-style21 {
            text-align: right;
            width: 179px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21" style="color: #F1F8E9"><strong>Mesaj Gönderen: </strong> </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="color: #F1F8E9"><strong>Başlık:</strong></td>
            <td><asp:TextBox ID="TextBox5" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="color: #F1F8E9"><strong>Mail Adresi: </strong> </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="color: #F1F8E9"><strong>Mesaj İçerik:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

