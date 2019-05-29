<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true"
    CodeBehind="SignUp.aspx.cs" Inherits="DrivingSchoolManage.ManageStudents.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: 20px; color: black; padding-top: 24px">
        学员报名登记</div>
    <br />
    <table width="98%" height="62%" border="0" align="left" cellpadding="3" cellspacing="1">
        <tr>
            <td height="35" colspan="2" align="center">
                <div style="width: 720px;">
                    <table style="border: medium solid #FFCC99; height: 300px; width: 600px;">
                        <tr>
                            <td align="center">
                                编号：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtstudentno" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                报名时间：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtsignupdate" runat="server" Width="150px" CssClass="Wdate"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="日期格式必须为yyyy-mm-dd"
                                    Display="Dynamic" ControlToValidate="txtsignupdate" Operator="DataTypeCheck"
                                    Type="Date"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                姓名：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtstudentname" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                联系电话：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtphone" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                年龄：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtage" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                学员备注信息：
                            </td>
                            <td align="left" style="height: 25px" colspan="3">
                                <asp:TextBox ID="txtremark" runat="server" TextMode="MultiLine" Rows="5" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="Button1" runat="server" Text="我要报名" OnClick="Button1_Click" />
                            </td>
                            <td align="left">
                                <asp:Button ID="Button2" runat="server" Text="清空" OnClick="Button2_Click" />
                            </td>
                        </tr>
                </table>
                </div>
                <asp:Literal ID="ltlShowTips" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
