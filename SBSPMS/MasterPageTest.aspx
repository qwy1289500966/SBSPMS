<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="MasterPageTest.aspx.cs" Inherits="SBSPMS.MasterPageTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server">商品类别管理</asp:LinkButton><br />
    <asp:LinkButton ID="LinkButton2" runat="server">商品信息管理</asp:LinkButton><br />
    <asp:LinkButton ID="LinkButton3" runat="server">商品订单管理</asp:LinkButton><br />
    <asp:LinkButton ID="LinkButton4" runat="server">用户信息管理</asp:LinkButton><br />
    <asp:LinkButton ID="LinkButton5" runat="server">个人资料管理</asp:LinkButton><br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Style="color: #00345a;
        font-weight: 700;" Text="欢迎进入后台管理！"></asp:Label>
</asp:Content>
