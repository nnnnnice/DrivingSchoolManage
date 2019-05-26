<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jiaoxue.aspx.cs" Inherits="JXGL.jiaoxue" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
  <title>教学管理界面</title>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
    <LINK href="css/admin.css" type="text/css" rel="stylesheet">
</head>
<body>
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
    </table>
    <p>
      <a href ="jiaoxue2/fenpei.aspx" target=_self>教练分配登记</a>
      <a href ="jiaoxue2/fenpei_chaxun.aspx" target=_self>教练分配查询</a>
      <a href ="jiaoxue2/yueche.aspx" target=_self>学员约车登记</a>
      <a href ="jiaoxue2/yueche_chaxun.aspx" target=_self>学员约车查询</a>
      <a href ="/main.aspx" target=_self>返回上一菜单</a>
      </p>
</body>
</html>

