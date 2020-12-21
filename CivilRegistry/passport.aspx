<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="passport.aspx.cs" Inherits="_Default" Title="Civil Registry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="center" colspan="3" style="height: 20px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="X-Large" Text="Passport Application Form"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="lbl_msg" runat="server" ForeColor="Red" Style="font-size: 18pt" Text="Label"
                    Visible="False"></asp:Label></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px" rowspan="17">
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Fee amount Rs." Width="117px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtfee" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Cash/D.D"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="Txtcash" runat="server" ></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 82px; height: 26px;"><a name="pos1"></a>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Bank code"></asp:Label></td>
            <td style="width: 100px; height: 26px;">
                <asp:TextBox ID="Txtbank" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 82px; height: 26px;">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="D.D No:"></asp:Label></td>
            <td style="width: 100px; height: 26px;">
                <asp:TextBox ID="Txtdd" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Date of issue of D.D" Width="196px"></asp:Label></td>
            <td style="width: 100px">
            <input id="dd" name="dd" style="width: 148px" type="text" readonly="readOnly" />
            <a href="#pos1" onclick="displayDatePicker('dd','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a>
                &nbsp;
                </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Name of the applicant as should appear in the passport"
                    Width="268px"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:TextBox ID="Txtname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="If you have ever changed your name,please indicate the previous name(s) in full"
                    Width="266px"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:TextBox ID="Txtprename" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 82px"><a name="pos2"></a>
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Sex"></asp:Label></td>
            <td style="width: 100px">
                &nbsp;<asp:DropDownList ID="drop_sex" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 82px; height: 26px;" valign="top">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Date of birth" Width="130px"></asp:Label></td>
            <td style="width: 100px; height: 26px;" valign="top">
                <a href="#pos2" onclick="displayDatePicker('dob','','dmy');">
                <asp:TextBox ID="pb" runat="server"></asp:TextBox>
                </a>
                &nbsp;&nbsp;
            <%--<a href="#pos2" onclick="displayDatePicker('dob','','dmy');">
                <img src="images/calendar_view_day.png" alt="cal" 
                    style="border-style: none; border-color: inherit; border-width: medium; width: 16px;" /></a>--%> 
                    <a href="#pos1" onclick="displayDatePicker('dob','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a>
                &nbsp;</td>
        
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Place of birth" Width="130px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtplace" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Father's full name/ legal Guardian's full name" Width="179px"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:TextBox ID="txtfathername" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Mother's full name" Width="149px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtmomname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 82px"><a name="pos3"></a>
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="If married, full name of spouse" Width="216px"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:TextBox ID="txtspousename" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Present residential address" Width="209px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="149px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 82px; height: 20px">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Please give the date since residing at the above mentioned address:"
                    Width="275px"></asp:Label></td>
            <td style="width: 100px; height: 20px">
            <input id="dtadd" name="dtadd" style="width: 146px" type="text"  readonly="readOnly" /><a href="#pos3" onclick="displayDatePicker('dtadd','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a>
                &nbsp;
                </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Permanent address with PIN code" Width="236px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtpmtaddr" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="E-mail ID, if any" Width="172px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="Invalid ID" Font-Bold="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="61px"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 20px">&nbsp;
                </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Details of previous passport(s) held or application,if any, made to any other passport office"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 82px; height: 22px;">
            </td>
            <td style="width: 100px; height: 22px;">
            </td>
            <td style="width: 100px; height: 22px;">
            </td>
        </tr>
        <tr>
            <td style="width: 82px"><a name="pos5"></a>
                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Passport no. or File no." Width="157px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtpassno" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Date of issue/ Application" Width="175px"></asp:Label></td>
            <td style="width: 100px">
            <input id="dtissue" name="dtissue" style="width: 149px" type="text" readonly="readOnly" /><a href="#pos5" onclick="displayDatePicker('dtissue','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a>
                &nbsp;
                </td>
            <td style="width: 100px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Place of issue/Application" Width="172px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtplaceappln" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Other details"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Educational qualifications" Width="173px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtedu" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 82px; height: 26px;">
                <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Profession"></asp:Label></td>
            <td style="width: 100px; height: 26px;">
                <asp:TextBox ID="txtprof" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Visible distinguishing mark" Width="187px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtvisible" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Height in cm" Width="104px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtheight" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Are u working in Central Government/State Govt/ PSU/Statutory bodies"
                    Width="269px"></asp:Label></td>
            <td style="width: 100px" valign="top">
                &nbsp;<asp:DropDownList ID="drop_working" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Are you a citizen of India by: Birth/ Descent/ Registration/ Naturalisation"
                    Width="187px"></asp:Label></td>
            <td align="left" style="width: 100px" valign="top">
                <asp:TextBox ID="txtreg" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text='Are you Eligible for " Emigration check not required?"'
                    Width="237px"></asp:Label></td>
            <td align="left" style="width: 100px" valign="top">
                &nbsp;<asp:DropDownList ID="drop_elibile" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="If yes ,mention the elgible category" Width="241px"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:TextBox ID="txtmen" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="In case of minors, if any of the parents hold valid Indian passport in married name or applied for, fill up the following details"
                    Width="602px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Mother"></asp:Label></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 82px"><a name="pos6"></a>
                <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Passport/ File no:" Width="188px"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:TextBox ID="txtfile" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 82px" valign="top">
                <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Date of issue/ Application" Width="187px"></asp:Label></td>
            <td style="width: 100px">
            <input id="dateissue" name="dateissue" style="width: 149px" type="text"  readonly="readOnly" /><a href="#pos6" onclick="displayDatePicker('dateissue','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a>
                &nbsp;
                </td>
            <td style="width: 100px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 82px; height: 26px;">
                <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Place of issue" Width="124px"></asp:Label></td>
            <td style="width: 100px; height: 26px;">
                <asp:TextBox ID="txtpla" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Father"></asp:Label></td>
            <td style="width: 100px">
                </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label38" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Passport/ File no:" Width="184px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 82px; height: 26px;"><a name="pos7"></a>
                <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Date of issue/ Application" Width="184px"></asp:Label></td>
            <td style="width: 100px; height: 26px;">
            
            <input id="datefissue" name="datefissue" style="width: 148px" type="text"  readonly="readOnly" />
            <a href="#pos7" onclick="displayDatePicker('datefissue','','dmy');">
            <img src="images/calendar_view_day.png" alt="cal" style="border:none" />
            </a>
                </td>
            <td style="width: 100px; height: 26px;">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 82px">
                <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Place of issue" Width="152px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtpl" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 82px; text-align: right;" align="right">
                <asp:Button ID="Button7" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Submit" OnClick="Button7_Click" /></td>
            <td style="width: 100px">
                <asp:Button ID="Button8" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="Reset" OnClick="Button8_Click" /></td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

