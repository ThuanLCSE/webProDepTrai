<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="ProjectWeb.Categories" %>

<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
        <table width="100%">
            <tr >
                <td width="10%">
                    Category ID :
                </td>
                <td>
                    <asp:Label ID="lblCateID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Category Name :
                </td>
                <td>
                    <asp:TextBox ID="txtCategoryName" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter Category Name" ControlToValidate="txtCategoryName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Description :
                </td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter Category ID" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
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
        <asp:DropDownList ID="ddlSearch" runat="server">
            <asp:ListItem>Category Name</asp:ListItem>
            <asp:ListItem>Description</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnSearchCate" runat="server" Text="Search" 
            CausesValidation="False" onclick="btnSearchCate_Click" />
    </div>
</asp:Content>


<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
    <asp:GridView ID="gvCategories" runat="server" 
        onselectedindexchanged="gvCategories_SelectedIndexChanged">
    </asp:GridView>
</asp:Content>

