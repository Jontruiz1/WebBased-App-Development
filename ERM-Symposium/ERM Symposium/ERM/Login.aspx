<%@ Page Title="Login" Language="C#" MasterPageFile="~/ERM/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ERM_Symposium.ERM.Login" %>

<asp:Content ID="MyContent" ContentPlaceHolderID="MyContentPlaceHolder" runat="server">
    <br />
    <table align="center">
      <tr>
        <td>Username:</td>
        <td width="5">&nbsp;</td>
        <td><asp:TextBox ID="txtUsername" runat="server" Columns="30" MaxLength="8" CssClass="MyTextbox"></asp:TextBox></td>
      </tr>
      <tr>
        <td>Password:</td>
        <td width="5">&nbsp;</td>
        <td><asp:TextBox ID="txtPassword" runat="server" Columns="30" MaxLength="24" CssClass="MyTextbox" TextMode="Password"></asp:TextBox></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td width="5">&nbsp;</td>
        <td><asp:Button ID="cmdLogin" runat="server" Text="LOGIN" OnClick="cmdLogin_Click" />&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="cmdCancel" runat="server" OnClick="cmdCancel_Click">CANCEL</asp:LinkButton></td>
      </tr>
    </table>
</asp:Content>