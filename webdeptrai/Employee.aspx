<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="Employee.aspx.cs" Inherits="_Default" %>

<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
      <div width="100%">
            <div class="form-group">
                <label class="control-label  " >ID:</label>
                
                    <asp:TextBox ID="lblID"  CssClass="control-label txt1" runat="server"></asp:TextBox>
           </div>
           <div class="form-group">
                <label class="control-label  " >First name:</label>
                
                
                    <asp:TextBox CssClass="form-control txt2" placeholder="First name"  ID="txtFirstname" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullname"
                        ErrorMessage="required field." SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtFirstname" ErrorMessage="Please enter Full name"></asp:RequiredFieldValidator>
               
            </div>
            <div class="form-group">
                <label class="control-label  " >Last name:</label>
                
                
                    <asp:TextBox CssClass="form-control txt3" placeholder="name" ID="txtLastName" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullname"
                        ErrorMessage="required field." SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtLastName" ErrorMessage="Please enter Full name"></asp:RequiredFieldValidator>
               
            </div>
            <div class="form-group">
                <label class="control-label  " >Title:</label>
                
                
                    <asp:TextBox CssClass="form-control txt4" placeholder="Title" ID="txtTitle" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullname"
                        ErrorMessage="required field." SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtTitle" ErrorMessage="Please enter Full name"></asp:RequiredFieldValidator>
               
            </div>
            <div class="form-group">
                <label class="control-label  " >Course:</label>
                
                
                    <asp:TextBox CssClass="form-control txt5" ID="txtCourse" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullname"
                        ErrorMessage="required field." SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtCourse" ErrorMessage="Please enter Full name"></asp:RequiredFieldValidator>
               
            </div>
             <div class="form-group">
                <label class="control-label  " >Date of Birth:</label>
                
                
                    <asp:TextBox  CssClass="form-control txt6" ID="txtDateOfBirth" runat="server"></asp:TextBox>
                   <%-- <a href="#" onclick="cal.select(document.forms['form1'].txtDateOfBirth,'anchor1','dd/MM/yyyy'); return false;"
                        name="anchor1" id="anchor1">select</a>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtDateOfBirth" Display="Dynamic" 
                        ErrorMessage="Please enter DOB"></asp:RequiredFieldValidator>
                   
               </div>
                <div class="form-group">
                <label class="control-label  " >Hire Date:</label>
                
                
                    <asp:TextBox  CssClass="form-control txt7" ID="txtHireDate" runat="server"></asp:TextBox>
                   <%-- <a href="#" onclick="cal.select(document.forms['form1'].txtDateOfBirth,'anchor1','dd/MM/yyyy'); return false;"
                        name="anchor1" id="anchor1">select</a>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtHireDate" Display="Dynamic" 
                        ErrorMessage="Please enter DOB"></asp:RequiredFieldValidator>
                   
               </div>
             
           <div class="form-group">
                <label class="control-label  " >Address:</label>
                
                    <asp:TextBox ID="txtAddress" CssClass=" form-control txt8" runat="server" Height="93px" 
                        TextMode="MultiLine" Width="141px"></asp:TextBox>
             </div>
                            
                  <div class="form-group">
                <label class="control-label  " >City:</label>
               
                
                   <asp:TextBox CssClass="form-control txt9" ID="txtCity" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullname"
                        ErrorMessage="required field." SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtCity" ErrorMessage="Please enter Full name"></asp:RequiredFieldValidator>
                </div>
            
             
            <div class="form-group">
                <label class="control-label  " >Region:</label>
                
               
                    <asp:TextBox CssClass="form-control txt10"  ID="txtRegion" runat="server"></asp:TextBox>
                   <%-- <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSalary"
                        ErrorMessage="Value must be integer" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtRegion" Display="Dynamic" 
                        ErrorMessage="Please enter salary"></asp:RequiredFieldValidator>
             </div>
             <div class="form-group">
                <label class="control-label " >Postal Code:</label>
                
               
                    <asp:TextBox CssClass="form-control txt11"  ID="TxtPost" runat="server"></asp:TextBox>
                   <%-- <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSalary"
                        ErrorMessage="Value must be integer" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtPost" Display="Dynamic" 
                        ErrorMessage="Please enter postal code"></asp:RequiredFieldValidator>
             </div>
             <div class="form-group">
                <label class="control-label " >Country:</label>
                
               
                    <asp:TextBox CssClass="form-control txt12"  ID="txtCoun" runat="server"></asp:TextBox>
                   <%-- <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSalary"
                        ErrorMessage="Value must be integer" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtCoun" Display="Dynamic" 
                        ErrorMessage="Please enter  country side"></asp:RequiredFieldValidator>
             </div>
             <div class="form-group">
                <label class="control-label  " >Phone Number:</label>
               
               
                    <asp:TextBox CssClass="form-control txt13 " placeholder="01224402799" ID="txtPhone" runat="server"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtPhone" Display="Dynamic" 
                        ErrorMessage="Please enter phone number"></asp:RequiredFieldValidator>
                   
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtPhone" ErrorMessage="Format phone is xxxxxxxxxxx (11)" 
                        ValidationExpression="\d{11}" Display="Dynamic"></asp:RegularExpressionValidator>
                 </div>
            <div class="form-group">
                <label class="control-label " >Manager ID:</label>
                
               
                    <asp:TextBox CssClass="form-control txt14"  ID="txtMgrid" runat="server"></asp:TextBox>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtMgrid"
                        ErrorMessage="Value must be integer" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                    
             </div>
            
        </div>
        <div style=" text-align:center;">

         <asp:Button ID="btnSave" onclick="btnSave_Click"  CssClass="btnCus" runat="server" Text="Save" Width="63px" 
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
<asp:Button ID="btnNew" OnClick="btnNew_Click" OnClientClick="showModal();" CssClass="btnCus" runat="server" Text="New" Width="65px" 
                        />
                   
                    <asp:Button CssClass="btnCus"  ID="btnReset" runat="server" Text="Reset" Width="68px" 
                      CausesValidation="False" />
                    <asp:Button CssClass="btnCus"  ID="btnLoad" runat="server" CausesValidation="False" 
                       Text="Load" />
                    
                   
                    
                    
        </div>
</asp:Content>

<asp:Content id="tableContent" ContentPlaceHolderID="panelTable" runat="server">
    <asp:GridView ID="gridEmp"   OnSelectedIndexChanged="gridEmp_SelectedIndexChanged" OnRowDataBound="gridEmp_RowDataBound" CssClass="table" runat="server"  EditRowStyle-CssClass="editRow" AlternatingRowStyle-CssClass="alterRow" EmptyDataRowStyle-CssClass="emptyRow" FooterStyle-CssClass="foot" HeaderStyle-CssClass="headTbl" >
    </asp:GridView>
</asp:Content>