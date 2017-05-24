<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileStreamTest.aspx.cs"
    Inherits="SBSPMS.FileStreamTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" /><br />
    <h4>
        遍历本地所有驱动器
    </h4>
    <asp:TreeView ID="TreeView1" runat="server"></asp:TreeView>
    </form>
</body>
</html>
