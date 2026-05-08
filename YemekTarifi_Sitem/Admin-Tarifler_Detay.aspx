<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin-Tarifler_Detay.aspx.cs" Inherits="Admin_Tarifler_Detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style22 {
            height: 29px;
            text-align: right;
        }
        .auto-style18 {
            height: 29px;
        }
        .auto-style21 {
            text-align: right;
        }
        .auto-style20 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
            font-size: medium;
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
            <td class="auto-style22" style="color: #F1F8E9"><strong>Tarif Ad:</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TxtAd" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #F1F8E9" class="auto-style21"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzeme" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #F1F8E9" class="auto-style21"><strong>Yapılış:</strong></td>
            <td>
                <asp:TextBox ID="Txtyapilis" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"><strong style="color: #F1F8E9">Tarif Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="256px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="color: #F1F8E9"><strong>Tarif Öneren:</strong></td>
            <td>
                <asp:TextBox ID="TxtOneren" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="color: #F1F8E9"><strong>Öneren Mail:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="color: #F1F8E9"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb5" Width="257px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style20" Height="30px" Text="Onayla" Width="135px" OnClick="BtnOnayla_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

