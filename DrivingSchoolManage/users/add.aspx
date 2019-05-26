<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="JXGL.users.add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
 <table width="98%" height="62" border="0" align="left" cellpadding="3" cellspacing="1" class="table">
  <tr class="back"> 
    <td  colspan="2" class="xingmu">添加用户    
     <td align="right">
     <a href ="/chengji.aspx" target=_self>返回上一菜单</a>
    </td>
  </tr>
  <tr class="back">
     <td align="center" class="hback"><!--提示信息或者其他信息--></td>
  </tr>
  <tr class="back"> 
    <td height="35" class="hback" colspan="2" align="center">
        <div style=" background-color:#99CCFF; border:1px solid #33CCFF; width:720px;"> 
    <div style=" color:#fff; font-size:25px; text-align:center; font-family:幼圆; font-weight:bold;">添加用户</div>
       <table>
         <tr>
           <td style="width:130px;">用户编号</td>
           <td align="left" >
              <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
           </td>
         </tr>
         <tr>
           <td style ="width:130px;">用户名</td>
           <td align="left">
             <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
           </td>
           </tr>
         <tr>
           <td style="width:130px;">用户密码</td>
           <td align="left">
              <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
            </td>
         </tr>
         <tr>
           <td style="width:130px;">身份</td>
           <td align="left">
              <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
            </td>
           </tr>
          <tr>
           <td style="width:130px;">用户类型</td>
           <td align="left">
              <asp:TextBox ID="TextBox5" runat="server" Width="150px"></asp:TextBox>
            </td>
            </tr>
            <tr>
           <td style="width:130px;">功能</td>
           <td align="left">
              <asp:TextBox ID="TextBox6" runat="server" Width="150px"></asp:TextBox>
            </td>
            </tr>
         <tr>
           <td colspan="2" align ="center">
               <asp:Button ID="Button1" runat="server" Text="确认" onclick="Button1_Click"/>
             &nbsp;
               <asp:Button ID="Button2" runat="server" Text="清空" onclick="Button2_Click"/>
             </td>
         </tr>
       </table>
        <asp:Literal ID="ltlShowTips" runat="server"></asp:Literal></td>
  </tr>
    <tr> 
            <td class="style1"></td><td class="style1"> 
            <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label> 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
            </td> 
        </tr> 
</table>
    </form>
</body>
</html>
