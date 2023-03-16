<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CSEx02Quotation.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Price quotation</title>

    <style type="text/css">
        .auto-style1 {
            height: 67px;
        }
        .auto-style2 {
            height: 75px;
        }
        .auto-style3 {
            height: 67px;
            width: 166px;
        }
        .auto-style4 {
            width: 166px;
        }
        .auto-style5 {
            height: 75px;
            width: 166px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">

        <h1>Price quotation</h1>
        <table>
            <tr>
                <td class="auto-style3">Sales price</td>
                <td class="auto-style1"><asp:Textbox runat="server" Font-Bold="True" ID="s_price"></asp:Textbox></td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="s_price_req" ErrorMessage="Required" runat="server" ControlToValidate="s_price" ForeColor="Red"/>
                    <asp:RangeValidator ID="s_price_range" type="Integer" MinimumValue="10" MaximumValue="1000" ErrorMessage="Enter a number between 10 and 1000" runat="server" ControlToValidate="s_price" ForeColor="Red"/>
                </td>
            </tr>

            <tr>
                <td class="auto-style4"></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
               <td class="auto-style4">Discount percent</td>
                <td><asp:Textbox runat="server" ID="d_percent"></asp:Textbox></td>
                <td>
                    <asp:RequiredFieldValidator ID="d_percent_req" ErrorMessage="Required" runat="server" ControlToValidate="d_percent" ForeColor="Red"/>
                    <asp:RangeValidator ID="d_percent_range" type="Integer" MinimumValue="10" MaximumValue="50" ErrorMessage="Enter a number between 10 and 50" runat="server" ControlToValidate="d_percent" ForeColor="Red"/>
                </td>
            </tr>

            <tr>
                <td class="auto-style4">Discount amount</td>
                <td><asp:Label runat="server" ID="d_amount" Font-Bold="True"></asp:Label></td>
                <td></td>
            </tr>

            <tr>
                <td class="auto-style4"></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <td class="auto-style5">Total price</td>
                <td class="auto-style2"><asp:Label runat="server" ID="t_price" Font-Bold="True"></asp:Label></td>
                <td class="auto-style2"></td>
            </tr>

            <tr>
                <td class="auto-style4"></td>
                <td></td>
                <td></td>
            </tr>

            <tr>
                <td class="auto-style4"><asp:Button runat="server" id="calc_btn" OnClick="CalcBtnClick" Text="Calculate"/></td>
                <td></td>
                <td></td>
            </tr>
        </table>
        
    </form>
</body>
</html>
