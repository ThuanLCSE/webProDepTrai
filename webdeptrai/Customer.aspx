﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server"> 
      <div width="100%">
         <div> 
             <label class="control-label  " >Customer ID :</label>
             <asp:TextBox ID="lblCusID"  CssClass="control-label txt1" runat="server"></asp:TextBox>
             
        </div>
        <div>
            
                    <label class="control-label  " >  Companyname:</label>
                    <asp:TextBox CssClass="form-control txt2" ID="txtSupplierName" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter Customer Name" ControlToValidate="txtSupplierName"></asp:RequiredFieldValidator>
      
        </div>   
        <div>
                    
                     <label class="control-label  " >  Contact Name :</label>
                    <asp:TextBox ID="txtContactName" CssClass="form-control txt3" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter Contact Name" ControlToValidate="txtContactName"></asp:RequiredFieldValidator>
         </div>   
        <div>   
                    
                 <label class="control-label  " >  Contact tilte  :</label>
                    <asp:TextBox ID="txtContactTilte" CssClass="form-control txt4" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Enter Contact Tilte" ControlToValidate="txtContactTilte"></asp:RequiredFieldValidator>
                    
        </div>   
        <div>       
                    
                <label class="control-label  " >  Address:</label>
                    <asp:TextBox ID="txtAddress" CssClass="form-control txt5" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Enter Address" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
         </div>   
        <div>    
                      <label class="control-label  " >  City :</label>
             
                    <asp:TextBox CssClass="form-control txt6" ID="txtCity" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Enter City Name" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
        </div>   
        <div> 
                    
                    <label class="control-label  " > Region :</label>
                    <asp:TextBox ID="txtRegion" CssClass="form-control txt7" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Enter Region" ControlToValidate="txtRegion"></asp:RequiredFieldValidator>
       </div>   
        <div>    
                    
                    <label class="control-label  " > Postal Code :</label>
                    <asp:TextBox CssClass="form-control txt8" ID="txtPostal" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="Enter Postal Code" ControlToValidate="txtPostal"></asp:RequiredFieldValidator>
         </div>   
        <div>  
                   
                    <label class="control-label  " >  Country :</label>
                    <asp:TextBox ID="txtCountry" CssClass="form-control txt9" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="Enter Country Name" ControlToValidate="txtCountry"></asp:RequiredFieldValidator>
        </div>   
        <div>   
                     <label class="control-label  " >  Phone :</label>

                    <asp:TextBox ID="txtPhone" CssClass="form-control txt10" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Enter Phone number" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtPhone" ErrorMessage="RegularExpressionValidator" 
                        ValidationExpression="(\d){11}"></asp:RegularExpressionValidator>
           </div>   
        <div>  
                    <label class="control-label  " >  Fax</label>

               
                    <asp:TextBox ID="txtFax" CssClass="form-control txt11" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator  ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="Enter Fax" ControlToValidate="txtFax"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                          <asp:Button CssClass="btnCus" ID="btnUpdateCate" runat="server" Text="Save" 
            onclick="UpdateCate_Click" />
        <asp:Button CssClass="btnCus" ID="btnDelteCate" runat="server" Text="Delete" 
            onclick="DelteCate_Click" />
                        </div>
             </div>
     </asp:Content>
     <asp:Content id="Content1" ContentPlaceHolderID="panelSearch" runat="server">
           
        <asp:TextBox ID="txtSearch" CssClass="searchFunc" runat="server"></asp:TextBox>
        <asp:DropDownList ID="ddlSearch" CssClass="searchFunc" runat="server" >
               
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
        <asp:Button CssClass="btnCus" ID="Button1" runat="server" Text="Search" 
            CausesValidation="False" onclick="btnSearchCate_Click" />
</asp:Content>  
<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
  <asp:Button CssClass="btnCus"  ID="btnLoad" runat="server" CausesValidation="False" 
                       Text="Load" />
    </asp:Content>
<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
   
    <asp:GridView ID="GridView1" runat="server" 
          CssClass="table" runat="server" OnRowDataBound="GridView1_RowDataBound" EditRowStyle-CssClass="editRow" AlternatingRowStyle-CssClass="alterRow" EmptyDataRowStyle-CssClass="emptyRow" FooterStyle-CssClass="foot" HeaderStyle-CssClass="headTbl" >
   
    </asp:GridView>
    
    
</asp:Content>
