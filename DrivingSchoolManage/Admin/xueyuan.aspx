<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xueyuan.aspx.cs" Inherits="JXGL.xueyuan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ѧԱ�������</title>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
    <LINK href="css/admin.css" type="text/css" rel="stylesheet">
</head>
<body>
<table cellSpacing=0 cellPadding=0 width="100%" >
  <tr height=56>
      <td style="FONT-WEIGHT: bold;PADDING-TOP: 24px"</td>&nbsp;��У����ϵͳ</td>
    <td style="FONT-WEIGHT: bold;PADDING-TOP: 20px" 
      align=middle>��ӭ����<%=Session ["username"] %> &nbsp;&nbsp;��ݣ�<%= Session ["jobname"] %>  &nbsp;&nbsp; 
      <a onclick="if (confirm('ȷ��Ҫ�˳���')) return true; else return false;" 
      href="/login.aspx" target=_top>�˳�ϵͳ</a> 
    </td>
    <td align=right width=268>&nbsp;</td></tr></table>
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
  <tr bgColor=#1c5db6 height=4>
    <td></td></tr>
    </table>
    <p>
      <a href ="xueyuanguanli/baoming.aspx" target=_self>�����Ǽ�</a>
      <a href ="xueyuanguanli/baoming_chaxun.aspx" target=_self>������ѯ</a>
      <a href ="xueyuanguanli/tijian.aspx" target=_self>���Ǽ�</a>
      <a href ="xueyuanguanli/tijian_chaxun.aspx" target=_self>����ѯ</a>
      <a href ="xueyuanguanli/tuixue.aspx" target=_self>��ѧ�Ǽ�</a>
      <a href ="xueyuanguanli/tuixue_chaxun.aspx" target=_self>��ѧ��ѯ</a>
      <a href ="/main.aspx" target=_self>������һ�˵�</a>
      </p>
</body>
</html>
