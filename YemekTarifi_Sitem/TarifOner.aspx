<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style10 {
            text-align: center;
            text-decoration: underline;
            height: 29px;
        }
        .auto-style11 {
            height: 29px;
        }
        .auto-style13 {
            height: 33px;
        }
        .auto-style14 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-style: italic;
        }
        .auto-style15 {
            text-align: left;
            text-decoration: none;
            width: 714px;
        }
        .auto-style17 {
            height: 33px;
            width: 714px;
        }
        .auto-style18 {
            text-align: left;
            width: 714px;
        }
        .auto-style19 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style15" style="color: #3E2723"><strong>Tarif Ad:</strong></td>
                        <td>
                            <asp:TextBox ID="TxtTarifAd" runat="server" Width="280px" CssClass="auto-style19"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15" style="color: #3E2723"><strong>Malzemeler:</strong></td>
                        <td>
                            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="280px" CssClass="tb5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15" style="color: #3E2723"><strong>Yapılış:</strong></td>
                        <td>
                            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="280px" CssClass="tb5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15" style="color: #3E2723"><strong>Resim:</strong></td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="280px" CssClass="tb5" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15" style="color: #3E2723"><strong>Öneren Kişi:</strong></td>
                        <td>
                            <asp:TextBox ID="TxtOnerenKisi" runat="server" Width="280px" CssClass="tb5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td  style="color: #3E2723" class="auto-style18"><strong>Mail Adresi:</strong></td>
                        <td class="auto-style11">
                            <asp:TextBox ID="TxtMail" runat="server" Width="280px" CssClass="tb5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17"></td>
                        <td class="auto-style13"><strong>
                            <em>
                            <asp:Button ID="Button1" runat="server" BackColor="#66BB6A" CssClass="auto-style14" ForeColor="#3E2723" Text="Tarif Öner" Width="175px" OnClick="Button1_Click" Height="30px" />
                            </em>
                            </strong></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

