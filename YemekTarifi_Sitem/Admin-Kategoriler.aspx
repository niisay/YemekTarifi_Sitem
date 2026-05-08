<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin-Kategoriler.aspx.cs" Inherits="Admin_Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            background-color: #C5E1A5;
        }
    .auto-style19 {
        text-align: right;
    }
        .auto-style22 {
            width: 34px;
        }
        .auto-style23 {
            width: 35px;
        }
        .auto-style24 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style26 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style27 {
            width: 101%;
            height: 27px;
        }

        .auto-style29 {
            width: 1px;
        }

        .auto-style32 {
            text-align: right;
        }
        .auto-style34 {
            width: 235px;
        }

        .auto-style35 {
            height: 26px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style18" ForeColor="#3E2723">
        <table class="auto-style27">
            <tr>
                <td class="auto-style22"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" CssClass="auto-style24" />
                    </strong></td>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style24" Height="30px" OnClick="Button4_Click" Text="-" Width="30px" />
                    </strong></td>
                <td><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KATEGORİ LİSTESİ</em></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="525px">
            <ItemTemplate>
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style34">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" ForeColor="#F1F8E9" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style29">
                            &nbsp;</td>
                        <td class="auto-style32"><a href='Admin-Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %> &amp;islem=sil'>
                            <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İkonlar/delete-button_5676146.png" Width="40px" />
                            </a></td>
                        <td class="auto-style32"><a href='Admin-Kategori_Düzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İkonlar/refresh_853674.png" Width="40px" />
                            </a></td>
                        <td class="auto-style32">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl='<%# Eval("KategoriResim") %>' Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style18" ForeColor="#3E2723" style="margin-top:10px;">
        <table class="auto-style11">
            <tr>
                <td class="auto-style22"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style24" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style24" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KATEGORİ EKLEME</em></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
    <table class="auto-style11">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #F1F8E9" class="auto-style32"><strong>Kategori Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #F1F8E9" class="auto-style32"><strong>Kategori İkon:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="235px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style26" Height="30px" Text="Ekle" Width="135px" OnClick="BtnEkle_Click" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style35"></td>
            <td class="auto-style35"></td>
        </tr>
    </table></asp:Panel>
    </asp:Content>

