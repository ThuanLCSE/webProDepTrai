<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shipper.aspx.cs" Inherits="Shipper" %>

<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
    <table width="100%">
        <tr >
            <td width="10%">
                Shipper ID :
            </td>
            <td>
                <asp:Label ID="lblShipperID" runat="server"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Company Name:
            </td>
            <td>
                <asp:TextBox ID="txtCompanyName" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter Company Name" ControlToValidate="txtCompanyName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Phone :
            </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Enter number XXXX-XXX-XXX" 
                    ValidationExpression="\d{4}-\d{3}-\d{3}" ControlToValidate="txtPhone"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
    <div>
        <td colspan="2">
            <asp:Button ID="btnAddShipper" runat="server" Text="Add" 
                onclick="btnAddShipper_Click" />
            <asp:Button ID="btnUpdateShipper" runat="server" Text="Update" 
                onclick="btnUpdateShipper_Click" />
            <asp:Button ID="btnDelteShipper" runat="server" Text="Delete" 
                onclick="btnDelteShipper_Click" CausesValidation="False" />
            <asp:Button ID="btnClearShipper" runat="server" Text="Clear" 
                onclick="btnClearShipper_Click" />
            <br />
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:DropDownList ID="ddlSearch" runat="server">
        </asp:DropDownList>
            <asp:Button ID="btnSearchShipper" runat="server" Text="Search" 
                CausesValidation="False" onclick="btnSearchShipper_Click" />
        </td>
    </div>
</asp:Content>

<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
    <asp:GridView ID="gvShipper" runat="server" 
        onselectedindexchanged="gvShipper_SelectedIndexChanged">
    </asp:GridView>
</asp:Content>
