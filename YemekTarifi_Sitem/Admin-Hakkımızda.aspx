<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin-Hakkımızda.aspx.cs" Inherits="Admin_Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style18 {
            background-color: #C5E1A5;
        }
        .auto-style27 {
            width: 101%;
            height: 27px;
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
        .auto-style29 {
        margin-left: 240px;
    }
    .auto-style30 {
        border: 2px solid #456879;
        border-radius: 10px;
        height: 22px;
        width: 230px;
        font-weight: bold;
        font-size: medium;
    }
    .auto-style31 {
        text-align: center;
        margin-left: 240px;
    }
    .auto-style32 {
        border: 2px solid #456879;
        border-radius: 10px;
        height: 22px;
        width: 230px;
        font-size: small;
        font-style: italic;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style18" ForeColor="#3E2723">
        <table class="auto-style27">
            <tr>
                <td class="auto-style22"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" CssClass="auto-style24" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style24" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; HAKKIMIZDA</em></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style11">
            <tr>
                <td class="auto-style29"><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style32" Height="200px" TextMode="MultiLine" Width="516px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style30" Height="30px" Text="Güncelle" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

