<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            text-align: left;
        }
        .auto-style12 {
            text-decoration: underline;
        }
        .auto-style13 {
            text-align: left;
            text-decoration: underline;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Image ID="Image2" runat="server" Height="240px" ImageUrl='<%# Eval("YemekResim") %>' Width="470px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="background-color: #D7CCC8"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style8" ForeColor="#3E2723" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2"><span class="auto-style11"><span class="auto-style12"><strong>Tarif:</strong></span> </span>
                        <asp:Label ID="Label9" runat="server" ForeColor="#3E2723" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td><span class="auto-style13"><strong>Puan:</strong></span>&nbsp;
                        <asp:Label ID="Label10" runat="server" ForeColor="#3E2723" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                    <td><span class="auto-style13"><strong>Tarih:</strong></span>&nbsp;
                        <asp:Label ID="Label11" runat="server" ForeColor="#3E2723" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

