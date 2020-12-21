<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="Divorce.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
    function setstatus(obj)
    {
        if(obj.checked==true)
        document.getElementById("<%=btnsub.ClientID %>").disabled=false;
        else
        document.getElementById("<%=btnsub.ClientID %>").disabled=true;
    }
</script>
    <table style="width: 656px">
        <tr>
            <td colspan="2">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="APPLICATION FOR DIVORCE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="   Applicant/s details" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#C00000" Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 22px">
                <table border="1" style="width: 624px">
                    <tr>
                        <td style="height: 22px" colspan="3">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 97px">
                            <asp:Label ID="Label3" runat="server" Text="Who is/are making this application?" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="241px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:RadioButton ID="rdbtnhus" runat="server" GroupName="Applicant" Text="Husband" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" />
                            <asp:RadioButton ID="rdbtnwife" runat="server" GroupName="Applicant" Text="Wife" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" /></td>
                        <td style="width: 142px">
                            <asp:RadioButton ID="rdbtnboth" runat="server" GroupName="Applicant" Text="Husband and Wife together" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="205px" /></td>
                    </tr>
                    <tr>
                        <td style="width: 97px">
                            <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Date of seperation" Width="144px"></asp:Label></td>
                        <td style="width: 100px">
                            <input id="dob" name="dob" style="width: 146px" type="text" />
                <a href="#pos1" onclick="displayDatePicker('dob','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a>
                &nbsp;</td>
                        <td style="width: 142px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 97px">
                            <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Place of marriage" Width="144px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtmarplace" runat="server"></asp:TextBox></td>
                        <td style="width: 142px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 97px; height: 22px">
                            <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Font-Strikeout="False" Text="Number of children if any" Width="184px"></asp:Label></td>
                        <td style="width: 100px; height: 22px">
                            <asp:DropDownList ID="dpdnchild" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Width="152px">
                                <asp:ListItem>None</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>More than 4</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="width: 142px; height: 22px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 97px">
                            <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Are there any children under 18" Width="224px"></asp:Label>
                        </td>
                        <td style="width: 100px">
                            <asp:RadioButton ID="rdbtn18yes" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" GroupName="any" Text="Yes" /></td>
                        <td style="width: 142px">
                            <asp:RadioButton ID="rdbtn18" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" GroupName="any" Text="No" /></td>
                    </tr>
                    <tr>
                        <td style="width: 97px; height: 42px;">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Specify the number" Width="176px"></asp:Label></td>
                        <td style="width: 100px; height: 42px;">
                            <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Width="153px">
                                <asp:ListItem>None</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>More than 3</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="width: 142px; height: 42px;">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 97px">
                            <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Names of children" Width="184px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtchlidname" runat="server" TextMode="MultiLine" Width="146px"></asp:TextBox></td>
                        <td style="width: 142px">
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 97px">
                            <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Current details of children" Width="224px"></asp:Label></td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 142px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 97px">
                            <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Time and communication with children" Width="264px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txttime" runat="server"></asp:TextBox></td>
                        <td style="width: 142px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 97px">
                            <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Financial support" Width="136px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtfin" runat="server"></asp:TextBox></td>
                        <td style="width: 142px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 97px">
                            <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Health"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txthealth" runat="server"></asp:TextBox></td>
                        <td style="width: 142px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 97px; height: 28px">
                            <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Education"></asp:Label></td>
                        <td style="width: 100px; height: 28px">
                            <asp:TextBox ID="txtedu" runat="server"></asp:TextBox></td>
                        <td style="width: 142px; height: 28px">
                        </td>
                    </tr>
                </table>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 21px">
                <asp:Label ID="Label8" runat="server" Text="Husband and Wife details" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td colspan="2" rowspan="1" style="height: 560px">
                <table border="1" style="width: 608px; height: 568px;">
                    <tr>
                        <td style="width: 76px" valign="top">
                        </td>
                        <td style="width: 100px">
                            <asp:Label ID="Label10" runat="server" Text="Husband" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:Label ID="Label11" runat="server" Text="Wife" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                    </tr>
                    <tr>
                        <td valign="top">
                            </td>
                        <td style="width: 100px">
                            &nbsp;&nbsp;
                        </td>
                        <td style="width: 100px">
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label9" runat="server" Text="Family name as used now" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="176px"></asp:Label></td>
                        <td style="width: 100px" valign="top">
                            <asp:TextBox ID="txt_husfamily" runat="server"></asp:TextBox></td>
                        <td style="width: 100px" valign="top">
                            <asp:TextBox ID="txt_wifefamily" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="height: 42px;" valign="top">
                            <asp:Label ID="Label12" runat="server" Text="Full given names" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="161px"></asp:Label></td>
                        <td style="width: 100px; height: 42px;" valign="top">
                            <asp:TextBox ID="txt_husname" runat="server"></asp:TextBox></td>
                        <td style="width: 100px; height: 42px;" valign="top">
                            <asp:TextBox ID="txt_wifename" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label13" runat="server" Text="Date of birth " Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px" valign="top">
                        <input id="dob1" name="dob1" style="width: 70px" type="text" />
                <a href="#pos1" onclick="displayDatePicker('dob1','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a>
                &nbsp;
                        </td>
                        <td style="width: 100px" valign="top">
                        <input id="dob2" name="dob2" style="width: 70px" type="text" />
                <a href="#pos1" onclick="displayDatePicker('dob2','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a>
                &nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td style="height: 46px;" valign="top">
                            <asp:Label ID="Label14" runat="server" Text="Country by birth" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="132px"></asp:Label></td>
                        <td style="width: 100px;" valign="top">
                            <asp:TextBox ID="txt_country" runat="server"></asp:TextBox></td>
                        <td style="width: 100px;" valign="top">
                            <asp:TextBox ID="txt_countrywife" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label15" runat="server" Text="Occupation" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txt_occupation" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txt_occupationwife" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label16" runat="server" Text="Residential address and phone no:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="176px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txt_addr" runat="server" TextMode="MultiLine" Width="148px"></asp:TextBox></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txt_addrwife" runat="server" TextMode="MultiLine" Width="148px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="height: 29px;" valign="top">
                            <asp:Label ID="Label17" runat="server" Text="Address for service" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="136px"></asp:Label></td>
                        <td style="width: 100px; height: 29px;">
                            <asp:DropDownList ID="dpdnservice" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Width="152px">
                                <asp:ListItem>Same as residential address</asp:ListItem>
                                <asp:ListItem>Lawyers address(Below)</asp:ListItem>
                                <asp:ListItem>Other address(Below)</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 100px; height: 29px;">
                            <asp:DropDownList ID="dpdnwifeser" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Width="152px">
                                <asp:ListItem>Same as residential address</asp:ListItem>
                                <asp:ListItem>Lawyers address(Below)</asp:ListItem>
                                <asp:ListItem>Other address(below)</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label18" runat="server" Text="Name of lawyer" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="136px"></asp:Label></td>
                        <td style="width: 100px" align="left" valign="top">
                            <asp:TextBox ID="txtlawyername" runat="server"></asp:TextBox></td>
                        <td style="width: 100px" valign="top">
                            <asp:TextBox ID="txtwifeslawyer" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label19" runat="server" Text="Name of law firm" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="136px"></asp:Label></td>
                        <td style="width: 100px" valign="top">
                            <asp:TextBox ID="txtfirm" runat="server"></asp:TextBox></td>
                        <td style="width: 100px" valign="top">
                            <asp:TextBox ID="txtfirmwife" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label20" runat="server" Text="Lawyer's code" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="120px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtcode" runat="server"></asp:TextBox></td>
                        <td style="width: 100px" valign="top">
                            <asp:TextBox ID="txtcodewife" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label21" runat="server" Text="Phone no:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtphone" runat="server" OnTextChanged="txtphone_TextChanged"></asp:TextBox></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtphonewife" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label22" runat="server" Text="Fax" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtfax" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtfaxwife" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <asp:Label ID="Label23" runat="server" Text="Email" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtemailwife" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="3" valign="top">
                            <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Lawyer's Declaration"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="3" valign="top" style="height: 24px">
                            <input id="Checkbox1" type="checkbox" onclick="setstatus(this)" />
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="I gave the applicant/s a copy of the brochure 'Marriage, Families and separation"></asp:Label></td>
                    </tr>
                    <tr>
                        <td valign="top">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                        </td>
                        <td style="width: 100px">
                            <asp:Button ID="btnsub" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Submit" Enabled="False" OnClick="btnsub_Click" /></td>
                        <td style="width: 100px">
                            <asp:Button ID="btnre" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="Reset" /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

