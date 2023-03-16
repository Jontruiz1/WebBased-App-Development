<%@ Page Title="" Language="C#" MasterPageFile="/FinalExam/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CS440FinalExamRuiz.CS440FinalExamRuiz.Registration" %>

<asp:Content ID="MyContent" ContentPlaceHolderID="MyContentPlaceHolder" runat="server">

    <div>


        <h2>Conference Fees and Registration Options:</h2>
        <asp:CheckBox ID="chkPreWorkshop" text="&nbsp;Pre-Conference Workshop Only: $50" runat="server" AutoPostBack="True" OnCheckedChanged="chkPreWorkshop_CheckedChanged" />
        <br />
        <asp:RadioButtonList ID="conRegFees" runat="server" OnSelectedIndexChanged="conRegFees_SelectedIndexChanged" AutoPostBack="True" Height="96px">
            <asp:ListItem Value="575" Selected="True">&nbsp;Early (by Mar 7): $575</asp:ListItem>
            <asp:ListItem Value="675">&nbsp;Regular (by July 31): $675</asp:ListItem>
            <asp:ListItem Value="800">&nbsp;On-site (after July 31): $800</asp:ListItem>
            <asp:ListItem Value="150">&nbsp;Student: $150</asp:ListItem>
        </asp:RadioButtonList>
        <br />

        <p><b>Registration Subtotal:</b> <asp:Label ID="lblSubTotal" runat="server" Text="$575.00"></asp:Label></p>

        <p>Please enter your billing and shipping information:</p>

        <h2>Billing Address:</h2>
        <table cellpadding="3" cellspacing="3">
            <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td >Name:</td>
                <td width="5" ></td>
                <td><asp:TextBox ID="txtBillName" runat="server"></asp:TextBox></td>
                <td width="5"></td>
                <td><asp:RequiredFieldValidator ID="valBillingName" runat="server" ControlToValidate="txtBillName" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></td>
            </tr>

            <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td>Address 1:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtBillAdd1" runat="server"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td>
                    <asp:RequiredFieldValidator ID="valBillAddress1" runat="server" ControlToValidate="txtBillAdd1" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>

             <tr>
                <td>
                    &nbsp;</td>
                <td width="5"></td>
                <td>Address 2:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtBillAdd2" runat="server"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td></td>
            </tr>


            <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td>City:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtBillCity" runat="server"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td>
                    <asp:RequiredFieldValidator ID="valBillCity" runat="server" ControlToValidate="txtBillCity" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td>State/Province:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtBillState" runat="server" Columns="3" EnableViewState="False" MaxLength="2"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td>
                    <asp:RequiredFieldValidator ID="valBillState" runat="server" ControlToValidate="txtBillState" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td>Zip:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtBillZip" runat="server" Columns="6" MaxLength="5"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td>
                    <asp:RequiredFieldValidator ID="valBillZip" runat="server" ControlToValidate="txtBillZip" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
        </table>
        <br />

        <h2>Shipping Address:</h2>

        <p><asp:CheckBox ID="chkBillToShip" runat="server" text ="&nbsp; Shipping Address same as Billing" AutoPostBack="True" OnCheckedChanged="chkBillToShip_CheckedChanged"/></p>

         <table cellpadding="3" cellspacing="3">
            <tr>
                <td ><img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td >Name:</td>
                <td width="5" ></td>
                <td><asp:TextBox ID="txtShipName" runat="server"></asp:TextBox></td>
                <td width="5"></td>
                <td><asp:RequiredFieldValidator ID="valShipName" runat="server" ControlToValidate="txtShipName" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></td>
            </tr>

            <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td>Address 1:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtShipAdd1" runat="server"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td>
                    <asp:RequiredFieldValidator ID="valShipAdd1" runat="server" ControlToValidate="txtShipAdd1" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>

             <tr>
                <td>&nbsp;</td>
                <td width="5"></td>
                <td>Address 2:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtShipAdd2" runat="server"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td></td>
            </tr>


            <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td>City:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtShipCity" runat="server"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td>
                    <asp:RequiredFieldValidator ID="valShipCity" runat="server" ControlToValidate="txtShipCity" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td>State/Province:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtShipState" runat="server" Columns="3" MaxLength="2"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td>
                    <asp:RequiredFieldValidator ID="valShipState" runat="server" ControlToValidate="txtShipState" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td>Zip:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtShipZip" runat="server" Columns="6" MaxLength="5"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td>
                    <asp:RequiredFieldValidator ID="valShipZip" runat="server" ControlToValidate="txtShipZip" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
        </table>
        <br />

        <h2>Contact Information</h2>

        <table>
            <tr>
                <td style="height: 28px"><img src="Images/required.gif" /></td>
                <td width="5" style="height: 28px"></td>
                <td style="height: 28px">Phone:</td>
                <td width="5" style="height: 28px"></td>
                <td style="height: 28px">
                    <asp:TextBox ID="txtPhone" runat="server" Columns="14" Height="26px" MaxLength="13"></asp:TextBox>
                </td>
                <td width="5" style="height: 28px"></td>
                <td style="height: 28px">
                    <asp:RequiredFieldValidator ID="valPhone" runat="server" ControlToValidate="txtPhone" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td style="height: 28px">
                    <img src="../CS440FinalExamRuiz/Images/required.gif" style="width: 9px; height: 8px" /></td>
                <td width="5" style="height: 28px"></td>
                <td style="height: 28px">Email:</td>
                <td width="5" style="height: 28px"></td>
                <td style="height: 28px">
                    <asp:TextBox ID="txtEmail" runat="server" Columns="20" MaxLength="19"></asp:TextBox>
                </td>
                <td width="5" style="height: 28px"></td>
                <td style="height: 28px">
                    <asp:RequiredFieldValidator ID="valEmail" runat="server" ControlToValidate="txtEmail" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="red" Display="Dynamic" ErrorMessage="Error: Invalid Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        

        <h2>Payment Information</h2>
 
        <table cellpadding="3" cellspacing="3">
            <tr>
                <td ><img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td >Name:</td>
                <td width="5" ></td>
                <td><asp:TextBox ID="txtPayName" runat="server" MaxLength="50"></asp:TextBox></td>
                <td width="5"></td>
                <td><asp:RequiredFieldValidator ID="valPayName" runat="server" ControlToValidate="txtPayName" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></td>
            </tr>

            <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td>Card Type:</td>
                <td width="5"></td>
                <td>
                    <asp:DropDownList ID="drpCardType" runat="server">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>MasterCard</asp:ListItem>
                        <asp:ListItem>Discover</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td width="5"></td>
                <td></td>
            </tr>

             <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" style="width: 9px; height: 8px" /></td>
                <td width="5"></td>
                <td>Card Number:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtCardNum" runat="server" Columns="16" MaxLength="12"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td>
                    <asp:RequiredFieldValidator ID="valCardNum" runat="server" ErrorMessage="Error: Required Field" ControlToValidate="txtCardNum" CssClass="red" Display="Dynamic"></asp:RequiredFieldValidator></td>
            </tr>


            <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td>CCV Code:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtCCVCode" runat="server" Columns="5" MaxLength="4"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td>
                    <asp:RequiredFieldValidator ID="valCCV" runat="server" ControlToValidate="txtCCVCode" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <img src="../CS440FinalExamRuiz/Images/required.gif" /></td>
                <td width="5"></td>
                <td>Expiration Date:</td>
                <td width="5"></td>
                <td>
                    <asp:TextBox ID="txtExpMonth" runat="server" Columns="3" MaxLength="2"></asp:TextBox>
                &nbsp;/
                    <asp:TextBox ID="txtExpYear" runat="server" Columns="5" MaxLength="4"></asp:TextBox>
                </td>
                <td width="5"></td>
                <td>
                    <asp:RequiredFieldValidator ID="valExpMonth" runat="server" ControlToValidate="txtExpMonth" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                     <asp:RequiredFieldValidator ID="valExpYear" runat="server" ControlToValidate="txtExpYear" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
        </table>

        <br />
        <p><asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbtnCancel" runat="server" CausesValidation="False">CANCEL</asp:LinkButton></p>
    </div>

</asp:Content>
