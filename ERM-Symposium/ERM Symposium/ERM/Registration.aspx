<%@ Page Title="" Language="C#" MasterPageFile="~/ERM/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ERM_Symposium.Registration" %>

<asp:Content ID="MyContent" ContentPlaceHolderID="MyContentPlaceHolder" runat="server">

            <table border="0">
                <tr>
                    <td colspan="5"><h2>Registration Information</h2></td>
                </tr>
                <tr>
                    <td width="10"><img src="images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>First Name:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtFirstName" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td width="10"><img src="images/required.gif" /></td>
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
                    <td width="10"><img src="images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>Email Address:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtEmailAddress" runat="server" Columns="35" MaxLength="100"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5"><h2>Lunch Options</h2></td>
                </tr>
                <tr>
                    <td colspan="5"><asp:RadioButton ID="optRegular" runat="server" Text="&nbsp;Regular" GroupName="Lunch" /> <asp:RadioButton ID="optFruitPlate" runat="server" Text="&nbsp;Fruit Plate" GroupName="Lunch" /> <asp:RadioButton ID="optVegetarian" runat="server" Text="&nbsp;Vegetarian" GroupName="Lunch" /> <asp:RadioButton ID="optKosher" runat="server" Text="&nbsp;Kosher" GroupName="Lunch" /> <asp:RadioButton ID="optGluttenFree" Text="&nbsp;Glutten Free" runat="server" GroupName="Lunch" /></td>
                </tr>
                <tr>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5"><h2>Accessibility Options</h2></td>
                </tr>
                <tr>
                    <td colspan="5">Please indicate if you require specific aid or service to fully participate.</td>
                </tr>
                <tr>
                    <td colspan="5"><asp:CheckBox ID="chkAudioAid" runat="server" Text="&nbsp;Audio Aid" /> <asp:CheckBox ID="chkVisualAid" runat="server" Text="&nbsp;Visual Aid" /> <asp:CheckBox ID="chkMobileAid" runat="server" Text="&nbsp;Mobile Aid" /></td>
                </tr>
                <tr>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5"><asp:Button ID="cmdSubmit" runat="server" Text="Submit Registration" OnClick="cmdSubmit_Click" CssClass="btn btn-primary" />&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="cmdCancel" runat="server" OnClick="cmdCancel_Click">Cancel</asp:LinkButton></td>
                </tr>
            </table>

</asp:Content>