<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin-Yorum_Detay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            height: 29px;
        }
        .auto-style19 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style20 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style21 {
            text-align: right;
        }
        .auto-style22 {
            height: 29px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style11">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22" style="color: #F1F8E9"><strong>Ad Soyad:</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #F1F8E9" class="auto-style21"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #F1F8E9" class="auto-style21"><strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="Txticerik" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #F1F8E9" class="auto-style21"><strong>Yemek:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style20" Height="30px" OnClick="BtnOnayla_Click" Text="Onayla" Width="135px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

