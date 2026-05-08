<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style20 {
            width: 101%;
            direction: ltr;
        }
        .auto-style19 {
            width: 497px;
            height: 20px;
            text-align: center;
        }
        .auto-style16 {
            height: 26px;
            width: 497px;
        }
        .auto-style13 {
            width: 497px;
            background-color: #D7CCC8;
        }
        .auto-style15 {
            width: 497px;
        }
        .auto-style12 {
            text-decoration: underline;
        }
        .auto-style18 {
            width: 103%;
        }
        .auto-style14 {
            height: 26px;
            width: 241px;
        }
        .auto-style11 {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style20">
            <tr>
                <td class="auto-style19">
                    <asp:Image ID="Image1" runat="server" Height="240px" ImageUrl='<%# Eval("YemekResim") %>' Width="470px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style13"><strong><a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style8" ForeColor="#3E2723" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"><span class="auto-style12"><strong style="color: #3E2723">Malzemeler:</strong></span>
                    <asp:Label ID="Label4" runat="server" ForeColor="#3E2723" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"><span class="auto-style12"><strong style="color: #3E2723">Tarif:</strong></span>
                    <asp:Label ID="Label5" runat="server" ForeColor="#3E2723" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <table class="auto-style18">
                        <tr>
                            <td class="auto-style14" style="color: #3E2723"><span class="auto-style12"><strong>Tarih:</strong></span>
                                <asp:Label ID="Label6" runat="server" ForeColor="#003300" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </td>
                            <td class="auto-style11" style="color: #3E2723"><span class="auto-style12"><strong>Puan:</strong></span>
                                <asp:Label ID="Label7" runat="server" ForeColor="#003300" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table class="auto-style18">
                        <tr>
                            <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #666633">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

