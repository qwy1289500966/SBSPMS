<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SBSPMS.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript" language="c#" runat="server"> 
        void Page_Init(Object sender,EventArgs e) {
            Interest.Items.Add("文学");
            Interest.Items.Add("音乐");
            Interest.Items.Add("旅游");
        }
        void AddToList_Clik(Object sender,EventArgs e) {
            Interest.Items.Add(Text1.Value);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    请选择你的爱好？<br />
        <select id="Interest" runat="server"></select>
        <p>向列表中添加爱好</p>
            <input type="text" id="Text1" runat="server"/>
            <input type="button" runat="server" value="添加" onserverclick="AddToList_Clik"/>
    </div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    用户名：<asp:TextBox ID="TextBox1" runat="server" /> 
    <asp:CheckBox ID="CheckBox1" Text="记住我" runat="server" />
    <br />
    密  码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"/>
    <br />
    <asp:Button ID="Button1" Text="登录" runat="server" onclick="Button1_Click" />
    <br />
    请选择你要登录的网站
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="0" Text="谷歌" />
        <asp:ListItem Value="1" Text="百度" />
        <asp:ListItem Value="2" Text="搜狗" />
    </asp:DropDownList>
    <br />
    <asp:Button ID="Button2" Text="确定" runat="server" onclick="Button2_Click"/>
    <br />
    用户类型：<asp:TextBox ID="TextBox3" runat="server" /> 
    <br />
    密码：<asp:TextBox ID="TextBox4" runat="server" TextMode="Password"/> 
    <br />
    <asp:Button ID="Button3" Text="登录" runat="server" onclick="Button3_Click" />
    <br />
    <strong><span class="style1">鲜花信息</span></strong>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        onsorting="GridView1_Sorting"/>
    <br />
    <asp:Label ID="Lable2" Text="请输入网址：" runat="server" />
    <asp:TextBox ID="TextBox10" runat="server" BorderStyle="Inset" BorderWidth="4" 
        AutoPostBack="true" ontextchanged="TextBox10_TextChanged"/><br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Visibel="false"/>
    </form>    
</body>
</html>
