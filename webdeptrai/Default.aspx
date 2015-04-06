<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
      <table width="100%">
          
            
            
        </table>
        
</asp:Content>
                    
<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
<div>
<asp:Button ID="btnNew" runat="server" Text="New" Width="65px" 
                        />
                    <asp:Button ID="btnSave" runat="server" Text="Save" Width="63px" 
                      />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" Width="68px" 
                      CausesValidation="False" />
                    <asp:Button ID="btnLoad" runat="server" CausesValidation="False" 
                       Text="Load" />
                    
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="DDLSearch" runat="server">
                            <asp:ListItem>FullName</asp:ListItem>
                            <asp:ListItem>DateOfBirth</asp:ListItem>
                            <asp:ListItem>Gender</asp:ListItem>
                            <asp:ListItem>National</asp:ListItem>
                            <asp:ListItem>Phone</asp:ListItem>
                            <asp:ListItem>Address</asp:ListItem>
                            <asp:ListItem>Qualification</asp:ListItem>
                            <asp:ListItem>Salary</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnSearch" runat="server" CausesValidation="False" 
                           Text="Search" />
                    </asp:Panel>
                    
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:DropDownList ID="DDLSort" runat="server">
                            <asp:ListItem>FullName</asp:ListItem>
                            <asp:ListItem>DateOfBirth</asp:ListItem>
                            <asp:ListItem>Gender</asp:ListItem>
                            <asp:ListItem>National</asp:ListItem>
                            <asp:ListItem>Phone</asp:ListItem>
                            <asp:ListItem>Address</asp:ListItem>
                            <asp:ListItem>Qualification</asp:ListItem>
                            <asp:ListItem>Salary</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnSort" runat="server" CausesValidation="False" 
                          Text="Sort" />
                    </asp:Panel>
        </div>
</asp:Content>

<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
<div style="margin-top:50px; text-align:center;">
    <asp:Image ID="Image1" runat="server" ImageUrl="css/group.jpg" CssClass="pulse pulse2"  />
    </div>
</asp:Content>
