<%@ Page Title="" Language="C#" MasterPageFile="~/ERM/MasterPage.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ERM_Symposium.ERM.Manage.Dashboard" %>

<asp:Content ID="MyContent" ContentPlaceHolderID="MyContentPlaceHolder" runat="server">
    <table width="772" cellspacing="0" cellpadding="0" align="center">
        <tr>
            <td style="height: 25px"><h2>Manage Registration Dashboard</h2></td>
        </tr>
        <tr>
            <td align="center">

                <asp:GridView ID="RegistrationGridView" runat="server" AutoGenerateColumns="false" DataKeyNames="RegistrationID" AllowPaging="true" PageSize="15" GridLines="Both" Width="772px" CellPadding="3" CellSpacing="3" OnPageIndexChanging="RegistrationGridView_PageIndexChanging">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="RegistrationID"
                            DataNavigateUrlFormatString="View.aspx?r={0}" DataTextField="Name" HeaderText="Registrant Name" ItemStyle-Width="245px" />
                    </Columns>
                </asp:GridView>

                <p align="left"><asp:Label ID="lblNoRecords" runat="server" Text="There are no results to show in this view." Visible="false"></asp:Label></p>

            </td>
        </tr>
    </table>
</asp:Content>