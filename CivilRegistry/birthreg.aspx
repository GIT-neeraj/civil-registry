<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="birthreg.aspx.cs" Inherits="Default3" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function Radio1_onclick() {

}

// ]]>
</script>

    <table style="width: 324px; height: 30px">
        <tr>
            <td align="center" colspan="2" style="height: 44px"><a name="pos1"></a>
                <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="X-Large" Text="Birth Registration"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="text-align: left">
                <asp:Label ID="lbl_msg" runat="server" ForeColor="Red" Text="Label" Visible="False" style="font-weight: bold; font-size: 12pt" Width="175px"  Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 46px;" valign="top">
                <asp:Label ID="Label1" runat="server" Text="Date of birth" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td valign="top" style="height: 46px; width: 158px;">
                <input id="dob" name="dob" style="width: 70px" type="text" />
                <a href="#pos1" onclick="displayDatePicker('dob','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a>
                &nbsp;
                </td>
        </tr>
        <tr>
            <td style="width: 288px; height: 22px">
                <asp:Label ID="Label2" runat="server" Text="Sex" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 22px" valign="top">
                &nbsp;<asp:DropDownList ID="drop_sex" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 40px;" valign="top">
                <asp:Label ID="Label3" runat="server" Text="Name of child,if any" Width="142px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 40px;" valign="top">
                <asp:TextBox ID="txtnameofchild" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 26px;">
                <asp:Label ID="Label4" runat="server" Text="Name of the father" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 26px;" valign="top">
                <asp:TextBox ID="txtnameoffather" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 26px;">
                <asp:Label ID="Label5" runat="server" Text="Name of the mother" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 26px;" valign="top">
                <asp:TextBox ID="txtnameofmother" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px">
                <asp:Label ID="Label6" runat="server" Text="Place of birth" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px" valign="top">
                <asp:TextBox ID="txtplaceofbirth" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px">
                <asp:Label ID="Label7" runat="server" Text="Informant's name" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px" valign="top">
                <asp:TextBox ID="txtinformantsname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 40px;" valign="top">
                <asp:Label ID="Label8" runat="server" Text="Address of informant" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 40px;" valign="top">
                <asp:TextBox ID="txtaddressofinformant" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 25px;" valign="top">
                <asp:Label ID="Label9" runat="server" Text="Date" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 25px;" valign="top">
                <input id="date" name="date" style="width: 87px" type="text" />
                <a href="#" onclick="displayDatePicker('date','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 288px; height: 40px" valign="top">
                <asp:Label ID="Label10" runat="server" Text="Name of town/village" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 40px" valign="top">
                <asp:TextBox ID="txtnameofvillage" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px">
                <asp:Label ID="Label11" runat="server" Text="Name of District" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px" valign="top">
                <asp:TextBox ID="txtnameofdistrict" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                <asp:Label ID="Label12" runat="server" Text="Name of state" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 21px" valign="top">
                <asp:TextBox ID="txtnameofstate" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                <asp:Label ID="Label13" runat="server" Text="Religion of family" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 21px" valign="top">
                <asp:TextBox ID="txtreligion" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 16px">
                <asp:Label ID="Label14" runat="server" Text="Father's occupation" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 16px" valign="top">
                <asp:TextBox ID="txtofccupation" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                <asp:Label ID="Label15" runat="server" Text="Mother's occupation" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="138px"></asp:Label></td>
            <td style="width: 158px; height: 21px" valign="top">
                <asp:TextBox ID="txtmoccupation" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                <asp:Label ID="Label16" runat="server" Text="Age of the mother at the time of marriage" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="152px"></asp:Label></td>
            <td style="width: 158px; height: 21px" valign="top">
                <asp:TextBox ID="txtmage" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                <asp:Label ID="Label17" runat="server" Text="Age of mother at the time of this birth" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="154px"></asp:Label></td>
            <td style="width: 158px; height: 21px" valign="top">
                <asp:TextBox ID="txtageatbirthtime" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                <asp:Label ID="Label18" runat="server" Text="Method of delivery" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 21px" valign="top">
                <asp:TextBox ID="txtmethod" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                <asp:Label ID="Label19" runat="server" Text="Birth weight" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 21px" valign="top">
                <asp:TextBox ID="txtweight" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                <asp:Label ID="Label20" runat="server" Text="Duration of pregnancy" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 21px" valign="top">
                <asp:TextBox ID="txtduration" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                </td>
            <td style="width: 158px; height: 21px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px" align="right">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" OnClick="btnsubmit_Click" /></td>
            <td style="width: 158px; height: 21px" valign="top">
                &nbsp;<asp:Button ID="btnreset" runat="server" Text="Reset" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" OnClick="btnreset_Click" /></td>
        </tr>
    </table>
</asp:Content>

