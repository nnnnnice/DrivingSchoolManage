<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true"
    CodeBehind="SignUpSelect.aspx.cs" Inherits="DrivingSchoolManage.ManageStudents.SignUpSelect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: 20px; color: black; padding-top: 24px">
        报名查询</div>
    <br />
    <table style="border: medium solid #FFCC99;" width="98%" height="62" border="0" align="center"
        cellpadding="3" cellspacing="1">
        <tr>
            <td colspan="2" align="center">
                姓名：<asp:TextBox runat="server" Width="150px" ID="txtxm" />
                <asp:Button ID="Button1" runat="server" Text="按姓名查找" OnClick="Button1_Click" />
                &nbsp; &nbsp; 报名时间：<asp:TextBox runat="server" ID="txtStartDate" Width="100px" CssClass="Wdate" />到<asp:TextBox
                    runat="server" ID="txtEndDate" Width="100px" CssClass="Wdate" />
                <asp:Button runat="server" ID="Button2" Text="按时间查找" OnClick="Button2_Click" />
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
                    <HeaderStyle BackColor="#FF3300" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
