<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin-Mesajlar.aspx.cs" Inherits="Admin_Mesajlar" %>

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
        .auto-style19 {
        text-align: right;
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
                <td><em><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MESAJ LİSTESİ</strong></em></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="525px">
            <ItemTemplate>
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style25">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" ForeColor="#F1F8E9" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td class="auto-style26">
                         <a href="Admin-Mesaj_Detay.aspx?Mesajid=<%#Eval("Mesajid") %>"> <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İkonlar/reading_11620299.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    </asp:Content>

