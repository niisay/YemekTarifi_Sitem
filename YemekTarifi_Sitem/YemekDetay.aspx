<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            font-size: xx-small;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            color: #3E2723;
            width: 173px;
        }
        .auto-style14 {
            text-align: right;
            width: 173px;
        }
        .auto-style15 {
            width: 173px;
        }
        .auto-style16 {
            color: #3E2723;
            text-align: right;
            width: 173px;
        }
        .auto-style19 {
            width: 100%;
            height: 229px;
        }
        .auto-style20 {
            color: #3E2723;
            text-align: right;
            width: 173px;
            height: 110px;
        }
        .auto-style21 {
            height: 110px;
        }
        .auto-style23 {
            height: 27px;
        }
        .auto-style24 {
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
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style11" ForeColor="#3E2723" Text="Label"></asp:Label>
    <br />
    </strong>
    <table class="auto-style1">
        <tr>
            <td class="auto-style23"></td>
        </tr>
    </table>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" ForeColor="#3E2723" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" ForeColor="#3E2723" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style10" ForeColor="#3E2723" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #666633">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div style="background-color: #D7CCC8; color: #3E2723;"><em><strong>Yorum Yapma Paneli</strong></em></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style19">
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14" style="color: #3E2723"><strong>Ad Soyad:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="230px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="230px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Yorumunuz:</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="230px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"><strong style="color: #3E2723">Puanınız:</strong></td>
                <td>
                    <asp:TextBox ID="TxtPuan" runat="server" CssClass="tb5" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td><strong><em>
                    <asp:Button ID="Button1" runat="server" BackColor="#66BB6A" CssClass="auto-style24" ForeColor="#3E2723" Height="30px" OnClick="Button1_Click" Text="Yorum Yap" Width="165px" />
                    &nbsp;</em></strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

