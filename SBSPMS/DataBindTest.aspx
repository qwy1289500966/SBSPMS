<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataBindTest.aspx.cs" Inherits="SBSPMS.DataBindTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h3>
        变量的绑定
    </h3>
    你好：<asp:Label ID="Label1" Text="<%#Name %>" runat="server" /><br />
    登录时间：<asp:Label ID="Label2" Text="<%#LoginTime %>" runat="server" /><br />
    <h3>
        绑定表达式</h3>
    求整数1-100的总和及平均数<br />
    总和=<asp:Label Text="<%#sum %>" runat="server" />
    平均数=<asp:Label Text="<%#sum/100 %>" runat="server" /><br />
    <h3>
        绑定集合
    </h3>
    <asp:DataGrid ID="DataGrid1" runat="server" DataSource="<%#myArray %>">
    </asp:DataGrid><br />
    <h3>
        绑定方法
    </h3>
    (1-100整数和)*2=<asp:Label Text="<%#getSum() %>" runat="server" /><br />
    <h3>
        下拉控件的数据绑定<br />
    </h3>
    <asp:DropDownList runat="server" AutoPostBack="true" ID="DropDownList1"
        onselectedindexchanged="Unnamed5_SelectedIndexChanged">
    </asp:DropDownList><br />
    <asp:Label ID="Label3" runat="server" /><br />
    <h3>
        绑定到ListBox
    </h3>
    <asp:ListBox runat="server" ID="ListBox1" Height="88px">
    </asp:ListBox>
    </form>
</body>
</html>
