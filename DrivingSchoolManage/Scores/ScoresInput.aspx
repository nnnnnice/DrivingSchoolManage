<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true"
    CodeBehind="ScoresInput.aspx.cs" Inherits="DrivingSchoolManage.Scores.ScoresInput" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="98%" height="70%" border="0" align="left" cellpadding="3" 
        cellspacing="1" style=" padding-top: 20px;">
        <tr class="back">
            <td align="center" class="hback">
                <!--提示信息或者其他信息-->
            </td>
        </tr>
        <tr class="back">
            <td height="80%" class="hback" colspan="2" align="center">
                <div style="width: 720px; height: 341px;">
                    <div style="color: black; font-size: 20px; text-align: center; font-family: 幼圆; font-weight: bold;">
                        学员成绩录入</div>
                     <br />
                    <table style="border: medium solid #FFCC99; height: 282px; width: 503px">
                        <tr>
                            <td align="center">
                                编号：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
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
                                科目一成绩：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                科目二成绩：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                科目三成绩：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox5" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                科目四成绩：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox6" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="ButtonAdd" runat="server" Text="确认" OnClick="ButtonAdd_Click" />
                            </td>
                            <td align="left">
                                <asp:Button ID="ButtonCancel" runat="server" Text="清空" OnClick="ButtonCancel_Click" />
                            </td>
                        </tr>
                    </table>
                  </div>
                    <asp:Literal ID="ltlShowTips" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td align="center">
            </td>
            <td align="left">
                <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
