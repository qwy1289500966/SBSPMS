<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServerControl.aspx.cs"
    Inherits="SBSPMS.ServerControl" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
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
        AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" PageSize="2"
        OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="编号" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="书名" SortExpression="Name" />
            <asp:BoundField DataField="Author" HeaderText="作者" SortExpression="Author" />
            <asp:BoundField DataField="Press" HeaderText="出版社" SortExpression="Press" />
            <asp:CommandField HeaderText="操作" ShowEditButton="True" />
            <asp:CommandField HeaderText="操作" ShowDeleteButton="True" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <h3>
        DetailView显示数据
    </h3>
    <asp:DetailsView ID="DetailView1" runat="server" AllowPaging="True" AutoGenerateRows="False"
        DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="编号" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="书名" SortExpression="Name" />
            <asp:BoundField DataField="Author" HeaderText="作者" SortExpression="Author" />
            <asp:BoundField DataField="Press" HeaderText="出版社" SortExpression="Press" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <h4>
        Repeater模板显示数据
    </h4>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr>
                <td>
                    <%#DataBinder.Eval(Container.DataItem,"ID") %>
                </td>
                <td>
                    <%#DataBinder.Eval(Container.DataItem,"Name") %>
                </td>
                <td>
                    <%#DataBinder.Eval(Container.DataItem,"Author") %>
                </td>
                <td>
                    <%#DataBinder.Eval(Container.DataItem,"Press") %>
                </td>
            </tr>
        </ItemTemplate>
        <HeaderTemplate>
            <table>
                <tr>
                    <td>
                        <b>编号</b>
                    </td>
                    <td>
                        <b>书名</b>
                    </td>
                    <td>
                        <b>作者</b>
                    </td>
                    <td>
                        <b>出版社</b>
                    </td>
                </tr>
        </HeaderTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    <br />
    <h3>
        DataList绑定数据源
    </h3>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1"
        OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            ID:<asp:Label ID="IDLabel" runat="server" Text='<%#Eval("ID") %>' /><br />
            Name:<asp:Label ID="NameLabel" Text='<%#Eval("Name") %>' runat="server" /><br />
            <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server">查看</asp:LinkButton>
        </ItemTemplate>
        <SelectedItemTemplate>
            ID:<asp:Label ID="IDLabel" Text='<%#Eval("ID","{0}") %>' runat="server" /><br />
            Name:<asp:Label ID="NameLabel" Text='<%#Eval("Name","{0}") %>' runat="server" /><br />
            Author:<asp:Label ID="AuthorLabel" Text='<%#DataBinder.Eval(Container.DataItem,"Author") %>'
                runat="server" /><br />
            <%--Press:<asp:Label ID="Label1" Text='<%#DataBinder.Eval(Container.DataItem,"Press") %>' runat="server" />--%>
            Press:<asp:Label ID="PressLabel" Text='<%#Eval("Press") %>' runat="server" />
        </SelectedItemTemplate>
    </asp:DataList><br />
    <h3>
        ListView绑定数据
    </h3>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1"
        InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                </td>
                <td>
                    <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                </td>
                <td>
                    <asp:Label ID="PressLabel" runat="server" Text='<%# Eval("Press") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </td>
                <td>
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PressTextBox" runat="server" Text='<%# Bind("Press") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        未返回数据。
                    </td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                </td>
                <td>
                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PressTextBox" runat="server" Text='<%# Bind("Press") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                </td>
                <td>
                    <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                </td>
                <td>
                    <asp:Label ID="PressLabel" runat="server" Text='<%# Eval("Press") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    ID
                                </th>
                                <th runat="server">
                                    Name
                                </th>
                                <th runat="server">
                                    Author
                                </th>
                                <th runat="server">
                                    Press
                                </th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" PageSize="3" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                </td>
                <td>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                </td>
                <td>
                    <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                </td>
                <td>
                    <asp:Label ID="PressLabel" runat="server" Text='<%# Eval("Press") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
    <h3>
        图表控件
    </h3>
    <asp:Chart ID="Chart1" runat="server">
        <Series>
            <asp:Series Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
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
