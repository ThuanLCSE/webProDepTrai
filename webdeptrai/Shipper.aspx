<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shipper.aspx.cs" Inherits="Shipper" %>


<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
    <div width="100%">
       <div class="form-group">
            <label class="control-label  " >Shipper ID:</label>
            <asp:Label ID="lblShipperID" CssClass="control-label  " runat="server"></asp:Label>
       </div>
       <div class="form-group">
            <label class="control-label" >Company Name:</label>
            <asp:TextBox CssClass="form-control" ID="txtCompanyName" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Enter Company Name" ControlToValidate="txtCompanyName"></asp:RequiredFieldValidator>
       </div>
       <div class="form-group">
            <label class="control-label" >Phone:</label>
            <asp:TextBox CssClass="form-control" ID="txtPhone" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Enter number XXXX-XXX-XXX" 
                    ValidationExpression="\d{4}-\d{3}-\d{3}" ControlToValidate="txtPhone"></asp:RegularExpressionValidator>
       </div>
       <div>
            <asp:Button ID="btnUpdateShipper" runat="server" Text="Update" 
                    onclick="btnUpdateShipper_Click" />
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
                        <asp:Button ID="btnSearch" runat="server" CausesValidation="False" 
                           Text="Search" />
                    </asp:Panel>
                    </asp:Content>  
                    
<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
        <div>
            <asp:Button ID="btnNew" OnClick="btnNew_Click" OnClientClick="showModal();" CssClass="btnCus" runat="server" Text="New" Width="65px" 
                        />
            <asp:Button CssClass="btnCus" ID="btnClearShipper" runat="server" Text="Clear" 
                onclick="btnClearShipper_Click" CausesValidation="False" />
            <asp:Button CssClass="btnCus"  ID="btnLoad" runat="server" CausesValidation="False" 
               Text="Load" onclick="btnLoad_Click" />        
        </div>
</asp:Content>

<%--<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
    <div>
        <td colspan="2">
            <asp:Button ID="btnAddShipper" runat="server" Text="Add" 
                onclick="btnAddShipper_Click" />
            <asp:Button ID="btnDelteShipper" runat="server" Text="Delete" 
                onclick="btnDelteShipper_Click" CausesValidation="False" />
            <br />
            <asp:Button ID="btnSearchShipper" runat="server" Text="Search" 
                CausesValidation="False" onclick="btnSearchShipper_Click" />
        </td>
    </div>
</asp:Content>--%>



<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
    <asp:GridView CssClass="table" ID="gvShipper" runat="server"  
        onselectedindexchanged="gvShipper_SelectedIndexChanged" 
        AutoGenerateSelectButton="True" EditRowStyle-CssClass="editRow" AlternatingRowStyle-CssClass="alterRow" EmptyDataRowStyle-CssClass="emptyRow" FooterStyle-CssClass="foot" HeaderStyle-CssClass="headTbl">
    </asp:GridView>
</asp:Content>
