<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="Supplier1.aspx.cs" Inherits="Supplier1" %>

<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server"> 
     <table width="100%">
      <tr >
                <td width="10%">
                    Supplier ID :
                </td>
                <td>
                    <asp:Label ID="lblSupID" runat="server"></asp:Label>
                </td>
            </tr>
     <tr>
                <td>
                   Company Name :
                </td>
                <td>
                    <asp:TextBox ID="txtSupplierName" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter Supplier Name" ControlToValidate="txtSupplierName"></asp:RequiredFieldValidator>
                    
                </td>
      </tr>
      <tr>
                <td>
                    Contact Name :
                </td>
                <td>
                    <asp:TextBox ID="txtContactName" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter Contact Name" ControlToValidate="txtContactName"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Contact tilte  :
                </td>
                <td>
                    <asp:TextBox ID="txtContactTilte" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Enter Contact Tilte" ControlToValidate="txtContactTilte"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Address:
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Enter Address" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    City :
                </td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Enter City Name" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Region :
                </td>
                <td>
                    <asp:TextBox ID="txtRegion" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Enter Region" ControlToValidate="txtRegion"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Postal Code :
                </td>
                <td>
                    <asp:TextBox ID="txtPostal" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="Enter Postal Code" ControlToValidate="txtPostal"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Country :
                </td>
                <td>
                    <asp:TextBox ID="txtCountry" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="Enter Country Name" ControlToValidate="txtCountry"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Phone:
                </td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Enter Phone number" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtPhone" ErrorMessage="RegularExpressionValidator" 
                        ValidationExpression="(\d){10}"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Fax :
                </td>
                <td>
                    <asp:TextBox ID="txtFax" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="Enter Fax" ControlToValidate="txtFax"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
     </table>
     </asp:Content>
<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
<div>
        <asp:Button ID="btnAddCate" runat="server" Text="Add" onclick="AddCate_Click" />
        <asp:Button ID="btnUpdateCate" runat="server" Text="Update" 
            onclick="UpdateCate_Click" />
        <asp:Button ID="btnDelteCate" runat="server" Text="Delete" 
            onclick="DelteCate_Click" />
        <asp:Button ID="btnClearCate" runat="server" Text="Clear" onclick="Clear_Click" />
        <br />
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:DropDownList ID="ddlSearch" runat="server" 
            >     
        <asp:ListItem>Company name</asp:ListItem>
         <asp:ListItem>Contact name</asp:ListItem>
          <asp:ListItem>Contact Tilte</asp:ListItem>
           <asp:ListItem>Address</asp:ListItem>
            <asp:ListItem>City</asp:ListItem>
             <asp:ListItem>Region</asp:ListItem>
              <asp:ListItem>postal code</asp:ListItem>
               <asp:ListItem>Country</asp:ListItem>
                <asp:ListItem>Phone</asp:ListItem>
                 <asp:ListItem>Fax</asp:ListItem>
          
        </asp:DropDownList>
        <asp:Button ID="btnSearchCate" runat="server" Text="Search" 
            CausesValidation="False" onclick="btnSearchCate_Click" />
    </div>
    </asp:Content>
<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
   
    <asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
   
</asp:Content>