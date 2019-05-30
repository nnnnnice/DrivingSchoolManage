<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true"
    CodeBehind="LeaveSchool.aspx.cs" Inherits="DrivingSchoolManage.ManageStudents.LeaveSchool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: 20px; color: black; padding-top: 24px">
        学员退学登记</div>
    <br />
    <table width="98%" height="62" border="0" align="left" cellpadding="3" cellspacing="1">
        <tr>
            <td height="35" class="hback" colspan="2" align="center">
                <div style="width: 720px;">
                    <table style="border: medium solid #FFCC99; height: 300px; width: 600px;">
                        <tr>
                            <td align="center">
                                编号：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="Textbox1" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                姓名：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                退学记录：
                            </td>
                            <td align="left" style="height: 25px" colspan="3">
                                <asp:TextBox ID="Textbox3" runat="server" TextMode="MultiLine" Rows="5" Width="380px"></asp:TextBox>
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
