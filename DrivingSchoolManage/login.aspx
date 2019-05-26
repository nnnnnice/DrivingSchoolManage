<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="JXGL.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <%--<div>--%>
    
       --------------------------------驾校管理系统登陆-----------------------------<br />
    <div style=" background-color:#99CCFF; border:1px solid #33CCFF; width:500px;"> 
        <div style=" color:#fff; font-size:25px; text-align:center; font-family:幼圆; font-weight:bold;">登录</div> 
       <table bgcolor="white"  style="width: 100%; height: 148px;" > 
        <tr> 
            <td align ="center"><asp:Label ID="lbid" runat="server" Text="用户名"></asp:Label></td> 
            <td > <asp:TextBox ID="txtid" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  
                    ErrorMessage="用户名不能为空" ControlToValidate="txtid"></asp:RequiredFieldValidator></td> 
        </tr> 
        <tr> 
            <td align="center"><asp:Label ID="lblName" runat="server" Text="密码"></asp:Label></td> 
            <td><asp:TextBox ID="txtName" runat="server" TextMode="Password"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  
                    ErrorMessage="密码不能为空" ControlToValidate="txtName"></asp:RequiredFieldValidator> 
            </td> 
        </tr> 
        <tr>
            <td align="center">用户身份</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonListRole" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">学员</asp:ListItem>
                    <asp:ListItem>教练</asp:ListItem>
                    <asp:ListItem>管理员</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
         <tr> 
            <td colspan="2" align="center">          
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登录" />&nbsp;&nbsp; 
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="取消" />
                </td> 
        </tr> 
          <tr> 
            <td>&nbsp;</td><td> 
            <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label> 
              <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource> 
            </td> 
        </tr> 
       </table> 
    </div> 
    </form> 
</body> 
</html> 
