<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shipper.aspx.cs" Inherits="Shipper" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
    <div width="100%">
    
       <div class="form-group">
            <label class="control-label  " >Shipper ID:</label>
            <asp:TextBox ID="lblShipperID" CssClass="control-label txt1 " runat="server"></asp:TextBox>
       </div>
       
       <div class="form-group">
            <label class="control-label" >Company Name:</label>
            <asp:TextBox CssClass="form-control txt2" ID="txtCompanyName" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Enter Company Name" ControlToValidate="txtCompanyName"></asp:RequiredFieldValidator>
            
                 <asp:RegularExpressionValidator Display = "Dynamic" 
                 ControlToValidate = "txtCompanyName" ID="RegularExpressionValidator10" ValidationExpression = "^[\s\S]{3,40}$" 
                 runat="server" ErrorMessage="Minimum 3 characters ,Maximum 40 characters allowed.">
                 </asp:RegularExpressionValidator> 
       </div>
       
       <div class="form-group">
            <label class="control-label" >Phone:</label>
            <asp:TextBox CssClass="form-control txt3" ID="txtPhone" runat="server" Width="200px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Enter number (123) 456-7890" 
            ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$" 
            ControlToValidate="txtPhone"></asp:RegularExpressionValidator>
            
            
       </div>
       
       <div style=" text-align:center;">
            <asp:Button ID="btnUpdateShipper" runat="server" CssClass="btnCus"  Text="Save" 
            onclick="btnUpdateShipper_Click" />
            <asp:Button ID="btnDelteShipper" runat="server" Text="Delete" 
            onclick="btnDelteShipper_Click" CssClass="btnCus"  CausesValidation="False" />
             <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" 
                        TargetControlID="btnDelteShipper"
                        ConfirmText="Are you sure you want Delete?" 
                        OnClientCancel="cancel" />
       </div>
       
    </div>
</asp:Content>

<asp:Content id="Content1" ContentPlaceHolderID="panelSearch" runat="server">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:TextBox CssClass="searchFunc" ID="txtSearch" runat="server"></asp:TextBox>
                        <asp:DropDownList CssClass="searchFunc" ID="ddlSearch" runat="server">
                            <asp:ListItem>Company Name</asp:ListItem>
                            <asp:ListItem>Phone</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnSearch" CssClass="btnCus"  runat="server" CausesValidation="False" 
                           Text="Search" onclick="btnSearchShipper_Click" />
                    </asp:Panel>
                    </asp:Content>  
                    
<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
        <div>
            <asp:Button CssClass="btnCus"  ID="btnLoad" runat="server" CausesValidation="False" 
               Text="Load" onclick="btnLoad_Click" />        
        </div>
          <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
</asp:Content>

<%--<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
    <div>
            <asp:Button ID="btnAddShipper" runat="server" Text="Add" 
                onclick="btnAddShipper_Click" />
           
            <asp:Button ID="btnSearchShipper" runat="server" Text="Search" 
                CausesValidation="False" onclick="btnSearchShipper_Click" />
       
    </div>
</asp:Content>--%>



<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
    <asp:GridView CssClass="table" ID="gvShipper" runat="server"  
        OnRowDataBound="gvShipper_RowDataBound"
        EditRowStyle-CssClass="editRow" AlternatingRowStyle-CssClass="alterRow" EmptyDataRowStyle-CssClass="emptyRow" FooterStyle-CssClass="foot" HeaderStyle-CssClass="headTbl">
    </asp:GridView>
</asp:Content>
