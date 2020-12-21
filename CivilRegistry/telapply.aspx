<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="telapply.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 430px">
        <tr>
            <td colspan="2" style="height: 20px" align="center" valign="top">
                <asp:Label ID="Label16" runat="server" Text="Telephone application" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label></td>
            <td align="center" colspan="1" style="width: 100px; height: 20px" valign="top">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="left" valign="top" style="height: 20px">
                &nbsp;</td>
            <td align="left" colspan="1" style="width: 100px; height: 20px" valign="top">
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="height: 20px" valign="top">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Maroon" Visible="False"></asp:Label></td>
            <td align="left" colspan="1" style="width: 100px; height: 20px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 26px;" align="left" valign="top">
                <asp:Label ID="Label2" runat="server" Text="company/organisation" Width="125px" Font-Bold="True" Font-Names="Times new roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px; height: 26px;" valign="top">
                <asp:TextBox ID="txtcomp" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 26px;" align="left" valign="top">
                <asp:Label ID="Label3" runat="server" Text="Name of the customer/company" Width="209px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px; height: 26px;" valign="top">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 26px;" align="left" valign="top">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Name of the joint applicant,if any"></asp:Label></td>
            <td style="width: 100px; height: 26px;" valign="top">
                <asp:TextBox ID="txtjoint" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 26px;" align="left" valign="top">
                <asp:Label ID="Label1" runat="server" Text="Name of the nominee" Width="153px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px; height: 26px;" valign="top">
                <asp:TextBox ID="txtnominee" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 26px;" align="left" valign="top">
                <asp:Label ID="Label4" runat="server" Text="Relationship to the applicant" Width="200px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px; height: 26px;" valign="top">
                <asp:TextBox ID="txtrelation" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 26px;" align="left" valign="top">
                <asp:Label ID="Label5" runat="server" Text="Name of father/husband/group/partner"
                    Width="263px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px; height: 26px;" valign="top">
                <asp:TextBox ID="txtgphf" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px" align="left" valign="top">
                <asp:Label ID="Label6" runat="server" Text="PAN/GIR No" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Small"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:TextBox ID="txtpan" runat="server"></asp:TextBox></td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px" align="left" valign="top">
                <asp:Label ID="Label7" runat="server" Text="Telephone no: working, if any" Width="204px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:TextBox ID="txttele" runat="server"></asp:TextBox></td>
            <td style="width: 100px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 26px;" align="left" valign="top">
                <asp:Label ID="Label8" runat="server" Text="Nearest telephone no:" Width="164px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px; height: 26px;" valign="top">
                <asp:TextBox ID="txtnear" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 40px;" align="left" valign="top">
                <asp:Label ID="Label9" runat="server" Text="Complete postal address" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="176px"></asp:Label>&nbsp;</td>
            <td style="width: 100px; height: 40px;" valign="top">
                <asp:TextBox ID="txtaddress" runat="server" Height="28px" TextMode="MultiLine" Width="150px"></asp:TextBox></td>
            <td style="width: 100px; height: 40px" valign="top">
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 394px; height: 20px" valign="top">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Pin code"></asp:Label></td>
            <td style="width: 100px; height: 20px" valign="top">
                <asp:TextBox ID="txtpin" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 20px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 20px" align="left" valign="top">
                <asp:Label ID="Label10" runat="server" Text="Billing or correspondance address" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="231px"></asp:Label></td>
            <td style="width: 100px; height: 20px" valign="top">
                <asp:TextBox ID="txtbilling" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 20px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px" align="left" valign="top">
                <asp:Label ID="Label11" runat="server" Text="Email address, if any" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="139px"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
            <td style="width: 100px" valign="top">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="Invalid ID" Font-Bold="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    Width="62px"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 394px; height: 190px;" align="left" valign="top">
                <asp:Label ID="Label12" runat="server" Text="facilities required" Width="119px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px; height: 190px;" valign="top">
                <table style="width: 154px">
                    <tr>
                        <td colspan="3">
                            <asp:CheckBox ID="chkstd" runat="server" Font-Bold="True" ForeColor="Black" Text="STD" /></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:CheckBox ID="chkisd" runat="server" Font-Bold="True" ForeColor="Black" Text="ISD" /></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:CheckBox ID="chkcli" runat="server" Font-Bold="True" ForeColor="Black" Text="CLI" /></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:CheckBox ID="chkhotline" runat="server" Font-Bold="True" ForeColor="Black" Text="Hotline" /></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:CheckBox ID="chkconference" runat="server" Font-Bold="True" ForeColor="Black"
                                Text="Conferencing" /></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 22px">
                            <asp:CheckBox ID="chkcallforwarding" runat="server" Font-Bold="True" ForeColor="Black"
                                Text="Call Forwarding" /></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 20px">
                            <asp:CheckBox ID="chkabbreviated" runat="server" Font-Bold="True" ForeColor="Black"
                                Text="Abbreviated Dialing" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 100px; height: 190px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 26px" align="left" valign="top">
                <asp:Label ID="Label13" runat="server" Text="Whether telephone intstrument is required"
                    Width="285px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px; height: 26px" valign="top">
                <asp:TextBox ID="txtinstr" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 37px;" align="left" valign="top">
                <asp:Label ID="Label14" runat="server" Text="Payment mode" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="102px"></asp:Label></td>
            <td style="height: 37px" valign="top">
                <asp:TextBox ID="txtpay" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 37px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 40px;" align="left" colspan="" valign="top">
                <asp:Label ID="Label15" runat="server" Text="Payment details" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="112px"></asp:Label></td>
            <td style="width: 100px; height: 40px;" align="left" colspan="" valign="top">
                <asp:TextBox ID="txtdetails" runat="server"></asp:TextBox></td>
            <td align="left" colspan="1" style="width: 100px; height: 40px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 20px;" align="left" valign="top">
            </td>
            <td style="width: 100px; height: 20px;" valign="top">
            </td>
            <td style="width: 100px; height: 20px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 394px; height: 26px;" align="right" valign="top">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;<asp:Button ID="btnsubmit" runat="server" Text="Submit" Font-Bold="True" Font-Size="Medium" Font-Names="Times New Roman" OnClick="btnsubmit_Click" />
            </td>
            <td style="width: 100px; height: 26px;" align="left" valign="top">
                <asp:Button ID="btnreset" runat="server" Text="Reset" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Font-Strikeout="False" OnClick="btnreset_Click" /></td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
            </td>
        </tr>
    </table>
</asp:Content>

