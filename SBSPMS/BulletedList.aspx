<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BulletedList.aspx.cs" Inherits="SBSPMS.BulletedList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Numbered" 
            DisplayMode="LinkButton" onclick="BulletedList1_Click">
            <asp:ListItem Text="中国达人秀" />
            <asp:ListItem Text="超级女声" />
            <asp:ListItem Text="我型我秀" />
            <asp:ListItem Text="舞林争霸" />
        </asp:BulletedList>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
    </form>
</body>
</html>
