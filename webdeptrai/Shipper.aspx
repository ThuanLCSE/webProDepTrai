<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shipper.aspx.cs" Inherits="ProjectWeb.Shipper1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%">
                <tr >
                    <td 0="10%">
                        Shipper ID :
                    </td>
                    <td>
                        <asp:Label ID="lblShipperID" runat="server"></asp:Label>
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
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnAddShipper" runat="server" Text="Add" 
                            onclick="btnAddShipper_Click" />
                        <asp:Button ID="btnUpdateShipper" runat="server" Text="Update" 
                            onclick="btnUpdateShipper_Click" />
                        <asp:Button ID="btnDelteShipper" runat="server" Text="Delete" 
                            onclick="btnDelteShipper_Click" />
                        <asp:Button ID="btnClearShipper" runat="server" Text="Clear" 
                            onclick="btnClearShipper_Click" />
                        <br />
                        <asp:Button ID="btnSearchShipper" runat="server" Text="Search" 
                            CausesValidation="False" onclick="btnSearchShipper_Click" />
                    </td>
                </tr>
            </table><br />
        <asp:GridView ID="gvShipper" runat="server" 
            onselectedindexchanged="gvShipper_SelectedIndexChanged">
            </asp:GridView>
        <br />
    </div>
    </form>
</body>
</html>
