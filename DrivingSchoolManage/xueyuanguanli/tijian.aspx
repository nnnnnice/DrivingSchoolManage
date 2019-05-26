<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tijian.aspx.cs" Inherits="JXGL.xueyuanguanli.tijian" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>体检登记</title>
    <style type="text/css">
        .style1
        {
            width: 124px;
        }
        .style2
        {
            width: 130px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<table width="98%" height="62" border="0" align="left" cellpadding="3" cellspacing="1" class="table">
  <tr class="back"> 
    <td  colspan="2" class="xingmu">体检登记    
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
    <div style=" color:#fff; font-size:25px; text-align:center; font-family:幼圆; font-weight:bold;">
        体检登记</div>
       <table>
         <tr>
           <td style="width:130px;">编号</td>
           <td align="left" >
              <asp:TextBox ID="textbox1" runat="server" Width="150px"></asp:TextBox>
           </td>
           <td class="style2">姓名</td>
           <td align="left">
             <asp:TextBox ID="textbox2" runat="server" Width="150px"></asp:TextBox>
           </td>
         </tr>
         <tr>
         <td style="width:130px;">身高(cm)</td>
           <td align="left" >
              <asp:TextBox ID="textbox3" runat="server" Width="150px"></asp:TextBox>
           </td>
         <td class="style2">左视力</td>
           <td align ="left">
             <asp:TextBox ID="textbox4" runat="server" Width ="75px"></asp:TextBox>
         右视力<asp:TextBox ID="textbox6" runat="server" Width ="75px"></asp:TextBox>
         </td>
         </tr>
         <tr>
         <td style="width:130px;">辨色力</td>
         <td align ="left">
             <asp:RadioButton ID="RadioButton2" runat="server"  Text="正常" Checked ="true" GroupName ="semang" />
             <asp:RadioButton ID="RadioButton1" runat="server"  Text="红绿色盲" GroupName ="semang" />
         </td>
         <td class="style2">听力</td>
         <td align ="left">
             <asp:RadioButton ID="RadioButton3" runat="server"  Text="正常" Checked ="true" GroupName ="hear"/>
             <asp:RadioButton ID="RadioButton4" runat="server"  Text="弱听" GroupName ="hear"/>
         </td>
         </tr>
         <tr>
         <td style="width:130px;">上肢</td>
         <td align ="left">
             <asp:RadioButton ID="RadioButton5" runat="server"  Text="正常" Checked ="true" GroupName ="leg"/>
             <asp:RadioButton ID="RadioButton6" runat="server"  Text="残疾" GroupName ="leg"/>
         </td>
         <td class="style2">下肢</td>
         <td align ="left">
             <asp:RadioButton ID="RadioButton7" runat="server"  Text="正常" Checked ="true" GroupName ="limb"/>
             <asp:RadioButton ID="RadioButton8" runat="server"  Text="残疾" GroupName ="limb"/>
         </td>
         </tr>
         <tr>
         <td style="width:130px;">躯干</td>
         <td align ="left">
             <asp:RadioButton ID="RadioButton9" runat="server"  Text="正常" Checked ="true" GroupName ="body"/>
             <asp:RadioButton ID="RadioButton10" runat="server"  Text="残疾" GroupName ="body"/>
         </td>
         </tr>
                  <tr style="display:">
           <td style="height: 25px">体检结果</td>
           <td align="left" style="height: 25px" colspan="3">
             <asp:TextBox ID="textbox5" runat="server" TextMode="MultiLine" Rows="5" Width="430px"></asp:TextBox></td>
         </tr>
         
         <tr>
           <td colspan="2" align ="center">
               <asp:Button ID="Button1" runat="server" Text="录入" onclick="Button1_Click" 
                   style="width: 40px"/>
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
