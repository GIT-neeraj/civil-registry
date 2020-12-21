<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="voterreg.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="center" colspan="5">
    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Times New Roman"
        Font-Size="Large" Text="Voters Form" Font-Underline="False"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="5">
            </td>
        </tr>
        <tr>
            <td style="width: 118px">
                <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" EnableViewState="False"></asp:Label></td>
            <td style="width: 116px">
                <asp:TextBox ID="txtvot" runat="server" Width="124px"></asp:TextBox></td>
            <td style="width: 119px">
                &nbsp;</td>
            <td style="width: 104px">
                </td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 118px">
                <asp:Label ID="Label2" runat="server" Text="Surname" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 116px">
                <asp:TextBox ID="txtsur" runat="server" Width="124px"></asp:TextBox></td>
            <td style="width: 119px">
            </td>
            <td style="width: 104px">
            </td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 118px; height: 20px;">
                &nbsp;<asp:Label ID="Label3" runat="server" Text="Age" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 116px; height: 20px;">
                <asp:TextBox ID="txtage" runat="server" Width="124px"></asp:TextBox></td>
            <td style="width: 119px; height: 20px;">
            </td>
            <td style="width: 104px; height: 20px;">
            </td>
            <td style="width: 158px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 118px; height: 22px;">
                <asp:Label ID="Label4" runat="server" Text="Sex" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 116px; height: 22px;">
                <asp:RadioButton ID="btnmale" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" GroupName="sex" Text="Male" /></td>
            <td style="width: 119px; height: 22px;">
            <asp:RadioButton ID="btnfemale" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" GroupName="sex" Text="Female" /></td>
            <td style="width: 104px; height: 22px;">
            </td>
            <td style="width: 158px; height: 22px">
            </td>
        </tr>
        <tr>
            <td style="width: 118px; height: 20px;">
                <asp:Label ID="Label5" runat="server" Text="Date of birth" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 116px; height: 20px;">
               <asp:TextBox ID="txtplace" runat="server" Width="123px"></asp:TextBox></td>
            
            <td style="width: 119px; height: 20px;">
            </td>
            <td style="width: 104px; height: 20px;">
            </td>
            <td style="width: 158px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 118px">
                <asp:Label ID="Label6" runat="server" Text="Place of birth" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 116px">
             <asp:DropDownList ID="dpdlbirth" runat="server" Font-Bold="False" Font-Names="Times New Roman"
                    Font-Size="Medium">
                    <asp:ListItem>Village</asp:ListItem>
                    <asp:ListItem>Town</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td style="width: 119px">
                </td>
            <td style="width: 104px">
            </td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 118px">
                <asp:Label ID="Label7" runat="server" Text="District" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 116px">
                <asp:TextBox ID="txtdist" runat="server" Width="125px"></asp:TextBox></td>
            <td style="width: 119px">
            </td>
            <td style="width: 104px">
            </td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 118px; height: 29px;">
                <asp:Label ID="Label8" runat="server" Text="State" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 116px; height: 29px;">
                <asp:TextBox ID="txtstate" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Width="124px"></asp:TextBox></td>
            <td style="width: 119px; height: 29px;">
            </td>
            <td style="width: 104px; height: 29px;">
            </td>
            <td style="width: 158px; height: 29px;">
            </td>
        </tr>
        <tr>
            <td style="height: 20px;" colspan="4">
            </td>
            <td colspan="1" style="width: 158px; height: 20px">
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="Label9" runat="server" Text="Particulars  of place of ordinary residence" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="284px"></asp:Label></td>
            <td colspan="1" style="width: 158px">
            </td>
        </tr>
        <tr>
            <td colspan="4">
            </td>
            <td colspan="1" style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 118px">
                <asp:Label ID="Label10" runat="server" Text="Address" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 116px">
                <asp:TextBox ID="txtaddress" runat="server" Width="125px" TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 119px">
            </td>
            <td style="width: 104px">
            </td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td style="width: 118px">
            </td>
            <td style="width: 116px">
            </td>
            <td style="width: 119px">
            </td>
            <td style="width: 104px">
            </td>
            <td style="width: 158px">
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Details of members of applicants family already in the current electoral roll of the constituency"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 118px" valign="top">
            </td>
            <td style="width: 116px" valign="top">
            </td>
            <td style="width: 119px">
            </td>
            <td style="width: 104px" valign="top">
            </td>
            <td style="width: 158px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 118px" align="center" valign="baseline">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Name"></asp:Label></td>
            <td style="width: 116px" align="center" valign="baseline">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Relationship with applicant"></asp:Label></td>
            <td style="width: 119px" align="center" valign="baseline">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Part no:of the roll of the constituency"></asp:Label></td>
            <td style="width: 104px" align="center" valign="baseline">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Serial no: in that part"></asp:Label></td>
            <td style="width: 158px" align="center" valign="baseline">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Elector's photo ID card"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 118px">
                <asp:TextBox ID="txtname1" runat="server" Width="122px"></asp:TextBox></td>
            <td style="width: 116px">
                <asp:TextBox ID="txtrel1" runat="server" Width="125px"></asp:TextBox></td>
            <td style="width: 119px">
                <asp:TextBox ID="txtpart1" runat="server" Width="124px"></asp:TextBox></td>
            <td style="width: 104px">
                <asp:TextBox ID="txtser1" runat="server" Width="125px"></asp:TextBox></td>
            <td style="width: 158px">
                <asp:TextBox ID="txtid1" runat="server" Width="118px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 118px">
                <asp:TextBox ID="txtname2" runat="server" Width="123px"></asp:TextBox></td>
            <td style="width: 116px">
                <asp:TextBox ID="txtrel2" runat="server" Width="125px"></asp:TextBox></td>
            <td style="width: 119px">
                <asp:TextBox ID="txtpart2" runat="server" Width="123px"></asp:TextBox></td>
            <td style="width: 104px">
                <asp:TextBox ID="txtser2" runat="server" Width="126px"></asp:TextBox></td>
            <td style="width: 158px">
                <asp:TextBox ID="txtid2" runat="server" Width="116px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 118px">
                <asp:TextBox ID="txtname3" runat="server" Width="122px"></asp:TextBox></td>
            <td style="width: 116px">
                <asp:TextBox ID="txtrel3" runat="server" Width="124px"></asp:TextBox></td>
            <td style="width: 119px">
                <asp:TextBox ID="txtpart3" runat="server" Width="123px"></asp:TextBox></td>
            <td style="width: 104px">
                <asp:TextBox ID="txtser3" runat="server" Width="126px"></asp:TextBox></td>
            <td style="width: 158px">
                <asp:TextBox ID="txtid3" runat="server" Width="116px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 118px">
                <asp:TextBox ID="txtname4" runat="server" Width="123px"></asp:TextBox></td>
            <td style="width: 116px">
                <asp:TextBox ID="txtrel4" runat="server" Width="124px"></asp:TextBox></td>
            <td style="width: 119px">
                <asp:TextBox ID="txtpart4" runat="server" Width="123px"></asp:TextBox></td>
            <td style="width: 104px">
                <asp:TextBox ID="txtser4" runat="server" Width="124px"></asp:TextBox></td>
            <td style="width: 158px">
                <asp:TextBox ID="txtid4" runat="server" Width="115px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 118px; height: 26px">
                <asp:TextBox ID="txtname5" runat="server" Width="122px"></asp:TextBox></td>
            <td style="width: 116px; height: 26px">
                <asp:TextBox ID="txtrel5" runat="server" Width="125px"></asp:TextBox></td>
            <td style="width: 119px; height: 26px">
                <asp:TextBox ID="txtpart5" runat="server" Width="123px"></asp:TextBox></td>
            <td style="width: 104px; height: 26px">
                <asp:TextBox ID="txtser5" runat="server" Width="124px"></asp:TextBox></td>
            <td style="width: 158px; height: 26px">
                <asp:TextBox ID="txtid5" runat="server" Width="115px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 118px; height: 11px">
                <asp:TextBox ID="txtname6" runat="server" Width="122px"></asp:TextBox></td>
            <td style="width: 116px; height: 11px">
                <asp:TextBox ID="txtrel6" runat="server" Width="125px"></asp:TextBox></td>
            <td style="width: 119px; height: 11px">
                <asp:TextBox ID="txtpart6" runat="server" Width="124px"></asp:TextBox></td>
            <td style="width: 104px; height: 11px">
                <asp:TextBox ID="txtser6" runat="server" Width="123px"></asp:TextBox></td>
            <td style="width: 158px; height: 11px">
                <asp:TextBox ID="txtid6" runat="server" Width="115px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 118px; height: 26px;">
                <asp:TextBox ID="txtname7" runat="server" Width="122px"></asp:TextBox></td>
            <td style="width: 116px; height: 26px;">
                <asp:TextBox ID="txtrel7" runat="server" Width="125px"></asp:TextBox></td>
            <td style="width: 119px; height: 26px;">
                <asp:TextBox ID="txtpart7" runat="server" Width="124px"></asp:TextBox></td>
            <td style="width: 104px; height: 26px;">
                <asp:TextBox ID="txtser7" runat="server" Width="122px"></asp:TextBox></td>
            <td style="width: 158px; height: 26px;">
                <asp:TextBox ID="txtid7" runat="server" Width="115px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 118px">
                <asp:TextBox ID="txtname8" runat="server" Width="122px"></asp:TextBox></td>
            <td style="width: 116px">
                <asp:TextBox ID="txtrel8" runat="server" Width="125px"></asp:TextBox></td>
            <td style="width: 119px">
                <asp:TextBox ID="txtpart8" runat="server" Width="124px"></asp:TextBox></td>
            <td style="width: 104px">
                <asp:TextBox ID="txtser8" runat="server" Width="123px"></asp:TextBox></td>
            <td style="width: 158px">
                <asp:TextBox ID="txtid8" runat="server" Width="116px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 118px">
                <asp:TextBox ID="txtname9" runat="server" Width="122px"></asp:TextBox></td>
            <td style="width: 116px">
                <asp:TextBox ID="txtrel9" runat="server" 
                    Width="126px"></asp:TextBox></td>
            <td style="width: 119px">
                <asp:TextBox ID="txtpart9" runat="server" Width="125px"></asp:TextBox></td>
            <td style="width: 104px">
                <asp:TextBox ID="txtser9" runat="server" Width="124px"></asp:TextBox></td>
            <td style="width: 158px">
                <asp:TextBox ID="txtid9" runat="server" Width="116px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 118px">
                <asp:TextBox ID="txtname10" runat="server" Width="121px"></asp:TextBox>
            </td>
            <td style="width: 116px">
                <asp:TextBox ID="txtrel10" runat="server" Width="125px"></asp:TextBox></td>
            <td style="width: 119px">
                <asp:TextBox ID="txtpart10" runat="server" Width="125px"></asp:TextBox></td>
            <td style="width: 104px">
                <asp:TextBox ID="txtser10" runat="server" Width="125px"></asp:TextBox></td>
            <td style="width: 158px">
                <asp:TextBox ID="txtid10" runat="server" Width="117px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 118px; height: 20px">
            </td>
            <td style="width: 116px; height: 20px">
            </td>
            <td style="width: 119px; height: 20px">
            </td>
            <td style="width: 104px; height: 20px">
            </td>
            <td style="width: 158px; height: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 118px; height: 20px">
            </td>
            <td style="width: 116px; height: 20px">
                </td>
            <td style="width: 119px; height: 20px">
                </td>
            <td style="width: 104px; height: 20px">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" onclick="btnsubmit_Click" /></td>
            <td style="width: 158px; height: 20px">
                <asp:Button ID="btnreset" runat="server" Text="Reset" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" /></td>
        </tr>
    </table>
    &nbsp;
    <br />
</asp:Content>

