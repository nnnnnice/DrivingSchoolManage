<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true"
    CodeBehind="YueChe.aspx.cs" Inherits="DrivingSchoolManage.Teaching.YueChe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="width: 100%; height: 560">
        <div style="color: black; font-size: 20px; text-align: center;">
            约车登记</div>
        <br />
        <table style="border: medium solid #FFCC99; width: 549px; height: 300px;" align="center">
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
                    教练姓名：
                </td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2"
                        DataTextField="jname" DataValueField="jname">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JXGLConnectionString4 %>"
                        OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT [jname] FROM [J]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="center">
                    约车时间：
                </td>
                <td align="left">
                    <asp:TextBox ID="TextBox5" runat="server" Width="150px" CssClass="Wdate"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="日期格式必须为yyyy-mm-dd"
                        Display="Dynamic" ControlToValidate="TextBox5" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="center">
                    约车地点：
                </td>
                <td align="left">
                    <asp:TextBox ID="TextBox6" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="Button1" runat="server" Text="登记" OnClick="Button1_Click" />
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
            </tr>
        </table>
    </div>
</asp:Content>
