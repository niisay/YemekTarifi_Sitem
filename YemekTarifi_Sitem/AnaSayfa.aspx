<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            height: 27px;
            width: 497px;
        }
        
        .auto-style12 {
            text-decoration: underline;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style4">
                        <asp:Image ID="Image3" runat="server" Height="240px" ImageUrl='<%# Eval("YemekResim") %>' Width="470px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="background-color: #D7CCC8"><strong><a href='YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>'>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style8" ForeColor="#3E2723" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </a></strong></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2"><span class="auto-style12"><strong style="color: #3E2723">Malzemeler:</strong></span>&nbsp;<asp:Label ID="Label4" runat="server" ForeColor="#3E2723" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2"><span class="auto-style12"><strong style="color: #3E2723">Tarif:</strong></span>&nbsp;<asp:Label ID="Label5" runat="server" ForeColor="#3E2723" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style12"><strong>Tarih:</strong></span>
                        <asp:Label ID="Label6" runat="server" ForeColor="#003300" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </td>
                    <td><span class="auto-style12"><strong>Puan:</strong></span>
                        <asp:Label ID="Label7" runat="server" ForeColor="#003300" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #666633">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

