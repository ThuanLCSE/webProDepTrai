<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="Employee.aspx.cs" Inherits="Employee" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
      <div width="100%">
            <div class="form-group">
                <label class="control-label  " >ID:</label>
                
                    <asp:TextBox ID="lblID"  CssClass="control-label txt1" runat="server"></asp:TextBox>
           </div>
           <div class="form-group">
                <label class="control-label" >Last name:</label>
                
                
                    <asp:TextBox CssClass="form-control txt2" placeholder="Last name"  ID="txtFirstname" runat="server"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtFirstname" ErrorMessage="Please enter Full name"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtFirstname" ID="RegularExpressionValidator2" 
               ValidationExpression = "^[\s\S]{2,20}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 20 characters allowed."></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label class="control-label" >First name:</label>
                
                
                    <asp:TextBox CssClass="form-control txt3" placeholder="name" ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtLastName" ID="RegularExpressionValidator3" 
               ValidationExpression = "^[\s\S]{2,10}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 10 characters allowed."></asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtLastName" ErrorMessage="Please enter Full name"></asp:RequiredFieldValidator>
               
            </div>
            <div class="form-group">
                <label class="control-label  " >Title:</label>
                
                
                    <asp:TextBox CssClass="form-control txt4" placeholder="Title" ID="txtTitle" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtTitle" ID="RegularExpressionValidator4" 
               ValidationExpression = "^[\s\S]{2,30}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 30 characters allowed."></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtTitle" ErrorMessage="Please enter Full name"></asp:RequiredFieldValidator>
               
            </div>
            <div class="form-group">
                <label class="control-label  " >Course:</label>
                
                
                    <asp:TextBox CssClass="form-control txt5" ID="txtCourse" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtCourse" ID="RegularExpressionValidator5" 
               ValidationExpression = "^[\s\S]{2,25}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 25 characters allowed."></asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="txtCourse" ErrorMessage="Please enter Full name"></asp:RequiredFieldValidator>
               
            </div>
             <div class="form-group">
                <label class="control-label  " >Date of Birth:</label>
                
                
                    <asp:TextBox  CssClass="form-control txt6" ID="txtDateOfBirth" runat="server"></asp:TextBox>
                   
                    <ajaxToolkit:CalendarExtender ID="txtShippedDate_CalendarExtender" 
                    runat="server" Enabled="True" TargetControlID="txtDateOfBirth">
                </ajaxToolkit:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtDateOfBirth" Display="Dynamic" 
                        ErrorMessage="Please enter Date of Birth"></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" runat="server"
                  ErrorMessage="much less than TODAY" ControlToValidate="txtDateOfBirth" Type="Date" Enabled="True" Operator="LessThan"></asp:CompareValidator>
                   
               </div>
                <div class="form-group">
                <label class="control-label  " >Hire Date:</label>
                
                
                    <asp:TextBox  CssClass="form-control txt7" ID="txtHireDate" runat="server"></asp:TextBox>
                  <ajaxToolkit:CalendarExtender ID="CalendarExtender1" 
                    runat="server" Enabled="True" TargetControlID="txtHireDate">
                </ajaxToolkit:CalendarExtender>
                    <asp:CustomValidator  OnServerValidate="ValidateDuration" ID="CustomValidator1" runat="server" 
                    ErrorMessage="much be more than 15 years" Display="Dynamic"  ControlToValidate="txtHireDate"></asp:CustomValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtHireDate" Display="Dynamic" 
                        ErrorMessage="Please enter DOB"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ErrorMessage="much more than birthday" ControlToValidate="txtHireDate" ControlToCompare="txtDateOfBirth" Type="Date" Operator="GreaterThan"></asp:CompareValidator>
               </div>
             
           <div class="form-group">
                <label class="control-label  " >Address:</label>
                <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtAddress" ID="RegularExpressionValidator6" 
               ValidationExpression = "^[\s\S]{2,60}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 60 characters allowed."></asp:RegularExpressionValidator>
             
                    <asp:TextBox ID="txtAddress" CssClass=" form-control txt8" runat="server" Height="93px" 
                        TextMode="MultiLine" Width="141px"></asp:TextBox>
             </div>
                            
                  <div class="form-group">
                <label class="control-label  " >City:</label>
               
                
                   <asp:TextBox CssClass="form-control txt9" ID="txtCity" runat="server"></asp:TextBox>
                   <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtCity" ID="RegularExpressionValidator7" 
               ValidationExpression = "^[\s\S]{2,15}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 15 characters allowed."></asp:RegularExpressionValidator>
             
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtCity" ErrorMessage="Please enter Full name"></asp:RequiredFieldValidator>
                </div>
            
             
            <div class="form-group">
                <label class="control-label  " >Region:</label>
                
               
                    <asp:TextBox CssClass="form-control txt10"  ID="txtRegion" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtRegion" ID="RegularExpressionValidator8" 
               ValidationExpression = "^[\s\S]{2,15}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 15 characters allowed."></asp:RegularExpressionValidator>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtRegion" Display="Dynamic" 
                        ErrorMessage="Please enter salary"></asp:RequiredFieldValidator>
             </div>
             <div class="form-group">
                <label class="control-label " >Postal Code:</label>
                
               
                    <asp:TextBox CssClass="form-control txt11"  ID="TxtPost" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "TxtPost" ID="RegularExpressionValidator9" 
               ValidationExpression = "^[\s\S]{2,10}$" runat="server" ErrorMessage="Minimum 2 characters! Maximum 10 characters allowed."></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtPost" Display="Dynamic" 
                        ErrorMessage="Please enter postal code"></asp:RequiredFieldValidator>
                 <asp:CompareValidator Display="Dynamic"  ID="CompareValidator3" runat="server" ErrorMessage="Number only" Type="Integer" Operator="DataTypeCheck" ControlToValidate="TxtPost"></asp:CompareValidator>
             </div>
             <div class="form-group">
                <label class="control-label " >Country:</label>
                 <asp:DropDownList CssClass="form-control  txt12" ID="txtCoun"  runat="server" >
                    <asp:ListItem >Viet Nam</asp:ListItem>
                    <asp:ListItem>Lao</asp:ListItem>
                    <asp:ListItem>Indonesia</asp:ListItem>
                    <asp:ListItem>Thai Lan</asp:ListItem>
                    <asp:ListItem>Malaysia</asp:ListItem>
                    <asp:ListItem>Singapore</asp:ListItem>
                    <asp:ListItem>Japan</asp:ListItem>
                    <asp:ListItem>Korea</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                </asp:DropDownList>
             </div>
             <div class="form-group">
                <label class="control-label  " >Phone Number:</label>
               
               
                    <asp:TextBox CssClass="form-control txt13 " placeholder="01224402799" ID="txtPhone" runat="server"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtPhone" Display="Dynamic" 
                        ErrorMessage="Please enter phone number"></asp:RequiredFieldValidator>
                   
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtPhone" ErrorMessage="Format phone is (123) 456-7890" 
                        ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$" Display="Dynamic"></asp:RegularExpressionValidator>
                 </div>
            <div class="form-group">
                <label class="control-label " >Manager ID:</label>
                    <asp:DropDownList ID="txtMrgid" CssClass="form-control  txt14" runat="server" 
                    DataSourceID="EmpnameOfOrder" DataTextField="fullname" 
                    DataValueField="empid">
                    <asp:ListItem>Choose name</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="EmpnameOfOrder" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TSQLFundamentals2008ConnectionString %>" 
                    SelectCommand="SELECT empid, lastname +' '+ firstname as fullname FROM HR.Employees">
                </asp:SqlDataSource>
             </div>
            
        </div>
        <div style=" text-align:center;">
<asp:Button CssClass="btnCus"  ID="btnDel" runat="server" UseSubmitBehavior="false" OnClick="btnDel_Click" Text="Delete" Width="68px" 
                       />
                     
                    <ajaxToolkit:ConfirmButtonExtender  ID="ConfirmButtonExtender1" runat="server" 
                        TargetControlID="btnDel"
                        ConfirmText="Are you sure you want Delete?" 
                        OnClientCancel="cancel" />
         <asp:Button ID="btnSave" CausesValidation="true" UseSubmitBehavior="false" CssClass="btnCus" runat="server" Text="Save" Width="63px" 
                      />
                      </div>
</asp:Content>
           
    <asp:Content id="Content1" ContentPlaceHolderID="panelSearch" runat="server">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:TextBox ID="txtSearch" CssClass="searchFunc" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="DDLSearch" CssClass="searchFunc" runat="server">
                            <asp:ListItem>Last Name</asp:ListItem>
                            <asp:ListItem>First Name</asp:ListItem>
                            <asp:ListItem>Until Hiredate</asp:ListItem>
                            <asp:ListItem>Manage ID</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnSearch" CssClass="btnCus" runat="server" CausesValidation="False" 
                           Text="Search" />
                    </asp:Panel>
    </asp:Content>         
<asp:Content id="functionContent" ContentPlaceHolderID="panelFunction" runat="server">
<div>
                    <asp:Button CssClass="btnCus"  ID="btnLoad" runat="server" CausesValidation="False" 
                       Text="Load" />
                       <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        </div>
</asp:Content>

<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
    <asp:GridView ID="gridEmp"   OnSelectedIndexChanged="gridEmp_SelectedIndexChanged" OnRowDataBound="gridEmp_RowDataBound" CssClass="table" runat="server"  EditRowStyle-CssClass="editRow" AlternatingRowStyle-CssClass="alterRow" EmptyDataRowStyle-CssClass="emptyRow" FooterStyle-CssClass="foot" HeaderStyle-CssClass="headTbl" >
    </asp:GridView>
</asp:Content>