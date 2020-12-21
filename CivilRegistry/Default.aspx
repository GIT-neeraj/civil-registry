<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="X-Large" Text="For the registration of marriage"></asp:Label><br />
        <br />
        Click Here for
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="Medium" NavigateUrl="~/marriage.aspx">Registration form</asp:HyperLink><br />
        <br />
        IMPORTANT: The documents &amp; other requirement at the time of Marriage Registration
        are as under: </strong>
    <ol class="standard">
        <li style="font-size: 11px; font-family: verdana"><strong>Residence proof. (Election
            I Card) One Attested Photocopy along with original. </strong></li>
        <li style="font-size: 11px; font-family: verdana"><strong>Date of Birth Proofs of both
            parties (10th Class Certificate / Date of Birth certificate). One attested copies
            each along with original. </strong></li>
        <li style="font-size: 11px; font-family: verdana"><strong>Separate affidavit from Husband
            &amp; Wife giving details of:<br />
            &nbsp; &nbsp; &nbsp;1. Date &amp; Place of Marriage.<br />
            &nbsp; &nbsp; &nbsp;2. Date of birth.<br />
            &nbsp; &nbsp; &nbsp;3. Marital Status at the time of marriage.<br />
            &nbsp; &nbsp; &nbsp;4. Affirmation that parties are not related to each other within
            the prohibited
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; degree of relationship as per Hindu Marriage Act.<br />
            &nbsp; &nbsp; &nbsp;5. Citizenship. </strong></li>
        <li class="standard"><strong>Two Passport Size Photograph of Husband &amp; Two Passport
            Size Photograph of Wife and ONE Photo of Marriage. All should be attested by Gazetted
            Officer. </strong></li>
        <li><strong>Marriage Invitation Card, if available. </strong></li>
        <li style="font-size: 11px; font-family: verdana"><strong>Original copy of divorce decree/order
            in case of a divorcee and death certificate of spouse in case of widow/widower </strong>
        </li>
        <li style="font-size: 11px; font-family: verdana"><strong>In case one of the parties
            belong to other than Hindu, Budhist, Jain and Sikh religions, a conversion certificate
            from the priest who solemnized the marriage(in case of Hindu Marriage Act). </strong>
        </li>
        <li style="font-size: 11px; font-family: verdana"><strong>In case of one of the applicant
            is a foreign national, a NO OBJECTION CERTIFICATE in original from the concerned
            Hingh Commission to be submitted along with the application form. </strong></li>
        <li style="font-size: 11px; font-family: verdana"><strong>If marriage was solemnized
            in a religious place, a certificate from the priest is required who solemnized the
            marriage. </strong></li>
        <li><strong>One Gazetted Officer (Gazetted Officer should bring OFFICE SEAL and Office
            Identity Card)</strong></li></ol>
    <p class="standard">
        <strong>NOTE : The Present Address of Husband OR Wife must be within the jurisdiction
            of District IN Which You Are Applying.</strong></p>
    <div align="center">
        &nbsp;</div>
</asp:Content>

