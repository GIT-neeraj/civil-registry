<%@ Page Language="C#" AutoEventWireup="true" CodeFile="postthread.aspx.cs" Inherits="postthread" MasterPageFile="~/masterhome.master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div >
    <table style="width: 689px">
        <tr style="background:#CCCCCC; font-size:15px; font-weight:bold">
            <td colspan="3" style="height: 6px" >
            <table >
            <tr>
            <td style="width: 611px; height: 19px">Post new thread</td>
            <td style="height: 19px">
            <a href= "postthread.aspx" style="font-size:14px; font-weight:bold; color:#CC3399; text-decoration:none;" >
                New post</a></td>
            </tr>
            </table>
                </td>
        </tr>
        <tr style="height:10px">
            <td style="width: 148px">
            </td>
            <td style="width: 37px">
            </td>
            <td style="width: 41px">
            </td>
        </tr>
        <tr>
            <td style="width: 148px">
                Name <span style="color: #ff0000">*</span></td>
            <td style="width: 37px">
                <asp:TextBox ID="txtName" runat="server" Width="274px"></asp:TextBox></td>
            <td style="width: 41px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName"
                    ErrorMessage="Name cannot be empty" Width="192px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 148px">
                E-mail Address <span style="color: #ff0000">*</span></td>
            <td style="width: 37px">
                <asp:TextBox ID="txtEmail" runat="server" Width="274px"></asp:TextBox></td>
            <td style="width: 41px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Invalid email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    Width="190px"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 148px" valign="top">
                Thread info <span style="color: #ff0000">*</span></td>
            <td colspan="2">
                <asp:TextBox ID="txtDesc" runat="server" Height="93px" TextMode="MultiLine" Width="390px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDesc"
                    ErrorMessage="Thread description cannot be empty"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 148px">
            </td>
            <td style="width: 37px">
            </td>
            <td style="width: 41px">
            </td>
        </tr>
        <tr>
            <td style="width: 148px; height: 22px;">
            </td>
            <td style="width: 37px; height: 22px;">
                <asp:ImageButton ID="btnPostThread" runat="server" ImageUrl="~/images/postthread.gif" OnClick="btnPostThread_Click" /></td>
            <td style="width: 41px; height: 22px">
            </td>
        </tr>
        <tr>
            <td style="width: 148px; height: 22px">
            </td>
            <td style="width: 37px; height: 22px">
            </td>
            <td style="width: 41px; height: 22px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 22px">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#FF8080"></asp:Label></td>
        </tr>
    </table>
</div>
</asp:Content>