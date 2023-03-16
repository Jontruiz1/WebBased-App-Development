<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Test.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
        </div>
        <asp:RangeValidator ID="rangeValid" validationgroup="txtvalid" Type="Integer" ControlToValidate="txtValue01" MinimumValue="1" MaximumValue="10" Text="The value must be from 1 to 10!" runat ="server"></asp:RangeValidator>
        <asp:TextBox ID="txtValue01" validationgroup="txtvalid"  value="1" runat="server" ></asp:TextBox>
        <asp:Button ID="Calc" runat="server" OnClick="Calc_Click" Text="Calculate" />
        <asp:Button ID="Redirect"  runat  ="server" Text="Redirect" CausesValidation = "False" PostBackUrl = "~/Redirected.aspx" />
    </form>
</body>
</html>
