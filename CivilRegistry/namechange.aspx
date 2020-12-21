<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="namechange.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="2" style="height: 20px" align="center">
                </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="lbl_msg" runat="server" ForeColor="Red" Style="font-weight: bold;
                    font-size: 18pt" Text="Label" Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Name of the applicant(As per original record)"
                    Width="324px" Font-Underline="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label3" runat="server" Text="Title" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:DropDownList ID="drop_title" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium">
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem Value="Ms">Mrs</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label4" runat="server" Text="Permanent account no:(PAN)" Width="222px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:TextBox ID="txtpan" runat="server" Width="118px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label5" runat="server" Text="Name" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:TextBox ID="txtna" runat="server" Width="118px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="Label6" runat="server" Text="Identity details" Font-Underline="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td style="height: 20px" colspan="2">
                <asp:Label ID="Label7" runat="server" Text="My new name" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label8" runat="server" Text="Title" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium">
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label9" runat="server" Text="Name" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:TextBox ID="txnewna" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label10" runat="server" Text="My new nationality(Please tick)" Width="247px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:DropDownList ID="drop_nation" runat="server" Style="font-weight: bold; font-family: 'Times New Roman'">
                    <asp:ListItem>Indian</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label11" runat="server" Text="My new status(Please tick)" Width="222px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:DropDownList ID="drop_status" runat="server" Style="font-weight: bold; font-family: 'Times New Roman'">
                    <asp:ListItem>Resident</asp:ListItem>
                    <asp:ListItem>Non Resident</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label12" runat="server" Text="Permanent account number" Width="194px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:TextBox ID="txtpan2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px" valign="top">
                <asp:Label ID="Label13" runat="server" Text="My new address for correspondence" Width="273px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:TextBox ID="txtnewadd" runat="server" TextMode="MultiLine" Width="149px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label14" runat="server" Text="state" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Font-Strikeout="False"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label15" runat="server" Text="Country" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:TextBox ID="txt_country" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="vertical-align: top; height: 20px" colspan="2">
                <asp:Label ID="Label16" runat="server" Text="Proof of address to be provided by Applicant(tick the document attached)"
                    Width="489px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
                </td>
        </tr>
        <tr>
            <td style="width: 93px">
                <asp:DropDownList ID="drop_address" runat="server">
                    <asp:ListItem>Latest Telephone Bill</asp:ListItem>
                    <asp:ListItem>Latest Electricity Bill</asp:ListItem>
                    <asp:ListItem>Passport</asp:ListItem>
                    <asp:ListItem>Driving License</asp:ListItem>
                    <asp:ListItem>Latest Bank Passbook</asp:ListItem>
                    <asp:ListItem>Latest Bank Account Statement</asp:ListItem>
                    <asp:ListItem>Latest Demat Account statement</asp:ListItem>
                    <asp:ListItem>Voter Identity Card</asp:ListItem>
                    <asp:ListItem>Ration Card</asp:ListItem>
                    <asp:ListItem>Registered Lease / Sale Agreement of residence</asp:ListItem>
                    <asp:ListItem>Any other proof of address document (as listed overleaf</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 110px">
            </td>
        </tr>
        <tr>
            <td style="width: 93px">
                <asp:Label ID="Label17" runat="server" Text="Contact Details" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="123px"></asp:Label></td>
            <td style="width: 110px">
            </td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label19" runat="server" Text="Tel. (Res.)" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:TextBox ID="txtres" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label22" runat="server" Text="E-Mail Id." Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label18" runat="server" Text="Tel. (Off.)" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
            </td>
            <td style="width: 110px; height: 20px">
                <asp:TextBox ID="txttel" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label20" runat="server" Text="Mobile" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:TextBox ID="txtmob" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                <asp:Label ID="Label21" runat="server" Text="My New Permanent Address as a Resident Applicant (if different from C1 above OR Overseas Address as a Non-Resident Applicant"
                    Width="433px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 110px; height: 20px">
                <asp:TextBox ID="txtdif" runat="server" TextMode="MultiLine" Width="148px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="Label23" runat="server" Text="My New Gross Annual Income Details Please tick "
                    Width="374px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                </td>
            <td style="width: 110px; height: 20px">
                <asp:DropDownList ID="drop_income" runat="server" Style="font-weight: bold; font-family: 'Times New Roman'">
                    <asp:ListItem>Upto Rs. 5,00,000</asp:ListItem>
                    <asp:ListItem>Rs. 5,00,001 to Rs. 25,00,000</asp:ListItem>
                    <asp:ListItem>Rs. 25,00,001 to Rs. 1,00,00,000</asp:ListItem>
                    <asp:ListItem>Rs. 1,00,00,001 to Rs. 5,00,00,000</asp:ListItem>
                    <asp:ListItem>Rs. 5,00,00,001 and above</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="Label24" runat="server" Text="My New Occupation Details Please tick  any one"
                    Width="323px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                </td>
            <td style="width: 110px; height: 20px">
                <asp:DropDownList ID="drop_occu" runat="server" Style="font-weight: bold; font-family: 'Times New Roman'">
                    <asp:ListItem>Private Sector Service</asp:ListItem>
                    <asp:ListItem>Public Sector/Govt Service</asp:ListItem>
                    <asp:ListItem>Business</asp:ListItem>
                    <asp:ListItem>Professional</asp:ListItem>
                    <asp:ListItem>Agriculturist</asp:ListItem>
                    <asp:ListItem>Retired</asp:ListItem>
                    <asp:ListItem>House Wife</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Forex Dealer</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="height: 20px" colspan="2">
                <asp:Label ID="Label25" runat="server" Text="If the following is additionally applicable to you Please tick  one or more as applicable"
                    Width="566px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 93px; height: 20px">
                </td>
            <td style="width: 110px; height: 20px">
                <asp:DropDownList ID="drop_addition" runat="server" Style="font-weight: bold; font-family: 'Times New Roman'">
                    <asp:ListItem>Civil Servant</asp:ListItem>
                    <asp:ListItem>Bureaucrat</asp:ListItem>
                    <asp:ListItem>Current or Former MP, MLA or MLC</asp:ListItem>
                    <asp:ListItem>Politician</asp:ListItem>
                    <asp:ListItem>Current or Former Head of State</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" style="width: 93px; height: 20px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btnsub" runat="server" Text="Submit" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" OnClick="btnsub_Click" /></td>
            <td style="width: 110px; height: 20px">
                <asp:Button ID="btnres" runat="server" Text="Reset" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" OnClick="btnres_Click" /></td>
        </tr>
    </table>
</asp:Content>

