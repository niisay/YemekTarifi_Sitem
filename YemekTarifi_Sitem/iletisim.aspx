<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        text-align: right;
    }
        .auto-style13 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-style: italic;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td colspan="2" style="color: #3E2723; background-color: #D7CCC8;" class="auto-style8"><em><strong>Mesaj Paneli</strong></em></td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td  style="color: #3E2723"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TxtGonderen" runat="server" Width="230px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td  style="color: #3E2723"><strong>Mail Adresiniz:</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" Width="230px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td  style="color: #3E2723"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="TxtKonu" runat="server" Width="230px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td  style="color: #3E2723"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="TxtMesaj" runat="server" Width="230px" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td><strong>
            <em>
            <asp:Button ID="Button1" runat="server" BackColor="#66BB6A" CssClass="auto-style13" ForeColor="#3E2723" Text="Gönder" Width="165px" Height="30px" OnClick="Button1_Click" />
            </em>
            </strong></td>
    </tr>
</table>
</asp:Content>

