<%@ Page Title="" Language="C#" MasterPageFile="~/ALZ/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ALZ.ALZ.Registration" %>

<asp:Content ID="MyContent" ContentPlaceHolderID="MyContentPlaceHolder" runat="server">

    <h1>Registration Form</h1>

    <table>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td>&nbsp;</td>
            <td>First Name:</td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td><asp:RequiredFieldValidator ID="valFirstName" runat="server" ErrorMessage="Reqiured Field" ControlToValidate="txtFirstName" Display="Dynamic"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td>&nbsp;</td>
            <td>Last Name:</td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td><asp:RequiredFieldValidator ID="valLastName" runat="server" ErrorMessage="Reqiured Field" ControlToValidate="txtLastName" Display="Dynamic"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td>&nbsp;</td>
            <td>Address 1:</td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td><asp:RequiredFieldValidator ID="valAddress1" runat="server" ErrorMessage="Reqiured Field" ControlToValidate="txtAddress1" Display="Dynamic"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td></td>
            <td>&nbsp;</td>
            <td>Address 2:</td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td>&nbsp;</td>
            <td>City:</td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td><asp:RequiredFieldValidator ID="valCity" runat="server" ErrorMessage="Reqiured Field" ControlToValidate="txtCity" Display="Dynamic"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td>&nbsp;</td>
            <td>State:</td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="txtState" runat="server" Columns="2" MaxLength="2"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td><asp:RequiredFieldValidator ID="valState" runat="server" ErrorMessage="Reqiured Field" ControlToValidate="txtState" Display="Dynamic"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td>&nbsp;</td>
            <td>Zip Code:</td>
            <td>&nbsp;</td>
            <td><asp:TextBox ID="txtZipCode" runat="server" Columns="5" MaxLength="5"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td><asp:RequiredFieldValidator ID="valZipCode" runat="server" ErrorMessage="Reqiured Field" ControlToValidate="txtZipCode" Display="Dynamic"></asp:RequiredFieldValidator></td>
        </tr>
    </table>

</asp:Content>