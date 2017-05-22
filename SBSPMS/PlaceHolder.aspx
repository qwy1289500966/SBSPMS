<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceHolder.aspx.cs" Inherits="SBSPMS.PlaceHolder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    请输入添加控件组的数量<br />
    <asp:TextBox ID="TextBox1" runat="server" /><br />
    <asp:Button ID="Button1" Text="确定" runat="server" onclick="Button1_Click" /><br />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server" />
    </form>
</body>
</html>
