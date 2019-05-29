<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true"
    CodeBehind="Examination.aspx.cs" Inherits="DrivingSchoolManage.test.Examination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: 20px; color: black; padding-top: 24px">
        学员约考登记</div>
    <br />
    <table width="98%" height="62" border="0" align="left" cellpadding="3" cellspacing="1">
        <tr class="back">
            <td height="35" class="hback" colspan="2" align="center">
                <div style="width: 720px;">
                    <table style="border: medium solid #FFCC99;height: 214px; width: 543px">
                        <tr>
                            <td align="center">
                                学员编号：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                            </td>
                            </tr>
                            <tr>
                            <td align="center">
                                学员姓名：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                约考时间：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox5" runat="server" Width="150px" CssClass="Wdate"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="日期格式必须为yyyy-mm-dd"
                                    Display="Dynamic" ControlToValidate="TextBox5" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                            </td>
                            </tr>
                            <tr>
                            <td align="center">
                                约考地点：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox6" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="Button" runat="server" Text="登记" OnClick="Button1_Click" />
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
            <td align="center">
                <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
