<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePanelTest.aspx.cs"
    Inherits="SBSPMS.UpdatePanelTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
        <br />
        请输入添加图书的信息
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                编号<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                书名<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                作者<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                出版社<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <asp:Button ID="Button1" runat="server" Text="添加" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
