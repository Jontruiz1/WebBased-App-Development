<%@ Page Title="" Language="C#" MasterPageFile="~/ERM/MasterPage.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="ERM_Symposium.ERM.Manage.Delete" %>
<asp:Content ID="MyContent" ContentPlaceHolderID="MyContentPlaceHolder" runat="server">
        <table width="772" cellspacing="0" cellpadding="0" align="center">
        <tr>
            <td style="height: 25px"><h2>Delete Registration</h2></td>
        </tr>
        <tr>
            <td>If you are ABSOLUTELY POSITIVE that you want to DELETE this registration from the database, confirm your action and click the button below.</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chkConfirm" runat="server" Text="Yes, I am sure I want to remove this registration." />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="cmdDelete" runat="server" OnClick="cmdDelete_Click" Text="DELETE" />
&nbsp;&nbsp;
                <asp:LinkButton ID="cmdCancel" runat="server" OnClick="cmdCancel_Click">CANCEL</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>