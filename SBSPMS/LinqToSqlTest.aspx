<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LinqToSqlTest.aspx.cs"
    Inherits="SBSPMS.LinqToSqlTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    请输入姓名<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br />
    <asp:GridView ID="GridView2" runat="server"></asp:GridView>
    学号<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
    姓名<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
    电话<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
    地址<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
    城市<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
    <asp:Button ID="Button2" runat="server" Text="添加" onclick="Button2_Click"/><br />
    <asp:GridView ID="GridView3" runat="server"></asp:GridView><br />
    姓名<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><br />
    电话<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br />
    地址<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><br />
    城市<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox><br />
    <asp:Button ID="Button3" runat="server" Text="更新" onclick="Button3_Click"/>
    <asp:Button ID="Button4" runat="server" Text="删除" onclick="Button4_Click"/><br />
    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
        DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                SortExpression="ID" />
            <asp:BoundField DataField="StuName" HeaderText="StuName" 
                SortExpression="StuName" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        </Columns>
    </asp:GridView>
    花名<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    价格范围：<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    -<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
    <asp:Button ID="Button5" runat="server" Text="搜索" />
    <br />
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Id" DataSourceID="LinqDataSource2">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                SortExpression="Id" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Discount" HeaderText="Discount" 
                SortExpression="Discount" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="Hits" HeaderText="Hits" SortExpression="Hits" />
            <asp:BoundField DataField="Sales" HeaderText="Sales" SortExpression="Sales" />
        </Columns>
    </asp:GridView>
    <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="LinqDataSource2">
    <asp:SearchExpression DataFields="Name" SearchType="StartsWith">
        <asp:ControlParameter controlID="TextBox10"/>
    </asp:SearchExpression>
    <asp:RangeExpression DataField="Price" MaxType="Inclusive" MinType="Inclusive">
        <asp:ControlParameter ControlID="TextBox11"/>
        <asp:ControlParameter ControlID="TextBox12"/>
    </asp:RangeExpression>
    </asp:QueryExtender>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="SBSPMS.DataClasses1DataContext" EnableDelete="True" 
        EnableInsert="True" EnableUpdate="True" EntityTypeName="" 
        TableName="Students">
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
        ContextTypeName="SBSPMS.DataClasses1DataContext" EntityTypeName="" 
        TableName="Flower">
    </asp:LinqDataSource>
    </form>
</body>
</html>
