<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true"
    CodeBehind="ManageUsers.aspx.cs" Inherits="DrivingSchoolManage.users.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: 20px; color: black; padding-top: 24px">
        用户管理</div>
    <br />
    <table style="border: medium solid #FFCC99;
        width: 98%; height: 100%;" align="center" cellpadding="3" cellspacing="1">
        <tr>
            <td height="35" colspan="2" align="center">
                编号：<asp:TextBox runat="server" Width="150px" ID="Textbox1" />
                <asp:Button ID="Button1" runat="server" Text="按编号查找" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" style="height: 35px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                    OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                    AllowPaging="True" AllowSorting="True" PageSize="12" OnRowDataBound="GridView1_RowDataBound"
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="用户编号" ReadOnly="True" />
                        <asp:BoundField DataField="username" HeaderText="用户名" />
                        <asp:BoundField DataField="userpwd" HeaderText="用户密码" />
                        <asp:BoundField DataField="jobname" HeaderText="身份" ControlStyle-Width="100"/>
                        <asp:BoundField DataField="userstyle" HeaderText="用户类型" ControlStyle-Width="20"/>
                        <asp:BoundField DataField="functions" HeaderText="功能" />
                        <asp:CommandField HeaderText="选择" ShowSelectButton="True" />
                        <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
                        <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                    </Columns>
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#FF3300" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
