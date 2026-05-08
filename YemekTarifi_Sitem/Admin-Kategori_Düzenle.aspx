<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin-Kategori_Düzenle.aspx.cs" Inherits="Admin_Kategori_Detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            height: 26px;
        }
        .auto-style19 {
            height: 26px;
            color: #F1F8E9;
        }
        .auto-style21 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style22 {
            height: 26px;
            color: #F1F8E9;
            text-align: right;
        }
        .auto-style23 {
            height: 26px;
            text-align: right;
        }
        .auto-style24 {
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
            <td class="auto-style24" style="color: #F1F8E9"><strong>Kategori Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" style="color: #F1F8E9"><strong>Adet:</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Resim:</strong></td>
            <td class="auto-style18">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="237px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style18"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style21" Height="30px" OnClick="Button1_Click" Text="Güncelle" Width="135px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

