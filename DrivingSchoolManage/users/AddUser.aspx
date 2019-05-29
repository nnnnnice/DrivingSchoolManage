<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true"
    CodeBehind="AddUser.aspx.cs" Inherits="DrivingSchoolManage.users.AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: 20px; color: black; padding-top: 24px">
        添加用户</div>
    <br />
    <table width="98%" height="62" border="0" align="left" cellpadding="3" cellspacing="1">
        <tr class="back">
            <td height="35" class="hback" colspan="2" align="center">
                <div style="width: 720px;">
                    <table style="border: medium solid #FFCC99;height: 386px; width: 401px">
                        <tr>
                            <td align="center">
                                用户编号
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                用户名
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                用户密码
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                身份
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                用户类型
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox5" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                功能
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox6" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="Button1" runat="server" Text="确认" OnClick="Button1_Click" />
                            </td>
                            <td align="left">
                                <asp:Button ID="Button2" runat="server" Text="清空" OnClick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                    <asp:Literal ID="ltlShowTips" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
