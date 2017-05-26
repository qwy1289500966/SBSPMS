<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SBSPMS.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <fieldset>
        <legend>注册信息</legend>
        <p>
            <label for="name">
                用户名</label><br />
            <input type="text" id="name" name="name" tabindex="1" class="txt" />
        </p>
        <p>
            <label for="email">
                登录邮箱</label><br />
            <input type="text" id="email" name="email" tabindex="2" class="txt" />
        </p>
        <p>
            <label for="pwd">
                登录密码</label><br />
            <input type="password" id="pwd" name="pwd" tabindex="3" class="txt" />
        </p>
        <p>
            <input type="checkbox" id="remeber" tabindex="4" style="background-color: #FF0000;" />
            <label for="remeber">
            </label>
        </p>
        <p>
            <input type="submit" value="提交注册" tabindex="5" class="but" />
            <input name="" type="reset" value="全部重置" class="but" />
        </p>
    </fieldset>
    </form>
</body>
</html>
