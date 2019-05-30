<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true"
    CodeBehind="PhysicalExam.aspx.cs" Inherits="DrivingSchoolManage.ManageStudents.PhysicalExamaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: 20px; color: black; padding-top: 24px">
        学员体检登记</div>
    <br />
    <table width="98%" height="62%" border="0" align="left" cellpadding="3" cellspacing="1">
        <tr>
            <td height="35" colspan="2" align="center">
                <div style="width: 720px;">
                    <table style="border: medium solid #FFCC99; height: 420px; width: 500px;">
                        <tr>
                            <td align="center">
                                编号：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="textbox1" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                姓名：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="textbox2" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                身高(cm)：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="textbox3" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                左视力：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="textbox4" runat="server" Width="75px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                右视力：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="textbox6" runat="server" Width="75px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                辨色力：
                            </td>
                            <td align="left">
                                <asp:RadioButton ID="RadioButton2" runat="server" Text="正常" Checked="true" GroupName="semang" />
                                <asp:RadioButton ID="RadioButton1" runat="server" Text="红绿色盲" GroupName="semang" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                听力：
                            </td>
                            <td align="left">
                                <asp:RadioButton ID="RadioButton3" runat="server" Text="正常" Checked="true" GroupName="hear" />
                                <asp:RadioButton ID="RadioButton4" runat="server" Text="弱听" GroupName="hear" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                上肢：
                            </td>
                            <td align="left">
                                <asp:RadioButton ID="RadioButton5" runat="server" Text="正常" Checked="true" GroupName="leg" />
                                <asp:RadioButton ID="RadioButton6" runat="server" Text="残疾" GroupName="leg" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                下肢：
                            </td>
                            <td align="left">
                                <asp:RadioButton ID="RadioButton7" runat="server" Text="正常" Checked="true" GroupName="limb" />
                                <asp:RadioButton ID="RadioButton8" runat="server" Text="残疾" GroupName="limb" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                躯干：
                            </td>
                            <td align="left">
                                <asp:RadioButton ID="RadioButton9" runat="server" Text="正常" Checked="true" GroupName="body" />
                                <asp:RadioButton ID="RadioButton10" runat="server" Text="残疾" GroupName="body" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                体检结果：
                            </td>
                            <td align="left" style="height: 25px" colspan="3">
                                <asp:TextBox ID="textbox5" runat="server" TextMode="MultiLine" Rows="5" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="Button1" runat="server" Text="录入" OnClick="Button1_Click" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
