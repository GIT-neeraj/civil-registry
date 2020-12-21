<%@ Page Language="C#" MasterPageFile="~/masterindex.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Default3" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="2" rowspan="2" style="height: 20px" align="center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Large" Text="Feedback"></asp:Label></td>
            <td align="center" colspan="1" rowspan="2" style="height: 20px">
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td align="center" colspan="2" rowspan="1" style="height: 20px">
            </td>
            <td align="center" colspan="1" rowspan="1" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" rowspan="1" style="height: 20px; text-align: left;">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red" Visible="False" style="font-weight: bold; font-size: 20pt"></asp:Label></td>
            <td align="center" colspan="1" rowspan="1" style="height: 20px; text-align: left">
            </td>
        </tr>
        <tr>
            <td colspan="2" rowspan="2" style="height: 40px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Online civil registry welcomes valuable suggestions and feedback for content improvement of this website" Width="463px"></asp:Label></td>
            <td colspan="1" rowspan="2" style="height: 40px">
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
            </td>
            <td colspan="1" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Feedback about our site"></asp:Label></td>
            <td colspan="1" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px;">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Name"></asp:Label></td>
            <td style="width: 100px; height: 26px;">
                <asp:TextBox ID="txtnafed" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Designation"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtdes" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Company"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtcomp" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Area of work"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtarea" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Address"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtadr" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="City"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="State"></asp:Label></td>
            <td style="width: 100px; height: 20px">
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Country"></asp:Label></td>
            <td style="width: 100px; height: 20px">
                <asp:TextBox ID="txtcon" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Pin"></asp:Label></td>
            <td style="width: 100px; height: 20px">
                <asp:TextBox ID="txtpin" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="E-mail"></asp:Label></td>
            <td style="width: 100px; height: 20px">
                <asp:TextBox ID="txtmail" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 20px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail"
                    ErrorMessage="Invalid Email ID" Font-Bold="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Telephone"></asp:Label></td>
            <td style="width: 100px; height: 20px">
                <asp:TextBox ID="txttel" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Fax"></asp:Label></td>
            <td style="width: 100px; height: 20px">
                <asp:TextBox ID="txtfax" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 20px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Enter your queries/Comment in the space below" Width="321px"></asp:Label></td>
            <td colspan="1" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:TextBox ID="txtquery" runat="server" TextMode="MultiLine" Width="454px"></asp:TextBox></td>
            <td colspan="1" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
            </td>
            <td colspan="1" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px" align="right">
                <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Submit" OnClick="btnSubmit_Click"  /></td>
            <td style="width: 100px; height: 20px" align="left">
                <asp:Button ID="btnClear" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Clear" OnClick="btnClear_Click" /></td>
            <td align="left" style="width: 100px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
            </td>
            <td style="width: 100px; height: 20px">
            </td>
            <td style="width: 100px; height: 20px">
            </td>
        </tr>
    </table>
</asp:Content>

