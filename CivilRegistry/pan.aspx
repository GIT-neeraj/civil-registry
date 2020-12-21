<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="pan.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 495px">
        <tr>
            <td style="width: 208px">
            </td>
            <td style="width: 139px">
                <asp:Label ID="Label1" runat="server" Text="PAN Card Registration" Width="182px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 203px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 20px">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Maroon" Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Full Name"></asp:Label></td>
            <td style="width: 139px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
            <td style="width: 203px">
            </td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Name to be Printedin Card"></asp:Label></td>
            <td style="width: 139px">
                <asp:TextBox ID="txtCardname" runat="server"></asp:TextBox></td>
            <td style="width: 203px">
            </td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Father's Name"></asp:Label></td>
            <td style="width: 139px">
                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox></td>
            <td style="width: 203px">
            </td>
        </tr>
        <tr>
            <td style="width: 208px; height: 11px;">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Address"></asp:Label></td>
            <td style="width: 139px; height: 11px;">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 203px; height: 11px;">
            </td>
        </tr>
        <tr>
            <td style="width: 208px; height: 20px;">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Office Address"></asp:Label></td>
            <td style="width: 139px; height: 20px;">
                <asp:TextBox ID="txtOffAddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 203px; height: 20px;">
            </td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Sex"></asp:Label></td>
            <td style="width: 139px">
                <asp:DropDownList ID="drpsex" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 203px">
            </td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Status Of Applicant"></asp:Label></td>
            <td style="width: 139px">
                <asp:DropDownList ID="drpStat" runat="server">
                    <asp:ListItem>Individual</asp:ListItem>
                    <asp:ListItem>Company</asp:ListItem>
                    <asp:ListItem>Firm</asp:ListItem>
                    <asp:ListItem>Association of persons</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 203px">
            </td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Date of Birth"></asp:Label></td>
            <td style="width: 139px">
            <input id="dob" name="dob" style="width: 135px" type="text" />
                <a href="#pos1" onclick="displayDatePicker('dob','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a>
                &nbsp;
            </td>
            <td style="width: 203px">
            </td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Registration number if Company" Width="205px"></asp:Label></td>
            <td style="width: 139px">
                <asp:TextBox ID="txtRegNo" runat="server"></asp:TextBox></td>
            <td style="width: 203px">
            </td>
        </tr>
        <tr>
            <td style="width: 208px; height: 20px">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Citizen of India"></asp:Label></td>
            <td style="width: 139px; height: 20px">
                <asp:DropDownList ID="drpCitizen" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 203px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Address of Representative Assssee"
                    Width="208px"></asp:Label></td>
            <td style="width: 139px">
                <asp:TextBox ID="txtAddressRep" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 203px">
            </td>
        </tr>
        <tr>
            <td style="width: 208px">
            </td>
            <td style="width: 139px">
            </td>
            <td style="width: 203px">
            </td>
        </tr>
        <tr>
            <td style="width: 208px">
            </td>
            <td style="width: 139px">
                <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" /></td>
            <td style="width: 203px">
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" /></td>
        </tr>
    </table>
</asp:Content>

