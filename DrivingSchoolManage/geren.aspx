<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="geren.aspx.cs" Inherits="JXGL.geren" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <table cellSpacing=0 cellPadding=0 width="100%" >
  <tr height=56>
      <td style="FONT-WEIGHT: bold;PADDING-TOP: 24px"</td>&nbsp;驾校管理系统</td>
    <td style="FONT-WEIGHT: bold;PADDING-TOP: 20px" 
      align=middle>欢迎您：<%=Session ["username"] %> &nbsp;&nbsp;身份：<%= Session ["jobname"] %>  &nbsp;&nbsp; 
      <a onclick="if (confirm('确定要退出吗？')) return true; else return false;" 
      href="/login.aspx" target=_top>退出系统</a> 
    </td>
    <td align=right width=268>&nbsp;</td></tr></table>
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
  <tr bgColor=#1c5db6 height=4>
    <td></td></tr>
    <tr>     
    <td align="right">
     <a href ="/main.aspx" target=_self>返回上一菜单</a>
    </td>
    </tr>
    </table>
    <table align =center> 
            <tr> 
            <td align ="left"><asp:Label ID="lbid" runat="server" Text="用户名"></asp:Label></td> 
            <td > <asp:TextBox ID="txtid" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  
                    ErrorMessage="用户名不能为空" ControlToValidate="txtid"></asp:RequiredFieldValidator></td> 
        </tr> 
        <tr> 
            <td> 
                旧密码： 
            </td> 
            <td> 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                    ControlToValidate="TextBox1">*</asp:RequiredFieldValidator><span id="msg"></span> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                新密码： 
            </td> 
            <td> 
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                    ControlToValidate="TextBox2">*</asp:RequiredFieldValidator> 
            </td> 
        </tr> 
        <tr> 
            <td> 
                确认新密码： 
            </td> 
            <td> 
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"
                    Display="Dynamic" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator><asp:CompareValidator 
                        ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="TextBox2"
                        ControlToValidate="TextBox3">两次密码不一致</asp:CompareValidator> 
            </td> 
        </tr> 
        <tr> 
            <td colspan="2" align="center"> 
                <asp:Button ID="Button1" runat="server" Text="修改" onclick="Button1_Click" /> 
            </td> 
        </tr> 
    </table> 

    </form>
</body>
</html>
