<%@ Page Title="" Language="C#" MasterPageFile="~/ERM/MasterPage.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="ERM_Symposium.ERM.Manage.View" %>

<asp:Content ID="MyContent" ContentPlaceHolderID="MyContentPlaceHolder" runat="server">
<table width="772" cellspacing="0" cellpadding="0" border="0" align="center">
    <tr>
        <td>

            <table border="0">
                <tr>
                    <td colspan="3"><h2>Registration Information</h2></td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td width="5">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblFirstName" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td width="5">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblLastName" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Badge Name:</td>
                    <td width="5">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblBadgeName" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Email Address:</td>
                    <td width="5">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblEmailAddress" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3"><h2>Lunch Options</h2></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblLunchOption" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3"><h2>Accessibility Options</h2></td>
                </tr>
                <tr>
                    <td colspan="3">Please indicate if you require specific aid or service to fully participate.</td>
                </tr>
               <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblAudio" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblVisual" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblMobile" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="cmdUpdate" runat="server" OnClick="cmdUpdate_Click" Text="UPDATE" />
&nbsp;&nbsp;
                        <asp:Button ID="cmdDelete" runat="server" OnClick="cmdDelete_Click" Text="DELETE" />
&nbsp;&nbsp;
                        <asp:LinkButton ID="cmdCancel" runat="server" OnClick="cmdCancel_Click">CANCEL</asp:LinkButton>
                    </td>
                </tr>
            </table>

        </td>
    </tr>
</table>
</asp:Content>