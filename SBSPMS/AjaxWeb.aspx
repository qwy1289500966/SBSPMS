<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxWeb.aspx.cs" Inherits="SBSPMS.AjaxWeb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">

        function GetResult(result) {
            document.getElementById("Text3").value = result;
        }
        function RefService() {
            var num1 = document.getElementById("Text1").value;
            var num2 = document.getElementById("Text2").value;
            var num3 = document.getElementById("Select1").value;
            alert("HelloWorld");
            WebService.GetTotal(num3, num1, num2, GetResult);
        }
        function jsCallWeb() {
            WebService1.HelloWorld(outResult);
        }        
        //输出结果  
        function outResult(result) {
            alert(result);          
        }  
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="WebService.asmx" />
            </Services>
        </asp:ScriptManager>
        请输入计算的两个数字<br />
        <input id="Text1" type="text" />
        <select id="Select1" name="D1">
            <option value="+" selected="selected">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>
        <input id="Text2" type="text" />
        <input id="Button1" type="button" value="=" onclick="return RefService()" />
        <input id="Text3" type="text" /></div>
    </form>
</body>
</html>
