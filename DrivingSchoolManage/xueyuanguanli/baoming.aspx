<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baoming.aspx.cs" Inherits="JXGL.xueyuanguanli.baoming" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学员报名</title>
</head>
<body>
    <form id="form1" runat="server">
<table width="98%" height="62" border="0" align="left" cellpadding="3" cellspacing="1" class="table">
  <tr class="back"> 
    <td  colspan="2" class="xingmu">学员报名    
     <td align="right">
     <a href ="/xueyuan.aspx" target=_self>返回上一菜单</a>
    </td>
  </tr>
  <tr class="back">
     <td align="center" class="hback"><!--提示信息或者其他信息--></td>
  </tr>
  <tr class="back"> 
    <td height="35" class="hback" colspan="2" align="center">
        <div style=" background-color:#99CCFF; border:1px solid #33CCFF; width:720px;"> 
    <div style=" color:#fff; font-size:25px; text-align:center; font-family:幼圆; font-weight:bold;">学员报名</div>
       <table>
         <tr>
           <td style="width:130px;">编号</td>
           <td align="left" >
              <asp:TextBox ID="txtstudentno" runat="server" Width="150px"></asp:TextBox>
           </td>
           <td style="height: 25px">报名时间</td>
           <td align="left" style="height: 25px">
             <asp:TextBox ID="txtsignupdate" runat="server" Width="150px" CssClass="Wdate"></asp:TextBox>
               <asp:CompareValidator ID="CompareValidator1" runat="server" 
                 ErrorMessage="日期格式必须为yyyy-mm-dd" Display="Dynamic" ControlToValidate="txtsignupdate" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                </td>
         </tr>
         <tr>
           <td>姓名</td>
           <td align="left">
             <asp:TextBox ID="txtstudentname" runat="server" Width="150px"></asp:TextBox>
           </td>
           <td align="left" colspan="2">联系电话
             <asp:TextBox ID="txtphone" runat="server" Width="150px"></asp:TextBox>
           </td>
         </tr>
         <tr>
         <td>年龄</td>
           <td align="left">
             <asp:TextBox ID="txtage" runat="server" Width="150px"></asp:TextBox>
           </td>
         </tr>
         <tr style="display:">
           <td style="height: 25px">学员备注信息</td>
           <td align="left" style="height: 25px" colspan="3">
             <asp:TextBox ID="txtremark" runat="server" TextMode="MultiLine" Rows="5" Width="380px"></asp:TextBox></td>
         </tr>
         <tr>
           <td colspan="2" align ="center">
               <asp:Button ID="Button1" runat="server" Text="我要报名" onclick="Button1_Click"/>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td> 
        </tr> 
</table>
    </form>
</body>
</html>
