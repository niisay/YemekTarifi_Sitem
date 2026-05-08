<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin-GununYemegi.aspx.cs" Inherits="Admin_GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style18 {
            background-color: #C5E1A5;
        }
        .auto-style22 {
            width: 34px;
        }
        .auto-style24 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style23 {
            width: 35px;
        }
        .auto-style20 {
            width: 219px;
        }
        .auto-style21 {
            text-align: right;
            width: 1px;
        }
        .auto-style19 {
        text-align: right;
    }

        .auto-style25 {
            text-align: right;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style18" ForeColor="#3E2723">
        <table class="auto-style11">
            <tr>
                <td class="auto-style22"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style24" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style24" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YEMEK LİSTESİ</em></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="525px">
            <ItemTemplate>
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" ForeColor="#F1F8E9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td class="auto-style25"><a href='Admin-Yemek_Düzenle.aspx?Yemekid=<%#Eval("Yemekid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İkonlar/question_1296622.png" Width="40px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    </asp:Content>

