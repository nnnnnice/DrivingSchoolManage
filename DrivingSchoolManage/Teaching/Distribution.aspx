<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true"
    CodeBehind="Distribution.aspx.cs" Inherits="DrivingSchoolManage.Teaching.Distribution" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="font-size: 20px; color: black; padding-top: 24px">
        教练分配</div>
    <div style="padding-top: 20px;">
        <table style="border: medium solid #FFCC99; width: 50%; height: 246px;" align="center">
            <tr>
                <td align="center">
                    学员编号：
                </td>
                <td align="left">
                    <asp:TextBox ID="Textbox1" runat="server" Width="150px"></asp:TextBox>
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
                    分配教练：
                </td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2"
                        DataTextField="jname" DataValueField="jname" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JXGLConnectionString3 %>"
                        SelectCommand="SELECT [jname] FROM [J]" OnSelecting="SqlDataSource2_Selecting">
                    </asp:SqlDataSource>
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
            <asp:Literal ID="ltlShowTips" runat="server"></asp:Literal>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting">
                    </asp:SqlDataSource>
                </td>
        </table>
    </div>
</asp:Content>
