<%@ Page Title="Reservation Confirmation" Language="C#" MasterPageFile="~/Reservations/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Reservations.Reservations.Confirmation" %>

<asp:Content ID="MyContent" ContentPlaceHolderID="MyContentPlaceHolder" runat="server">
    <h1>Reservation Confirmation</h1>

<table>
      <tr>
          <td>Arrival Date:</td>
          <td width="5">&nbsp;</td>
          <td>
              <asp:Label ID="lblArrivalDate" runat="server"></asp:Label>
          </td>
          <td width="5">&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr>
          <td>Departure Date:</td>
          <td width="5">&nbsp;</td>
          <td>
              <asp:Label ID="lblDepartureDate" runat="server"></asp:Label>
          </td>
          <td width="5">&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr>
          <td>Number of People:</td>
          <td width="5">&nbsp;</td>
          <td>
              <asp:Label ID="lblPeopleNumber" runat="server"></asp:Label>
          </td>
          <td width="5">&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr>
          <td>Bed Type:</td>
          <td width="5">&nbsp;</td>
          <td>
              <asp:Label ID="lblBedType" runat="server"></asp:Label>
&nbsp;&nbsp;</td>
          <td width="5">&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
  </table>

  <br />
  <h2>Special Request</h2>
  <p><asp:Label ID="lblSpecialRequest" runat="server"></asp:Label></p>

  <p><asp:Label ID="lblAudioAid" runat="server"></asp:Label><br />
    <asp:Label ID="lblVisualAid" runat="server"></asp:Label><br />
    <asp:Label ID="lblMobileAid" runat="server"></asp:Label></p>

  <h2>Contact Information</h2>

    <table>
      <tr>
          <td>First Name:</td>
          <td width="5">&nbsp;</td>
          <td>
              <asp:Label ID="lblFirstName" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td>Last Name:</td>
          <td width="5">&nbsp;</td>
          <td>
              <asp:Label ID="lblLastName" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td>Email Address:</td>
          <td width="5">&nbsp;</td>
          <td>
              <asp:Label ID="lblEmailAddress" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td>Phone:</td>
          <td width="5">&nbsp;</td>
          <td>
              <asp:Label ID="lblPhone" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td>Preferred Method:</td>
          <td width="5">&nbsp;</td>
          <td>
              <asp:Label ID="lblPreferredMethod" runat="server"></asp:Label>
          </td>
      </tr>
    </table>
    <br />
    <asp:Button ID="cmdConfirm" runat="server" Text="Confirm" OnClick="cmdConfirm_Click" CssClass="btn btn-primary" />
</asp:Content>