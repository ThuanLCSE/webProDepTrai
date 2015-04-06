<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
    <div width="100%">
        
        <div class="form-group">
            <label class="control-label  " >Order ID:</label>
            <asp:TextBox ID="lblOrderID" CssClass="control-label txt1"  runat="server"></asp:TextBox>
       </div>
        <div class="form-group">
               
            <label class="control-label" > Customer Name:</label>
                <asp:DropDownList ID="DDLCus"  CssClass="form-control  txt2" runat="server" 
                    DataSourceID="CusnameOfOrder" DataTextField="companyname" 
                    DataValueField="custid">
                    <asp:ListItem>Choose name</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="CusnameOfOrder" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TSQLFundamentals2008ConnectionString %>" 
                    SelectCommand="SELECT custid, companyname FROM Sales.Customers">
                </asp:SqlDataSource>
       </div>
        
       
        <div class="form-group">
               
            <label class="control-label" >Employee Name:</label>
       

                <asp:DropDownList ID="DDLEmp" CssClass="form-control  txt3" runat="server" 
                    DataSourceID="EmpnameOfOrder" DataTextField="fullname" 
                    DataValueField="empid">
                    <asp:ListItem>Choose name</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="EmpnameOfOrder" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TSQLFundamentals2008ConnectionString %>" 
                    SelectCommand="SELECT empid, lastname +' '+ firstname as fullname FROM HR.Employees">
                </asp:SqlDataSource>
        </div>
        
         <div class="form-group">
               
            <label class="control-label" >Order Date:</label>
                <asp:TextBox ID="txtOrderDate" CssClass="form-control  txt4" runat="server"></asp:TextBox>

        
                <ajaxToolkit:CalendarExtender ID="txtOrderDate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtOrderDate">
                </ajaxToolkit:CalendarExtender>
                <asp:RequiredFieldValidator ID="RFVOrderDate" runat="server" 
                    ControlToValidate="txtOrderDate" ErrorMessage="Enter order date"></asp:RequiredFieldValidator>
            </div>
        <div class="form-group">
               
            <label class="control-label" > Require Date:</label>
                <asp:TextBox ID="txtRequireDate" CssClass="form-control  txt5"  runat="server"></asp:TextBox>

                <ajaxToolkit:CalendarExtender ID="txtRequireDate_CalendarExtender" 
                    runat="server" Enabled="True" TargetControlID="txtRequireDate">
                </ajaxToolkit:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtRequireDate" ErrorMessage="Enter require date"></asp:RequiredFieldValidator>
        </div>
           <div class="form-group">
               
            <label class="control-label" > Shipped Date:</label>
                <asp:TextBox ID="txtShippedDate"  CssClass="form-control  txt6" runat="server"></asp:TextBox>

                <ajaxToolkit:CalendarExtender ID="txtShippedDate_CalendarExtender" 
                    runat="server" Enabled="True" TargetControlID="txtShippedDate">
                </ajaxToolkit:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtShippedDate" ErrorMessage="Enter shipped date"></asp:RequiredFieldValidator>

           </div>
         <div class="form-group">
               
            <label class="control-label" > Shipper Name:</label>
                <asp:DropDownList ID="DDLShippername" CssClass="form-control  txt7"  runat="server" 
                DataSourceID="Shippername" 
                DataTextField="companyname" DataValueField="shipperid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Shippername" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TSQLFundamentals2008ConnectionString %>" 
                    SelectCommand="SELECT companyname,shipperid FROM Sales.Shippers">
                </asp:SqlDataSource>
         </div>
         <div class="form-group">
               
            <label class="control-label" >Freight:</label>
                <asp:TextBox ID="txtFreight"  CssClass="form-control  txt8" runat="server"></asp:TextBox>

                <ajaxToolkit:MaskedEditExtender ID="txtFreight_MaskedEditExtender" 
                    runat="server" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="999999" MaskType="Number" TargetControlID="txtFreight">
                </ajaxToolkit:MaskedEditExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtFreight" ErrorMessage="Enter freight"></asp:RequiredFieldValidator>
</div>
       <div class="form-group">
               
            <label class="control-label" >Ship Name:</label>
             <asp:TextBox ID="txtShipName"  CssClass="form-control  txt9" runat="server"></asp:TextBox>
 <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtShipName" ID="RegularExpressionValidator2" 
               ValidationExpression = "^[\s\S]{2,40}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 40 characters allowed."></asp:RegularExpressionValidator>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtShipName" ErrorMessage="Enter ship name"></asp:RequiredFieldValidator>
</div>
       <div class="form-group">
               
            <label class="control-label" >Ship Address:</label>
                <asp:TextBox ID="txtShipAdd"  CssClass="form-control  txt10"  runat="server"></asp:TextBox>
 <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtShipAdd" ID="RegularExpressionValidator1" 
               ValidationExpression = "^[\s\S]{2,60}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 60 characters allowed."></asp:RegularExpressionValidator>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtShipAdd" ErrorMessage="Enter ship address"></asp:RequiredFieldValidator>
</div>
        <div class="form-group">
               
            <label class="control-label" >Ship City:</label>
            
                <asp:TextBox ID="txtShipCity" CssClass="form-control  txt11" runat="server"></asp:TextBox>
                 <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtShipCity" ID="RegularExpressionValidator3" 
               ValidationExpression = "^[\s\S]{2,15}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 15 characters allowed."></asp:RegularExpressionValidator>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtShipCity" ErrorMessage="Enter ship city"></asp:RequiredFieldValidator>
</div>
         <div class="form-group">
            <label class="control-label" >Ship Region:</label>
                <asp:TextBox ID="txtShipRegion" CssClass="form-control  txt12"  runat="server"></asp:TextBox>
 <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtShipRegion" ID="RegularExpressionValidator4" 
               ValidationExpression = "^[\s\S]{2,15}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 15 characters allowed."></asp:RegularExpressionValidator>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtShipRegion" ErrorMessage="Enter ship region"></asp:RequiredFieldValidator>
</div>
          <div class="form-group">
            <label class="control-label" >Ship Postal Code:</label>
                <asp:TextBox ID="txtShipPostalCode" CssClass="form-control  txt13"  runat="server"></asp:TextBox>
 <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtShipPostalCode" ID="RegularExpressionValidator5" 
               ValidationExpression = "^[\s\S]{2,10}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 10 characters allowed."></asp:RegularExpressionValidator>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtShipPostalCode" ErrorMessage="Enter ship postal code"></asp:RequiredFieldValidator>
</div>  
         <div class="form-group">
            <label class="control-label" >Ship Country:</label>
          
                <asp:TextBox ID="txtShipCountry" CssClass="form-control  txt14"  runat="server"></asp:TextBox>
 <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtShipCountry" ID="RegularExpressionValidator6" 
               ValidationExpression = "^[\s\S]{2,15}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 15 characters allowed."></asp:RegularExpressionValidator>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtShipCountry" ErrorMessage="Enter ship country"></asp:RequiredFieldValidator>

        </div style=" text-align:center;">    
        <div style=" text-align:center;">
        <asp:Button  CssClass="btnCus"  ID="btnUpdate" runat="server" Text="Save" 
            onclick="UpdateOrder_Click" />
        <asp:Button  CssClass="btnCus"  ID="btnDelete" runat="server" Text="Delete" 
            CausesValidation="False" onclick="DelteOrder_Click" />     
            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" 
                        TargetControlID="btnDelete"
                        ConfirmText="Are you sure you want Delete?" 
                        OnClientCancel="alert('don't DO THAT again!');" />
            </div>                        
    </div>
</asp:Content>

<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
    <div>
        <asp:Button CssClass="btnCus"  ID="btnLoad" runat="server" CausesValidation="False" 
                       Text="Load" />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </div>
</asp:Content>
<asp:Content id="Content2"  ContentPlaceHolderID="panelSearch" runat="server">
<asp:TextBox ID="txtSearch" CssClass="searchFunc"  runat="server"></asp:TextBox>
        <asp:DropDownList ID="ddlSearch" CssClass="searchFunc"  runat="server">
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
           CssClass="btnCus"   onclick="btnSearchOrder_Click" CausesValidation="False" />
 
</asp:Content>    

<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">

    <asp:GridView ID="gvOrder" CssClass="table"  runat="server"
     EditRowStyle-CssClass="editRow" OnRowDataBound="gvOrder_RowDataBound"  AlternatingRowStyle-CssClass="alterRow" EmptyDataRowStyle-CssClass="emptyRow" FooterStyle-CssClass="foot" HeaderStyle-CssClass="headTbl">
    </asp:GridView>    
</asp:Content>


<asp:Content ID="Content1" runat="server" contentplaceholderid="head">

    <link rel="stylesheet" href="css/style.css" type="text/css" />
    
</asp:Content>



