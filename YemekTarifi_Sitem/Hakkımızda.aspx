<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkımızda.aspx.cs" Inherits="Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style11 {
            font-size: large;
            text-align: center;
        }
        .auto-style12 {
            font-size: large;
            width: 522px;
        }
        .auto-style13 {
            font-size: large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style12" style="color: #3E2723; background-color: #D7CCC8;"><strong><em style="color: #3E2723">Hakkımızda</em></strong></td>
        </tr>
    </table>
    <p class="auto-style13" style="color: #3E2723">
        <asp:Image ID="Image1" runat="server" CssClass="auto-style10" Height="315px" ImageUrl="~/Kapak Resmi/Hakkımızda.jpeg" Width="500px" />
    </p>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>' ForeColor="#3E2723"></asp:Label>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

