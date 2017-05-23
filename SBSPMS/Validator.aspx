<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validator.aspx.cs" Inherits="SBSPMS.Validator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <strong>用户登录</strong><br />
    用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
        Display="Dynamic" ErrorMessage="用户名不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
        ErrorMessage="密码不能为空" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
    <br />
    确认密码：<asp:TextBox ID="TextBox3" runat="server" />
    <asp:CompareValidator ErrorMessage="二次密码输入不一致" ControlToValidate="TextBox3" Display="Dynamic"
        ControlToCompare="TextBox2" runat="server" /><br />
    请输入你的年龄：<br />
    <asp:TextBox ID="TextBox4" runat="server" />
    <asp:RangeValidator ErrorMessage="请输入1-150的整数！" ControlToValidate="TextBox4"
        runat="server" Display="Dynamic" Type="Integer" MaximumValue="150" MinimumValue="1" /><br />
    请输入你的身份证号码：<br />
    <asp:TextBox ID="TextBox5" runat="server" />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5"
        ErrorMessage="你输入的身份证号码格式不正确" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
    <br />
    <asp:Button ID="Button1" Text="登录" runat="server" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
    <asp:ValidationSummary runat="server" />
    </form>
</body>
</html>
