<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="JXGL.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 175px;
        }
        .style2
        {
            width: 175px;
            height: 36px;
        }
        .style3
        {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
    <%--<div>--%>
    <br />
    <br />
    <br />
      <br />
        <br />
        <div style="margin: 0px auto; background-color: #FFCC99; border: 4px solid #FFCC99; width: 500px;" 
            align="center" >
            <div style="color: #fff; font-size: 25px; text-align: center; font-family: 幼圆; font-weight: bold;">
                登录</div>
            <table bgcolor="white" style="border-color: #FFCC99; width: 100%; height: 246px;" align="center">
                <tr>
                    <td align="center" class="style1">
                        <asp:Label ID="lbid" runat="server" Text="用户名：" Font-Size="12pt"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="用户名不能为空"
                            ControlToValidate="txtid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style1">
                        <asp:Label ID="lblPwd" runat="server" Text="密码："></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="密码不能为空"
                            ControlToValidate="txtPwd"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style1">
                        用户身份：
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonListRole" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">学员</asp:ListItem>
                            <asp:ListItem>教练</asp:ListItem>
                            <asp:ListItem>管理员</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" 
                            BackColor="#FFCC99" BorderColor="#FFCC99" Width="79px" />
                    </td>
                    <td align="left">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="取消" 
                            BackColor="#FFCC99" BorderColor="#FFCC99" Width="79px" />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
