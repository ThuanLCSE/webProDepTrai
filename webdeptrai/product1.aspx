<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product1.aspx.cs" Inherits="product1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
        <div width="100%">
        
             <div class="form-group">
                     <label class="control-label  " > Product ID :</label>
                     <asp:TextBox ID="lblProID"  CssClass="control-label txt1" runat="server"></asp:TextBox>
             </div>
             
             <div class="form-group">
                    <label class="control-label  " >ProDuct Name :</label>
                    <asp:TextBox ID="txtProductName"  CssClass="form-control txt2" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter Category Name" ControlToValidate="txtProductName"></asp:RequiredFieldValidator>
                    
                       <asp:RegularExpressionValidator Display = "Dynamic" 
                       ControlToValidate = "txtProductName" ID="RegularExpressionValidator7" 
                       ValidationExpression = "^[\s\S]{3,40}$" 
                       runat="server" ErrorMessage="Minimum 3 characters ,Maximum 40 characters allowed.">
                       </asp:RegularExpressionValidator>
                    
             </div>
             
            <div class="form-group">
                    <label class="control-label  " >Supplier Name :</label>
                    
                    <asp:DropDownList ID="DropDownList3"  CssClass="form-control txt3"  runat="server" 
                        DataSourceID="suppliername" DataTextField="companyname" 
                        DataValueField="supplierid" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                    </asp:DropDownList>
                    
                    <asp:SqlDataSource ID="suppliername" runat="server" 
                        ConnectionString="server=localhost;database=TSQLFundamentals2008;uid=sa;pwd=123456" 
                        SelectCommand="SELECT companyname,supplierid FROM Production.Suppliers">
                    </asp:SqlDataSource> 
            </div>
            
            
            <div class="form-group">
                <label class="control-label  " >  Category Name :</label>
                
                    <asp:DropDownList ID="DropDownList2"  CssClass="form-control txt4"  runat="server" 
                        DataSourceID="categorydataa"  DataTextField="categoryname" 
                        DataValueField="categoryid" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" >
                        <asp:ListItem Enabled="False">Choose category</asp:ListItem>
                    </asp:DropDownList>
                    
                    <asp:SqlDataSource ID="categorydataa" runat="server" 
                        ConnectionString="server=localhost;database=TSQLFundamentals2008;uid=sa;pwd=123456" 
                        SelectCommand="SELECT categoryname, categoryid FROM Production.Categories">
                    </asp:SqlDataSource>
                    
                    <asp:DropDownList ID="DropDownList6" runat="server" 
                        DataSourceID="categoryid" DataTextField="categoryid" 
                        DataValueField="categoryid" BackColor="White" ForeColor="White" 
                        Height="0px" Visible="False">
                    </asp:DropDownList>
                    
                    <asp:SqlDataSource ID="categoryid" runat="server" 
                        ConnectionString="server=localhost;database=TSQLFundamentals2008;uid=sa;pwd=123456" 
                        SelectCommand="Select categoryid FROm Production.Categories">
                    </asp:SqlDataSource>
                    
            </div>
            
             <div class="form-group">
                    <label class="control-label  " > Price :</label>
                    
                    <asp:TextBox ID="txtUnitPrice" CssClass="form-control txt5" runat="server"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter unit Price" ControlToValidate="txtUnitPrice">
                    </asp:RequiredFieldValidator>
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtUnitPrice" ErrorMessage="RegularExpressionValidator" 
                        ValidationExpression="\d*\.\d*">
                    </asp:RegularExpressionValidator>
             </div>
             
              <div class="form-group">
                <label class="control-label  " > Discontinued</label>
                
                <td>
                      <asp:RadioButtonList  CssClass=" txt6"  ID="RadioButtonList1" runat="server">
                      <asp:ListItem Selected="True">True</asp:ListItem>
                      <asp:ListItem>False</asp:ListItem>
                      </asp:RadioButtonList>
                
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                         ControlToValidate="RadioButtonList1" ErrorMessage="RequiredFieldValidator" 
                         Enabled="False">
                      </asp:RequiredFieldValidator>
               </td>
               </div>
               
          <div style=" text-align:center;">
                 <asp:Button   CssClass="btnCus"   ID="btnUpdateCate"  runat="server" Text="Save" 
                 onclick="UpdateCate_Click" />
                 <asp:Button  CssClass="btnCus" ID="btnDelteCate" runat="server" Text="Delete" 
                 onclick="DelteCate_Click" />
                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" 
                        TargetControlID="btnDelteCate"
                        ConfirmText="Are you sure you want Delete?" 
                        OnClientCancel="cancel" />
          </div>
          </div>
        
</asp:Content>

<asp:Content id="Content1" ContentPlaceHolderID="panelSearch" runat="server">
                  <asp:TextBox ID="txtSearch" CssClass="searchFunc"  runat="server"></asp:TextBox>
        <asp:DropDownList ID="ddlSearch" CssClass="searchFunc"  runat="server" 
            >
            <asp:ListItem>Product Name</asp:ListItem>
            <asp:ListItem>Category name</asp:ListItem>
            <asp:ListItem>Supplier name</asp:ListItem>
            <asp:ListItem>Unit Price</asp:ListItem>
            <asp:ListItem>Discontinued</asp:ListItem>
        </asp:DropDownList>
        <asp:Button CssClass="btnCus"  ID="btnSearchCate" runat="server" Text="Search" 
            CausesValidation="False" onclick="btnSearchCate_Click" />
  </asp:Content>      
<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
    <div>
  
        <asp:Button CssClass="btnCus"  ID="btnClearCate" runat="server" Text="Load" onclick="Clear_Click" />
         <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </div>
</asp:Content>


<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
   
    <asp:GridView ID="GridView1" runat="server" 
        CssClass="table" runat="server" OnRowDataBound="GridView1_RowDataBound" EditRowStyle-CssClass="editRow" AlternatingRowStyle-CssClass="alterRow" EmptyDataRowStyle-CssClass="emptyRow" FooterStyle-CssClass="foot" HeaderStyle-CssClass="headTbl" onselectedindexchanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
   
</asp:Content>


