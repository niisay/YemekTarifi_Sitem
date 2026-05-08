<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin-Yemekler.aspx.cs" Inherits="Admin_Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            background-color: #C5E1A5;
        }
    .auto-style19 {
        text-align: right;
    }
        .auto-style20 {
            width: 219px;
        }
        .auto-style21 {
            text-align: right;
            width: 1px;
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
                        <td class="auto-style27">
                           <a href ="Admin-Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %> &islem=sil"> <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/İkonlar/delete-button_5676146.png" Width="40px" /></a>
                        </td>
                        <td class="auto-style27">
                         
                          <a href="Admin-Yemek_Düzenle.aspx?Yemekid=<%#Eval("Yemekid") %>">  <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İkonlar/refresh_853674.png" Width="40px" /></a>
                         
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
                <td><strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; YEMEK EKLEME</em></strong></td>
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
            <td style="color: #F1F8E9" class="auto-style27"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #F1F8E9" class="auto-style27"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #F1F8E9" class="auto-style27"><strong>Yemek Tarifi:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #F1F8E9" class="auto-style27"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="305px">
                    <asp:ListItem Value="0">1</asp:ListItem>
                    <asp:ListItem Value="1">Çorbalar</asp:ListItem>
                    <asp:ListItem Value="2">Sebze Yemekleri</asp:ListItem>
                    <asp:ListItem Value="3">Et Yemekleri</asp:ListItem>
                    <asp:ListItem Value="4">Makarna Çeşitleri</asp:ListItem>
                    <asp:ListItem Value="5">Tavuk Yemekleri</asp:ListItem>
                    <asp:ListItem Value="6">Salatalar</asp:ListItem>
                    <asp:ListItem Value="7">Pastalar</asp:ListItem>
                    <asp:ListItem Value="8">İçecekler</asp:ListItem>
                    <asp:ListItem Value="9">Tatlılar</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style27"><strong style="color: #F1F8E9">Görüntü Ekle:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="302px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style26" Height="30px" OnClick="BtnEkle_Click" Text="Ekle" Width="155px" />
                </strong></td>
        </tr>
    </table></asp:Panel>
    </asp:Content>



