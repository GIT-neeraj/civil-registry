<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="ration card.aspx.cs" Inherits="_Default" Title="Civil Registry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 654px">
        <tr>
            <td colspan="3" align="center" valign="middle">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Large" Text="Application Form For Issue Of New Ration Card / Renewal Of Ration Card"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#C00000" Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Text="1. Name of the Applicant" Width="177px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txt_nameappln" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Text="2. Father’s Name" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="200px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txt_fathersname" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" Text="3. Present Address" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="139px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txt_prstaddr" runat="server" TextMode="MultiLine" Width="151px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label5" runat="server" Text="4. Permanent Address" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="149px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txt_pertaddr" runat="server" TextMode="MultiLine" Width="151px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label6" runat="server" Text="6. Occupation / Designation" Width="189px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txt_occptn" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" Text="7. Name of the Employer / Department" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="273px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txt_nameEmpl" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label8" runat="server" Text="8. Details of the family members" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="237px"></asp:Label></td>
            <td style="width: 100px">
                <asp:Label ID="Label9" runat="server" Text="Adult" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
                <asp:TextBox ID="txt_adult" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Label ID="Label10" runat="server" Text="Minor" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
                <asp:TextBox ID="txt_minor" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="3">
                <table border="1">
                    <tr>
                        <td align="center" style="width: 100px" valign="bottom">
                <asp:Label ID="Label11" runat="server" Text="Sl no." Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td align="center" style="width: 100px" valign="bottom">
                <asp:Label ID="Label12" runat="server" Text="Name in full" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td align="center" style="width: 100px" valign="bottom">
                <asp:Label ID="Label13" runat="server" Text="Age" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td align="center" colspan="2" valign="bottom">
                            <br />
                            <br />
                            &nbsp;<asp:Label ID="Label14" runat="server" Text="Sex" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td align="center" style="width: 100px" valign="bottom">
                <asp:Label ID="Label15" runat="server" Text="Relationship with the applicant" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="137px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label16" runat="server" Text="1" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtfull1" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtage1" runat="server"></asp:TextBox></td>
                        <td colspan="2">
                            <asp:DropDownList ID="dp1" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtrel1" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 28px">
                <asp:Label ID="Label17" runat="server" Text="2" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px; height: 28px">
                            <asp:TextBox ID="txtfull2" runat="server"></asp:TextBox></td>
                        <td style="width: 100px; height: 28px">
                            <asp:TextBox ID="txtage2" runat="server"></asp:TextBox></td>
                        <td style="height: 28px" colspan="2">
                            <asp:DropDownList ID="dp2" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="width: 100px; height: 28px">
                            <asp:TextBox ID="txtrel2" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 28px">
                <asp:Label ID="Label18" runat="server" Text="3" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px; height: 28px">
                            <asp:TextBox ID="txtfull3" runat="server"></asp:TextBox></td>
                        <td style="width: 100px; height: 28px">
                            <asp:TextBox ID="txtage3" runat="server"></asp:TextBox></td>
                        <td style="height: 28px" colspan="2">
                            <asp:DropDownList ID="dp3" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="width: 100px; height: 28px">
                            <asp:TextBox ID="txtrel3" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 28px;">
                <asp:Label ID="Label19" runat="server" Text="4" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px; height: 28px;">
                            <asp:TextBox ID="txtfull4" runat="server"></asp:TextBox></td>
                        <td style="width: 100px; height: 28px;">
                            <asp:TextBox ID="txtage4" runat="server"></asp:TextBox></td>
                        <td colspan="2" style="height: 28px">
                            <asp:DropDownList ID="dp4" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="width: 100px; height: 28px;">
                            <asp:TextBox ID="txtrel4" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 18px;">
                <asp:Label ID="Label20" runat="server" Text="5" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px; height: 18px;">
                            <asp:TextBox ID="txtfull5" runat="server"></asp:TextBox></td>
                        <td style="width: 100px; height: 18px;">
                            <asp:TextBox ID="txtage5" runat="server"></asp:TextBox></td>
                        <td colspan="2" style="height: 18px">
                            <asp:DropDownList ID="dp5" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="width: 100px; height: 18px;">
                            <asp:TextBox ID="txtrel5" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label25" runat="server" Text="9. Electoral Roll No. / Census No." Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="237px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txt_elecno" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label26" runat="server" Text="10. Trading Licence No." Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="176px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txt_trano" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 40px;">
                <asp:Label ID="Label27" runat="server" Text="11. LPG Consumer No." Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="167px"></asp:Label></td>
            <td style="width: 100px; height: 40px;">
                <asp:TextBox ID="txt_lpgno" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 40px;">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 22px">
                <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="I do hereby declare that the particulars of my family members shows above are correct to the best of my knowledge and belief I do not possess any Ration Card in my name or in the names of above family members." AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 30px;">
            </td>
            <td style="width: 100px; height: 30px;">
                <asp:Button ID="btn_submit" runat="server" Text="Submit" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Enabled="False" OnClick="btn_submit_Click" /></td>
            <td style="width: 100px; height: 30px;">
                <asp:Button ID="btnre" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Reset" OnClick="btnre_Click" /></td>
        </tr>
    </table>
</asp:Content>

