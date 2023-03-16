<%@ Page Title="" Language="C#" MasterPageFile="~/Reservations/Site.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="Reservations.Reservations.Registration" %>

<asp:Content ID="MyContent" ContentPlaceHolderID="MyContentPlaceHolder" runat="server">
    <h1>Reservation Request</h1>
  <p class="red">* means that the field is required</p>

  <h2>Request Data</h2>

  <table>
      <tr>
          <td><span class="red">*</span></td>
          <td width="5">&nbsp;</td>
          <td>Arrival Date:</td>
          <td width="5">&nbsp;</td>
          <td><asp:TextBox ID="txtArrivalDate" runat="server" TextMode="Date" placeholder="mm/dd/yyyy"></asp:TextBox></td>
          <td width="5">&nbsp;</td>
          <td><asp:RequiredFieldValidator ID="valArrivalDate" runat="server" ErrorMessage="Required Field" ControlToValidate="txtArrivalDate" CssClass="red" Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
          <td><span class="red">*</span></td>
          <td width="5">&nbsp;</td>
          <td>Departure Date:</td>
          <td width="5">&nbsp;</td>
          <td><asp:TextBox ID="txtDepartureDate" runat="server" TextMode="Date" placeholder="mm/dd/yyyy"></asp:TextBox></td>
          <td width="5">&nbsp;</td>
          <td><asp:RequiredFieldValidator ID="valDepartureDate" runat="server" ErrorMessage="Required Field" ControlToValidate="txtDepartureDate" CssClass="red" Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
          <td>&nbsp;</td>
          <td width="5">&nbsp;</td>
          <td>Number of People:</td>
          <td width="5">&nbsp;</td>
          <td>
              <asp:DropDownList ID="lstPeopleNumber" runat="server">
                  <asp:ListItem Selected="True">1</asp:ListItem>
                  <asp:ListItem>2</asp:ListItem>
                  <asp:ListItem>3</asp:ListItem>
                  <asp:ListItem>4</asp:ListItem>
                  <asp:ListItem>5</asp:ListItem>
                  <asp:ListItem>6</asp:ListItem>
              </asp:DropDownList>
          </td>
          <td width="5">&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr>
          <td>&nbsp;</td>
          <td width="5">&nbsp;</td>
          <td>Bed Type:</td>
          <td width="5">&nbsp;</td>
          <td><asp:RadioButton ID="optKing" runat="server" GroupName="BedType" Text="&nbsp;King" Checked="True" />
&nbsp;<asp:RadioButton ID="optTwoQueen" runat="server" GroupName="BedType" Text="&nbsp;Two Queen" />
&nbsp;<asp:RadioButton ID="optOneQueen" runat="server" GroupName="BedType" Text="&nbsp;One Queen" /></td>
          <td width="5">&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
  </table>

  <br />
  <h2>Special Request</h2>
  <p><asp:TextBox ID="txtSpecialRequest" runat="server" Rows="3" TextMode="MultiLine" Columns="50"></asp:TextBox></p>
    <p>
        <asp:CheckBox ID="chkAudioAid" runat="server" Text="&nbsp; Audio Aid" />&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="chkVisualAid" runat="server" Text="&nbsp; Visual Aid" />&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="chkMobileAid" runat="server" Text="&nbsp; Mobile Aid" />
    </p>

  <h2>Contact Information</h2>

    <table>
      <tr>
          <td><span class="red">*</span></td>
          <td width="5">&nbsp;</td>
          <td>First Name:</td>
          <td width="5">&nbsp;</td>
          <td><asp:TextBox ID="txtFirstName" runat="server" MaxLength="50"></asp:TextBox></td>
          <td width="5">&nbsp;</td>
          <td><asp:RequiredFieldValidator ID="valFirstName" runat="server" ErrorMessage="Required Field" ControlToValidate="txtFirstName" CssClass="red" Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
          <td><span class="red">*</span></td>
          <td width="5">&nbsp;</td>
          <td>Last Name:</td>
          <td width="5">&nbsp;</td>
          <td><asp:TextBox ID="txtLastName" runat="server" MaxLength="50"></asp:TextBox></td>
          <td width="5">&nbsp;</td>
          <td><asp:RequiredFieldValidator ID="valLastName" runat="server" ErrorMessage="Required Field" ControlToValidate="txtLastName" CssClass="red" Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
          <td><span class="red">*</span></td>
          <td width="5">&nbsp;</td>
          <td>Email Address:</td>
          <td width="5">&nbsp;</td>
          <td><asp:TextBox ID="txtEmailAddress" runat="server" TextMode="Email" MaxLength="100"></asp:TextBox></td>
          <td width="5">&nbsp;</td>
          <td><asp:RequiredFieldValidator ID="valEmailAddress_Required" runat="server" ErrorMessage="Required Field" ControlToValidate="txtEmailAddress" CssClass="red" Display="Dynamic"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="valEmailAddress_RegEx" runat="server" ControlToValidate="txtEmailAddress" CssClass="red" Display="Dynamic" ErrorMessage="Invalid Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </td>
      </tr>
      <tr>
          <td><span class="red">*</span></td>
          <td width="5">&nbsp;</td>
          <td>Phone:</td>
          <td width="5">&nbsp;</td>
          <td><asp:TextBox ID="txtPhone1" runat="server" Columns="3" MaxLength="3"></asp:TextBox>&nbsp;- <asp:TextBox ID="txtPhone2" runat="server" Columns="3" MaxLength="3"></asp:TextBox>&nbsp;- <asp:TextBox ID="txtPhone3" runat="server" Columns="4" MaxLength="4"></asp:TextBox></td>
          <td width="5">&nbsp;</td>
          <td><asp:RequiredFieldValidator ID="valPhone1" runat="server" ErrorMessage="Required Field" ControlToValidate="txtPhone1" CssClass="red" Display="Dynamic"></asp:RequiredFieldValidator><asp:RequiredFieldValidator ID="valPhone2" runat="server" ErrorMessage="Required Field" ControlToValidate="txtPhone2" CssClass="red" Display="Dynamic"></asp:RequiredFieldValidator><asp:RequiredFieldValidator ID="valPhone3" runat="server" ErrorMessage="Required Field" ControlToValidate="txtPhone3" CssClass="red" Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
          <td>&nbsp;</td>
          <td width="5">&nbsp;</td>
          <td>Preferred Method:</td>
          <td width="5">&nbsp;</td>
          <td><asp:DropDownList ID="lstPreferredMethod" runat="server">
              <asp:ListItem Text="" Selected="True">Email</asp:ListItem>
              <asp:ListItem>Phone</asp:ListItem>
              </asp:DropDownList></td>
          <td width="5">&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
    </table>
    <br />
    <p><asp:Button ID="cmdSubmit" runat="server" Text="Submit" OnClick="cmdSubmit_Click" CssClass="btn btn-primary" />&nbsp;&nbsp;&nbsp;<asp:Button ID="cmdClear" runat="server" Text="Clear" CssClass="btn btn-secondary" OnClick="cmdClear_Click" CausesValidation="False" /></p>
</asp:Content>