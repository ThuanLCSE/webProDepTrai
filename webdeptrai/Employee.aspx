<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="Employee.aspx.cs" Inherits="_Default" %>

<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
      <div width="100%">
            <div class="form-group">
                <label class="control-label col-md-offset-2" >ID:</label>
                
                    <asp:Label ID="lblID" CssClass="control-label col-md-offset-2" runat="server"></asp:Label>
                
           </div>
           <div class="form-group">
                <label class="control-label col-md-offset-2" >Full name:</label>
                
                
                    <asp:TextBox CssClass="form-control" placeholder="Full name" ID="txtFullname" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullname"
                        ErrorMessage="required field." SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtFullname" ErrorMessage="Please enter Full name"></asp:RequiredFieldValidator>
               
            </div>
             <div class="form-group">
                <label class="control-label col-md-offset-2" >Date of Birth:</label>
                
                
                    <asp:TextBox  CssClass="form-control" ID="txtDateOfBirth" runat="server"></asp:TextBox>
                   <%-- <a href="#" onclick="cal.select(document.forms['form1'].txtDateOfBirth,'anchor1','dd/MM/yyyy'); return false;"
                        name="anchor1" id="anchor1">select</a>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtDateOfBirth" Display="Dynamic" 
                        ErrorMessage="Please enter DOB"></asp:RequiredFieldValidator>
                   
               </div>
              <div class="form-group">
                <label class="control-label col-md-offset-2" >Gender:</label>
                
                <td>
                    <asp:RadioButtonList  ID="RBLGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem   Text="Male" Value="M" />
                        <asp:ListItem  Text="Female" Value="F" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="RBLGender" Display="Dynamic" 
                        ErrorMessage="Please check gender"></asp:RequiredFieldValidator>
                </td>
            </div>
            <div class="form-group">
                <label class="control-label col-md-offset-2" >National:</label>
               
                
                    <asp:DropDownList ID="DDLNational" runat="server">
                        <asp:ListItem Text="Select a nation" Value="-1" Selected="True" />
                        <asp:ListItem Text="Vietnam" Value="Vietnam" />
                        <asp:ListItem Text="Japan" Value="Japan" />
                        <asp:ListItem Text="Singapore" Value="Singapore" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DDLNational" Display="Dynamic" 
                        ErrorMessage="Please choose national" InitialValue="-1"></asp:RequiredFieldValidator>
                </div>
                            <div class="form-group">
                <label class="control-label col-md-offset-2" >Gender:</label>
               
               
                    <asp:TextBox CssClass="form-control" placeholder="01224402799" ID="txtPhone" runat="server"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtPhone" Display="Dynamic" 
                        ErrorMessage="Please enter phone number"></asp:RequiredFieldValidator>
                   
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtPhone" ErrorMessage="Format phone is xxxx-xxxx-xxxx" 
                        ValidationExpression="\d{4}-\d{4}-\d{4}" Display="Dynamic"></asp:RegularExpressionValidator>
                 </div>
            <div class="form-group">
                <label class="control-label col-md-offset-2" >Qualification:</label>
                
               
                    <asp:DropDownList ID="ddlQualification" runat="server">
                        <asp:ListItem Value="-1">Select qualification</asp:ListItem>
                        <asp:ListItem>Software Engineer</asp:ListItem>
                        <asp:ListItem>Doctor</asp:ListItem>
                        <asp:ListItem>IT Bachelor</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="ddlQualification" Display="Dynamic" 
                        ErrorMessage="Please choose qualification" InitialValue="-1"></asp:RequiredFieldValidator>
               
            </div>
             <div class="form-group">
                <label class="control-label col-md-offset-2" >Address:</label>
                
                    <asp:TextBox ID="txtAddress" runat="server" Height="93px" 
                        TextMode="MultiLine" Width="241px"></asp:TextBox>
             </div>
            <div class="form-group">
                <label class="control-label col-md-offset-2" >Salary:</label>
                
               
                    <asp:TextBox CssClass="form-control" placeholder="Only Cash" ID="txtSalary" runat="server"></asp:TextBox>
                   <%-- <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSalary"
                        ErrorMessage="Value must be integer" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtSalary" Display="Dynamic" 
                        ErrorMessage="Please enter salary"></asp:RequiredFieldValidator>
             </div>
            
            
        </div>
        <div style=" text-align:center;">

         <asp:Button ID="btnSave" CssClass="btnCus" runat="server" Text="Save" Width="63px" 
                      />
                      </div>
</asp:Content>
           
                     <asp:Content id="Content1" ContentPlaceHolderID="panelSearch" runat="server">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:TextBox ID="txtSearch" CssClass="searchFunc" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="DDLSearch" CssClass="searchFunc" runat="server">
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
                    </asp:Content>         
<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
<div>
<asp:Button ID="btnNew" CssClass="btnCus" runat="server" Text="New" Width="65px" 
                        />
                   
                    <asp:Button CssClass="btnCus"  ID="btnReset" runat="server" Text="Reset" Width="68px" 
                      CausesValidation="False" />
                    <asp:Button CssClass="btnCus"  ID="btnLoad" runat="server" CausesValidation="False" 
                       Text="Load" />
                    
                   
                    
                    
        </div>
</asp:Content>

<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
    <asp:GridView ID="gridEmp" OnRowDataBound="gridEmp_RowDataBound" CssClass="table" runat="server" RowStyle-CssClass="row" EditRowStyle-CssClass="editRow" AlternatingRowStyle-CssClass="alterRow" EmptyDataRowStyle-CssClass="emptyRow" FooterStyle-CssClass="foot" HeaderStyle-CssClass="headTbl" SelectedRowStyle-CssClass="selectRow">
    </asp:GridView>
</asp:Content>