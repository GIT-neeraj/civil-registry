<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="water1.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 640px">
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label1" runat="server" Text="Water Tap Connection" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="text-align: left">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#C00000" Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Text="Name of applicant as per record" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="231px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtapp" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Text="Father’s/ Husband’s Name" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="191px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txthus" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px" valign="top">
                <asp:Label ID="Label4" runat="server" Text="Postal Address" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="114px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtpost" runat="server" TextMode="MultiLine" Width="149px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label5" runat="server" Text="Survey No/Plot No. Location" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="196px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtplot" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:Label ID="Label6" runat="server" Text="Whether the building Plot where water tap connection is owned by the applicant ?" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="368px"></asp:Label></td>
            <td style="width: 100px; height: 20px">
                <asp:DropDownList ID="dpdlown" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium">
                    <asp:ListItem>yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:Label ID="Label7" runat="server" Text="Whether the pipe connection is required for residential commercial purpose" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="360px"></asp:Label></td>
            <td style="width: 100px; height: 20px">
                <asp:DropDownList ID="dpdlres" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:Label ID="Label8" runat="server" Text="Whether internal water supply installation done or not?" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="371px"></asp:Label></td>
            <td style="width: 100px; height: 20px">
                <asp:DropDownList ID="dpdlinter" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:Label ID="Label9" runat="server" Text="Whether road cutting is required?(If so,obtain permission )" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="355px"></asp:Label></td>
            <td style="width: 100px; height: 20px">
                <asp:DropDownList ID="dpdlroad" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:Label ID="Label10" runat="server" Text="Length of pipe laid down from distribution branch to building Plot. Necessary cash memo for purchase of pipe may be attached" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="370px"></asp:Label></td>
            <td style="width: 100px; height: 20px" valign="top">
                <asp:TextBox ID="txtmemo" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
            </td>
            <td style="width: 100px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 20px">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/water3.aspx">Conditions</asp:LinkButton>
                </td>
            <td style="width: 100px; height: 20px">
                <asp:Button ID="btncont" runat="server" Text="Register" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" OnClick="btncont_Click" />
                <asp:Button ID="btnreset" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" OnClick="btnreset_Click" Text="Reset" /></td>
        </tr>
    </table>
</asp:Content>

