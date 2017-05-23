<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyControl.ascx.cs" Inherits="SBSPMS.MyControl" %>
<style type="text/css">
    .style1
    {
        height: 23px;
    }
    .style2
    {
        width: 70%;
        height: 23px;
    }
    .style3
    {
        height: 30px;
    }
    .style4
    {
        width: 70%;
        height: 30px;
    }
</style>
<table style="width: 100%; text-align: center" border="0">
    <tr>
        <td style="text-align: left;">
        </td>
        <td style="text-align: left;">
            <strong><span style="font-size: 16pt; font-family: 宋体">修改房间信息</span></strong>
        </td>
    </tr>
    <tr>
        <td style="text-align: right;" class="style1">
            房号：
        </td>
        <td colspan="2" style="text-align: left;" class="style2">
            <asp:TextBox ID="txtNum" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="text-align: right">
            房型：
        </td>
        <td colspan="2" style="width: 70%; text-align: left;">
            <asp:DropDownList ID="drop" runat="server" Width="158px">
                <asp:ListItem Selected="true" Text="标准房" />
                <asp:ListItem Text="单人间" />
                <asp:ListItem Text="商务房" />
                <asp:ListItem Text="套房" />
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" class="style1">
            房态：
        </td>
        <td colspan="2" style="text-align: left;" class="style1">
            <asp:DropDownList ID="dropStatu" runat="server" Width="158px">
                <asp:ListItem Selected="true" Text="住客房" />
                <asp:ListItem Text="空房" />
                <asp:ListItem Text="退房" />
                <asp:ListItem Text="维修房" />
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="text-align: right" class="style3">
            预订状况：
        </td>
        <td colspan="3" style="text-align: left;" class="style4">
            <asp:RadioButtonList ID="rablBook" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="有" />
                <asp:ListItem Value="无" />
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="text-align: right;">
            床位：
        </td>
        <td colspan="2" style="width: 70%; text-align: left;">
            <asp:TextBox ID="txtBed" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="text-align: right;" class="style2">
            电视：
        </td>
        <td colspan="2" style="width: 70%; text-align: left;">
            <asp:RadioButtonList ID="rabTv" RepeatDirection="Horizontal" runat="server">
                <asp:ListItem Selected="true" Text="有" />
                <asp:ListItem Text="无" />
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td style="text-align:left;">
            <asp:Button ID="ButtonUpdate" Text="修改信息" runat="server" 
                onclick="ButtonUpdate_Click" />
            <asp:Label ID="Label1" ForeColor="red" Text="" runat="server" />
        </td>
    </tr>
</table>
