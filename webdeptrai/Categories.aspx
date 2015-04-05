<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Categories" %>

<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
    <div width="100%">
        <div class="form-group">
            <label class="control-label  " >Category ID:</label>
            <asp:TextBox ID="lblCateID" CssClass="control-label txt1" Enabled="false" runat="server"></asp:TextBox>
       </div>
       <div class="form-group">
            <label class="control-label" >Category Name:</label>
                <asp:TextBox ID="txtCategoryName" CssClass="control-label txt2" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter Category Name" ControlToValidate="txtCategoryName"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label" >Description:</label>
                <asp:TextBox ID="txtDescription" CssClass="control-label txt3" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="equiredFieldValidator12" runat="server" 
                    ErrorMessage="Enter Category ID" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="btnUpdateCate" CssClass="btnCus" runat="server" Text="Save" 
            onclick="UpdateCate_Click" />
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
                        <asp:Button ID="btnSearchCate" runat="server" Text="Search" 
                        CausesValidation="False" onclick="btnSearchCate_Click" />
                    </asp:Panel>
                    </asp:Content>  

<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
    <div>
        <asp:Button  ID="btnNew"  OnClientClick="showModalCat();" CssClass="btnCus" runat="server" Text="New" Width="65px" 
                        />
        <asp:Button CssClass="btnCus" ID="btnDelteCate" runat="server" Text="Delete" 
            onclick="DelteCate_Click" CausesValidation="False" />
        <asp:Button CssClass="btnCus"  ID="btnLoad" runat="server" CausesValidation="False" 
            Text="Load" onclick="btnLoad_Click" />
    </div>
</asp:Content>


<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
    <asp:GridView CssClass="table" ID="gvCategories" runat="server" 
        EditRowStyle-CssClass="editRow" OnRowDataBound="gridEmp_RowDataBound"  AlternatingRowStyle-CssClass="alterRow" EmptyDataRowStyle-CssClass="emptyRow" FooterStyle-CssClass="foot" HeaderStyle-CssClass="headTbl">
    </asp:GridView>
</asp:Content>
