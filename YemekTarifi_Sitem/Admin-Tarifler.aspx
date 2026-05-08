<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin-Tarifler.aspx.cs" Inherits="Admin_Tarifler" %>

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
        .auto-style25 {
            width: 264px;
        }
        .auto-style21 {
            text-align: right;
            width: 1px;
        }
        
        .auto-style26 {
            text-align: right;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style18" ForeColor="#3E2723">
        <table class="auto-style11">
            <tr>
                <td class="auto-style22"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style24" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"/>
                    </strong></td>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style24" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"/>
                    </strong></td>
                <td><em><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;ONAYSIZ TARİF LİSTESİ</strong></em></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="525px">
            <ItemTemplate>
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style25">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" ForeColor="#F1F8E9" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td class="auto-style26">
                         <a href="Admin-Tarifler_Detay.aspx?Tarifid=<%#Eval("Tarifid") %>"> <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İkonlar/edit_12861675.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style18" ForeColor="#3E2723" style ="margin-top:10px;">
    <table class="auto-style11">
        <tr>
            <td class="auto-style22"><strong>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style24" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
            <td class="auto-style23"><strong>
                <asp:Button ID="Button4" runat="server" CssClass="auto-style24" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
            <td><em><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;ONAYLI TARİF LİSTESİ</strong></em></td>
        </tr>
    </table>
</asp:Panel>

        <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="525px">
            <ItemTemplate>
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style25">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" ForeColor="#F1F8E9" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td class="auto-style26">
                         <a href="Admin-Tarifler_Detay.aspx?Tarifid=<%#Eval("Tarifid") %>"> <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İkonlar/edit_12861675.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

    </asp:Content>

