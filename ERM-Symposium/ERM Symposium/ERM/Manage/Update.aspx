<%@ Page Title="" Language="C#" MasterPageFile="~/ERM/MasterPage.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="ERM_Symposium.ERM.Manage.Update" %>

<asp:Content ID="MyContent" ContentPlaceHolderID="MyContentPlaceHolder" runat="server">
    <table width="772" cellspacing="0" cellpadding="0" border="0" align="center">
    <tr>
        <td>

            <table border="0">
                <tr>
                    <td colspan="5"><h2>Registration Information</h2></td>
                </tr>
                <tr>
                    <td width="10"><img src="/ERM/images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>First Name:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtFirstName" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td width="10"><img src="/ERM/images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>Last Name:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtLastName" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td width="10">&nbsp;</td>
                    <td width="5">&nbsp;</td>
                    <td>Badge Name:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtBadgeName" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td width="10"><img src="/ERM/images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>Email Address:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtEmailAddress" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="5"><h2>Lunch Options</h2></td>
                </tr>
                <tr>
                    <td colspan="5"><asp:RadioButton ID="optRegular" runat="server" Text="Regular" GroupName="Lunch" /> <asp:RadioButton ID="optFruitPlate" runat="server" Text="Fruit Plate" GroupName="Lunch" /> <asp:RadioButton ID="optVegetarian" runat="server" Text="Vegetarian" GroupName="Lunch" /> <asp:RadioButton ID="optKosher" runat="server" Text="Kosher" GroupName="Lunch" /> <asp:RadioButton ID="optGluttenFree" Text="Glutten Free" runat="server" GroupName="Lunch" /></td>
                </tr>
                <tr>
                    <td colspan="5"><h2>Accessibility Options</h2></td>
                </tr>
                <tr>
                    <td colspan="5">Please indicate if you require specific aid or service to fully participate.</td>
                </tr>
               <tr>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5"><asp:CheckBox ID="chkAudioAid" runat="server" Text="Audio Aid" /> <asp:CheckBox ID="chkVisualAid" runat="server" Text="Visual Aid" /> <asp:CheckBox ID="chkMobileAid" runat="server" Text="Mobile Aid" /></td>
                </tr>
                <tr>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5"><asp:Button ID="cmdUpdate" runat="server" Text="UPDATE" OnClick="cmdUpdate_Click" />&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="cmdCancel" runat="server" OnClick="cmdCancel_Click">Cancel</asp:LinkButton></td>
                </tr>
            </table>

        </td>
    </tr>
</table>
</asp:Content>