<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="PersonPage.aspx.cs" Inherits="DrivingSchoolManage.PersonPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            font-weight: lighter;
            font-size: small;
            font-family: 黑体;
            padding-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    
    <div align="center" style="font-size: 24px; color: black; PADDING-TOP: 24px">修改密码</div>
    
    <div style="PADDING-TOP: 20px;">
    <table style="border: medium solid #FFCC99; width: 512; height: 246px;" 
            align="center">
        <tr>
            <td align="center">
                <asp:Label ID="lbid" runat="server" Text="用户名："></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="用户名不能为空"
                    ControlToValidate="txtid"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                旧密码：
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                    ControlToValidate="TextBox1">*</asp:RequiredFieldValidator><span id="msg"></span>
            </td>
        </tr>
        <tr>
            <td align="center">
                新密码：
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                    ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                确认新密码：
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"
                    Display="Dynamic" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator><asp:CompareValidator
                        ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="TextBox2"
                        ControlToValidate="TextBox3">两次密码不一致</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button  ID="ButtonModify" runat="server" Text="修改" OnClick="ButtonModify_Click" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
