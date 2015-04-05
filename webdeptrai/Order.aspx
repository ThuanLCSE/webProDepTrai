<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
    <table width="100%">
        <tr >
            <td width="10%">
                Order ID :
            </td>
            <td>
                <asp:Label ID="lblOrderID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Customer Name:
            </td>
            <td>
                <asp:DropDownList ID="DDLCus" runat="server" 
                    DataSourceID="CusnameOfOrder" DataTextField="companyname" 
                    DataValueField="custid">
                    <asp:ListItem>Choose name</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="CusnameOfOrder" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TSQLFundamentals2008ConnectionString %>" 
                    SelectCommand="SELECT custid, companyname FROM Sales.Customers">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                Employee Name:
            </td>
            <td>

                <asp:DropDownList ID="DDLEmp" runat="server" 
                    DataSourceID="EmpnameOfOrder" DataTextField="fullname" 
                    DataValueField="empid">
                    <asp:ListItem>Choose name</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="EmpnameOfOrder" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TSQLFundamentals2008ConnectionString %>" 
                    SelectCommand="SELECT empid, lastname +' '+ firstname as fullname FROM HR.Employees">
                </asp:SqlDataSource>

            </td>
        </tr>
        
       <tr>
            <td>
                Order Date:</td>
            <td>

                <asp:TextBox ID="txtOrderDate" runat="server"></asp:TextBox>

        
                <ajaxToolkit:CalendarExtender ID="txtOrderDate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtOrderDate">
                </ajaxToolkit:CalendarExtender>
                <asp:RequiredFieldValidator ID="RFVOrderDate" runat="server" 
                    ControlToValidate="txtOrderDate" ErrorMessage="Enter order date"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>
                Require Date:</td>
            <td>

                <asp:TextBox ID="txtRequireDate" runat="server"></asp:TextBox>

                <ajaxToolkit:CalendarExtender ID="txtRequireDate_CalendarExtender" 
                    runat="server" Enabled="True" TargetControlID="txtRequireDate">
                </ajaxToolkit:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtRequireDate" ErrorMessage="Enter require date"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>
                Shipped Date:</td>
            <td>

                <asp:TextBox ID="txtShippedDate" runat="server"></asp:TextBox>

                <ajaxToolkit:CalendarExtender ID="txtShippedDate_CalendarExtender" 
                    runat="server" Enabled="True" TargetControlID="txtShippedDate">
                </ajaxToolkit:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtShippedDate" ErrorMessage="Enter shipped date"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>
                Shipper Name:</td>
            <td>

                <asp:DropDownList ID="DDLShippername" runat="server" 
                DataSourceID="Shippername" 
                DataTextField="companyname" DataValueField="shipperid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Shippername" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TSQLFundamentals2008ConnectionString %>" 
                    SelectCommand="SELECT companyname,shipperid FROM Sales.Shippers">
                </asp:SqlDataSource>


            </td>
        </tr>
        <tr>
            <td>
                Freight:</td>
            <td>

                <asp:TextBox ID="txtFreight" runat="server"></asp:TextBox>

                <ajaxToolkit:MaskedEditExtender ID="txtFreight_MaskedEditExtender" 
                    runat="server" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="999999" MaskType="Number" TargetControlID="txtFreight">
                </ajaxToolkit:MaskedEditExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtFreight" ErrorMessage="Enter freight"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>
                Ship Name:</td>
            <td>

                <asp:TextBox ID="txtShipName" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtShipName" ErrorMessage="Enter ship name"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>
                Ship Address:</td>
            <td>

                <asp:TextBox ID="txtShipAdd" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtShipAdd" ErrorMessage="Enter ship address"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>
                Ship City:</td>
            <td>

                <asp:TextBox ID="txtShipCity" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtShipCity" ErrorMessage="Enter ship city"></asp:RequiredFieldValidator>

            </td>
        </tr>
         <tr>
            <td>
                Ship Region:</td>
            <td>

                <asp:TextBox ID="txtShipRegion" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtShipRegion" ErrorMessage="Enter ship region"></asp:RequiredFieldValidator>

            </td>
        </tr>  
         <tr>
            <td>
                Ship Postal Code:</td>
            <td>

                <asp:TextBox ID="txtShipPostalCode" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtShipPostalCode" ErrorMessage="Enter ship postal code"></asp:RequiredFieldValidator>

            </td>
        </tr>   
         <tr>
            <td>
                Ship Country:</td>
            <td>

                <asp:TextBox ID="txtShipCountry" runat="server"></asp:TextBox>

            </td>
        </tr>                                        
    </table>
</asp:Content>

<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
    <div>
        <td colspan="2">


            <asp:Button ID="btnAdd" runat="server" Text="Add" onclick="AddOrder_Click" />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" 
            onclick="UpdateOrder_Click" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" 
            CausesValidation="False" onclick="DelteOrder_Click" />
        
        <asp:Button ID="btnClear" runat="server" Text="Clear" onclick="Clear_Click" />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />


            <br />
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:DropDownList ID="ddlSearch" runat="server">
            <asp:ListItem>Customer Name</asp:ListItem>
            <asp:ListItem>Employee Name</asp:ListItem>
            <asp:ListItem>Shipper Name</asp:ListItem>
            <asp:ListItem>Freight</asp:ListItem>
            <asp:ListItem>Ship Name</asp:ListItem>
            <asp:ListItem>Ship Address</asp:ListItem>
            <asp:ListItem>Ship City</asp:ListItem>
            <asp:ListItem>Ship Region</asp:ListItem>
            <asp:ListItem>Ship Postal Code</asp:ListItem>
            <asp:ListItem>Ship Country</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnSearch" runat="server" Text="Search" 
            onclick="btnSearchOrder_Click" CausesValidation="False" />
 
        </td>
    </div>
</asp:Content>

<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">

    <asp:GridView ID="gvOrder" runat="server" AutoGenerateSelectButton="True" 
        onselectedindexchanged="gvOrder_SelectedIndexChanged">
    </asp:GridView>    
</asp:Content>


<asp:Content ID="Content1" runat="server" contentplaceholderid="head">

    <link rel="stylesheet" href="css/style.css" type="text/css" />
    
</asp:Content>



