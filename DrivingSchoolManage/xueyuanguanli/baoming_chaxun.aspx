﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baoming_chaxun.aspx.cs" Inherits="JXGL.xueyuanguanli.baoming_chaxun" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
<table width="98%" height="62" border="0" align="center" cellpadding="3" cellspacing="1" class="table">
  <tr class="back"> 
    <td  colspan="2" class="xingmu">学员报名查询
     <td align="right">
     <a href ="/xueyuan.aspx" target=_self>返回上一菜单</a>
    </td>
  </tr>
  <tr class="back">
     <td height="35" class="hback" colspan="2" align="center">
     姓名：<asp:TextBox runat="server" Width="150px" ID="txtxm" />  
         <asp:Button ID="Button1" runat="server" Text="按姓名查找" onclick="Button1_Click" />
     报名时间：<asp:TextBox runat="server" ID="txtStartDate" Width="100px" CssClass="Wdate" />到<asp:TextBox runat="server" ID="txtEndDate" Width="100px" CssClass="Wdate" /> 
     <asp:Button runat="server" ID="Button2" Text="按时间查找" onclick="Button2_Click" />
     </td>
  </tr>
  <tr class="back"> 
    <td class="hback" colspan="2" align="center" style="height: 35px">
       <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        ForeColor="#333333" GridLines="None" 
            OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                        OnRowUpdating="GridView1_RowUpdating" 
            OnRowCancelingEdit="GridView1_RowCancelingEdit" AllowPaging="True" 
            AllowSorting="True" PageSize="12" onrowdatabound="GridView1_RowDataBound" 
               onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:BoundField DataField="xnum" HeaderText="学员编号" ReadOnly="True" />
                            <asp:BoundField DataField="xname" HeaderText="学员姓名" />
                            <asp:BoundField DataField="xage" HeaderText="年龄" />
                            <asp:BoundField DataField="xtel" HeaderText="电话" />
                            <asp:BoundField DataField="bmtime" HeaderText="报名时间" />
                            <asp:BoundField DataField="introduce" HeaderText="备注信息" />
                            <asp:CommandField HeaderText="选择" ShowSelectButton="True" />
                            <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                        </Columns>
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#99CCFF" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>&nbsp;</p>
    </td>
  </tr>
</table>
    </form>
</body>
</html>
