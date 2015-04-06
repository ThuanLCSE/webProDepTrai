<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Categories" %>

<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
    <div width="100%">
        <div class="form-group">
            <label class="control-label  " >Category ID:</label>
            <asp:TextBox ID="lblCateID" CssClass="control-label  txt1"  runat="server"></asp:TextBox>
       </div>
       
       <div class="form-group">
            <label class="control-label" >Category Name:</label>
            <asp:TextBox ID="txtCategoryName" CssClass="control-label txt2" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Enter Category Name" ControlToValidate="txtCategoryName"></asp:RequiredFieldValidator>
            
                       <asp:RegularExpressionValidator Display = "Dynamic" 
                       ControlToValidate = "txtCategoryName" ID="RegularExpressionValidator7" 
                       ValidationExpression = "^[\s\S]{3,15}$" 
                       runat="server" ErrorMessage="Minimum 3 characters ,Maximum 15 characters allowed.">
                       </asp:RegularExpressionValidator>
            
       </div>
       
        <div class="form-group">
            <label class="control-label" >Description:</label>
            <asp:TextBox ID="txtDescription" CssClass="control-label txt3" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="equiredFieldValidator12" runat="server" 
            ErrorMessage="Enter Category ID" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
            
                       <asp:RegularExpressionValidator Display = "Dynamic" 
                       ControlToValidate = "txtDescription" ID="RegularExpressionValidator1" 
                       ValidationExpression = "^[\s\S]{3,200}$" 
                       runat="server" ErrorMessage="Minimum 3 characters ,Maximum 200 characters allowed.">
                       </asp:RegularExpressionValidator>   
            
            
        </div>
        
        <div style=" text-align:center;">
            <asp:Button ID="btnUpdateCate" CssClass="btnCus" runat="server" Text="Save" 
            onclick="UpdateCate_Click" />
            <asp:Button CssClass="btnCus" ID="btnDelteCate" runat="server" Text="Delete" 
            onclick="DelteCate_Click" CausesValidation="False" />
        </div>
        
     </div>   
</asp:Content>

<asp:Content id="Content1" ContentPlaceHolderID="panelSearch" runat="server">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:TextBox CssClass="searchFunc" ID="txtSearch" runat="server"></asp:TextBox>
                        <asp:DropDownList CssClass="searchFunc" ID="ddlSearch" runat="server">
                            <asp:ListItem>Category Name</asp:ListItem>
                            <asp:ListItem>Description</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnSearchCate" CssClass="btnCus"  runat="server" Text="Search" 
                        CausesValidation="False" onclick="btnSearchCate_Click" />
                    </asp:Panel>
                    </asp:Content>  

<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
    <div>
        <asp:Button CssClass="btnCus"  ID="btnLoad" runat="server" CausesValidation="False" 
            Text="Load" onclick="btnLoad_Click" />
    </div>
</asp:Content>


<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
    <asp:GridView CssClass="table" ID="gvCategories" runat="server" 
        EditRowStyle-CssClass="editRow" OnRowDataBound="gridEmp_RowDataBound"  AlternatingRowStyle-CssClass="alterRow" EmptyDataRowStyle-CssClass="emptyRow" FooterStyle-CssClass="foot" HeaderStyle-CssClass="headTbl">
    </asp:GridView>
</asp:Content>
