<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin-Yemek_Düzenle.aspx.cs" Inherits="Admin_Yemek_Düzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style24 {
            text-align: right;
        }
        .auto-style23 {
            height: 26px;
            text-align: right;
        }
        .auto-style18 {
            height: 26px;
        }
        .auto-style22 {
            height: 26px;
            color: #F1F8E9;
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
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="270px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" style="color: #F1F8E9"><strong>Malzemeler:</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="270px" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Tarif:</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Width="270px" Height="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Kategori:</strong></td>
            <td class="auto-style18">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="275px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style24" style="color: #F1F8E9"><strong>Yemek Görüntü:</strong></td>
            <td class="auto-style18">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="273px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style18"><strong>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style25" Height="30px"  Text="Güncelle" Width="195px" OnClick="BtnGuncelle_Click" style="font-weight: bold; font-size: small" />
                </strong>
                </td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style18"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Height="30px" Text="Günün Yemeğini Seç" Width="195px" OnClick="Button1_Click" style="font-weight: bold; font-size: small" />
                </strong>
                </td>
        </tr>
    </table>
</asp:Content>

