<%@ Page Title="" Language="C#" MasterPageFile="~/PscaAnnualSurvey2022/Site.Master" AutoEventWireup="true" CodeBehind="OrderForms.aspx.cs" Inherits="PSCAnnualSurvey2022.PscaAnnualSurvey2022.OrderForms" %>
<asp:Content ID="MyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <p>To place your secure line via credit car, please fill out the information </p>
    <p>Select your membership type: </p>
    <p>
        <asp:RadioButton ID="optRegularPrice" Text="Regular Price: $295.00" runat="server" OnCheckedChanged="optRegularPrice_CheckedChanged" /><br/>
        <asp:RadioButton ID="optPSCAPrice" Text="PSCA Member Price: $95.00" runat="server" OnCheckedChanged="optPSCAPrice_CheckedChanged" />
    </p>

    <p>Quantity: 
        <asp:DropDownList ID="quantityList" runat="server">
        <asp:ListItem Selected="True" Value="1">1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
    </p>

    <p>
       <b>Total Cost: 
        <asp:Label ID="lblTotalCost" runat="server" Text="Label"></asp:Label>

       </b>

    </p>

    <p>Please enter your billing and shipping information</p>

    <h2>Billing Address</h2>
    <table cellpadding="3" cellspacing ="3">
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>Name:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="nameTxt" runat="server"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="valBillingName" runat="server" ControlToValidate="nameTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>Address 1:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="addTxt" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="valBillingAddress" runat="server" ControlToValidate="addTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 34px"></td>
            <td width="5" style="height: 34px"></td>
            <td style="height: 34px">Address 2:</td>
            <td width="5" style="height: 34px"></td>
            <td style="height: 34px">
                <asp:TextBox ID="add2Txt" runat="server"></asp:TextBox>
            </td>
            <td width="5" style="height: 34px"></td>
            <td style="height: 34px"></td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>City:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="cityTxt" runat="server" EnableTheming="True"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="valBillingCity" runat="server" ControlToValidate="cityTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>State:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="stateTxt" runat="server"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="valBillingState" runat="server" ControlToValidate="stateTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>Zip Code:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="zipTxt" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="valBillingZip" runat="server" ControlToValidate="zipTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>

    <h2>Shipping Address</h2>
    <p><asp:CheckBox ID="chkCopyBillingToShipping" Text="Same as Billing Address" runat="server" OnCheckedChanged="chkCopyBillingToShipping_CheckedChanged" /></p>

    <table cellpadding="3" cellspacing ="3">
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>Name:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>Address 1:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="addTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 34px"></td>
            <td width="5" style="height: 34px"></td>
            <td style="height: 34px">Address 2:</td>
            <td width="5" style="height: 34px"></td>
            <td style="height: 34px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td width="5" style="height: 34px"></td>
            <td style="height: 34px"></td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>City:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" EnableTheming="True"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cityTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>State:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="stateTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>Zip Code:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="zipTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <br />

    <h2>Contact information</h2>
    <table cellpadding="3" cellspacing ="3">
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>Phone:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="nameTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>Fax:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td></td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>Email:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" EnableTheming="True"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="cityTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Error: Invalid Format" CssClass="red"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>


    <h2>Payment Information</h2>
    <table cellpadding="3" cellspacing ="3">
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>Card Name:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="nameTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td width="5"></td>
            <td>Card Type:</td>
            <td width="5"></td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>Chase</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="5"></td>
            <td></td>
        </tr>
        <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>Card Number:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" EnableTheming="True"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="cityTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>Expiration Date:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="TextBox15" runat="server" MaxLength="2" Width="30px"></asp:TextBox>
&nbsp;/
                <asp:TextBox ID="TextBox16" runat="server" MaxLength="2" Width="37px"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="cityTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td><img src="Images/required.gif" /></td>
            <td width="5"></td>
            <td>CCV:</td>
            <td width="5"></td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server" EnableTheming="True" OnTextChanged="TextBox14_TextChanged"></asp:TextBox>
            </td>
            <td width="5"></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="cityTxt" CssClass="red" ErrorMessage="Error: Required Field" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>

    <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />

    

</asp:Content>
