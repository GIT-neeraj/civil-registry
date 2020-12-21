<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="electricity.aspx.cs" Inherits="Default3" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>

    <table id="TABLE1" onclick="return TABLE1_onclick()" border="0">
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="Label1" runat="server" Text="Electricity Application" Width="180px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lbl_msg" runat="server" ForeColor="Red" Text="Label" Visible="False" style="font-weight: bold; font-size: 20pt"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Text="Name of applicant" Width="121px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtelnam" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Text="Occupation" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtoccup" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" Text="Permanent address" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="147px"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtperad" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label5" runat="server" Text="Location of premises where electricity supply is required"
                    Width="345px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtloc" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label6" runat="server" Text="Purpose" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" valign="bottom">
                <asp:RadioButtonList
                    ID="radio_purpose" runat="server" RepeatDirection="Horizontal" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium">
                    <asp:ListItem Selected="True">Residential</asp:ListItem>
                    <asp:ListItem>Industrial</asp:ListItem>
                    <asp:ListItem>Commercial</asp:ListItem>
                    <asp:ListItem>Storage</asp:ListItem>
                    <asp:ListItem>Govt. requirement</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" Text="Covered area" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtcov" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label8" runat="server" Text="Load details" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtlocal" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label9" runat="server" Text="K No:" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtkno" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 19px">
                <asp:Label ID="Label10" runat="server" Text="Existing load" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 19px">
                <table border="1" style="width: 509px">
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label11" runat="server" Text="Existing electric point" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                <asp:Label ID="Label12" runat="server" Text="Wattage per point" Width="134px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                <asp:Label ID="Label13" runat="server" Text="Total wattage" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label14" runat="server" Text="Light" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtwat1" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txttot1" runat="server"></asp:TextBox>
                            <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="kw"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label15" runat="server" Text="Fan" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtwat2" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txttot2" runat="server"></asp:TextBox>
                            <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="kw"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label16" runat="server" Text="Light plug" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtwat3" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txttot3" runat="server"></asp:TextBox>
                            <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="kw"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label17" runat="server" Text="Power plug" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtwat4" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txttot4" runat="server"></asp:TextBox>
                            <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="kw"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label18" runat="server" Text="Air conditions" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtwat5" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txttot5" runat="server"></asp:TextBox>
                            <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="kw"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 22px">
                <asp:Label ID="Label19" runat="server" Text="Motor load" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px; height: 22px">
                <asp:TextBox ID="txtwat6" runat="server"></asp:TextBox></td>
                        <td style="width: 100px; height: 22px">
                <asp:TextBox ID="txttot6" runat="server"></asp:TextBox>
                            <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text="kw"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 22px">
                        </td>
                        <td style="width: 100px; height: 22px">
                        </td>
                        <td style="width: 100px; height: 22px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 22px">
                        </td>
                        <td style="width: 100px; height: 22px">
                        </td>
                        <td style="width: 100px; height: 22px">
                            <asp:Button ID="btnCalc" runat="server" OnClick="btnCalc_Click" Text="Calculate" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 20px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label27" runat="server" Text="Total" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
                <asp:Label ID="Label41" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Medium" Text="kw"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:RadioButton ID="rdbtncert" runat="server" Text="I certify that the information given below is correct" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" AutoPostBack="True" Enabled="False" OnCheckedChanged="rdbtncert_CheckedChanged" /></td>
        </tr>
        <tr>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td colspan="3" align="right" style="text-align: center">
                <asp:Button ID="btnsub" runat="server" Text="Submit" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" OnClick="btnsub_Click" Enabled="False" />
                <asp:Button ID="bt_reset" runat="server" Style="font-weight: bold; font-size: medium;
                    font-family: 'Times New Roman'" Text="Reset" Width="58px" OnClick="bt_reset_Click" /></td>
        </tr>
    </table>
    &nbsp;
</asp:Content>

