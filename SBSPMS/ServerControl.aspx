<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServerControl.aspx.cs"
    Inherits="SBSPMS.ServerControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h3>
        使用DataSet绑定GridView
    </h3>
    <asp:GridView ID="GridView1" runat="server" />
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1" PageSize="2" 
        onselectedindexchanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="编号" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="书名" SortExpression="Name" />
            <asp:BoundField DataField="Author" HeaderText="作者" SortExpression="Author" />
            <asp:BoundField DataField="Press" HeaderText="出版社" SortExpression="Press" />
            <asp:CommandField HeaderText="操作" ShowEditButton="True" />
            <asp:CommandField HeaderText="操作" ShowDeleteButton="True" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView><br />
    <asp:DetailsView ID="DetailView1" runat="server" AllowPaging="True" AutoGenerateRows="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="编号" ReadOnly="True" 
                SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="书名" SortExpression="Name" />
            <asp:BoundField DataField="Author" HeaderText="作者" SortExpression="Author" />
            <asp:BoundField DataField="Press" HeaderText="出版社" SortExpression="Press" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView><br />
    <h4>
        Repeater模板显示数据
    </h4>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <tr>
            <td><%#DataBinder.Eval(Container.DataItem,"ID") %></td>            
            <td><%#DataBinder.Eval(Container.DataItem,"Name") %></td>            
            <td><%#DataBinder.Eval(Container.DataItem,"Author") %></td>            
            <td><%#DataBinder.Eval(Container.DataItem,"Press") %></td>            
        </tr>
    </ItemTemplate>
    <HeaderTemplate>
        <table>
            <tr>
                <td><b>编号</b></td>
                <td><b>书名</b></td>
                <td><b>作者</b></td>
                <td><b>出版社</b></td>
            </tr>
    </HeaderTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SBSPMSConnectionString %>"
        SelectCommand="SELECT   ID, Name, Author, Press
FROM      BookInfo" DeleteCommand="DELETE FROM BookInfo
WHERE   (ID = @ID)" InsertCommand="INSERT INTO BookInfo
                (ID, Name, Author, Press)
VALUES   (@ID,@Name,@Author,@Press)" UpdateCommand="UPDATE  BookInfo
SET         Name = @Name, Author = @Author, Press = @Press
WHERE   (ID = @ID)">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" />
            <asp:Parameter Name="Name" />
            <asp:Parameter Name="Author" />
            <asp:Parameter Name="Press" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" />
            <asp:Parameter Name="Author" />
            <asp:Parameter Name="Press" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
