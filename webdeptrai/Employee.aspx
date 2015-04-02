<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="Employee.aspx.cs" Inherits="_Default" %>


<asp:Content id="inputContent" ContentPlaceHolderID="panelEdit" runat="server">
      <table width="100%">
            <tr>
                <td width="10%">
                    ID:
                </td>
                <td>
                    <asp:Label ID="lblID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Full name (*):
                </td>
                <td>
                    <asp:TextBox ID="txtFullname" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullname"
                        ErrorMessage="required field." SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtFullname" ErrorMessage="Please enter Full name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Date of Birth:
                </td>
                <td>
                    <asp:TextBox ID="txtDateOfBirth" runat="server"></asp:TextBox>
                   <%-- <a href="#" onclick="cal.select(document.forms['form1'].txtDateOfBirth,'anchor1','dd/MM/yyyy'); return false;"
                        name="anchor1" id="anchor1">select</a>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtDateOfBirth" Display="Dynamic" 
                        ErrorMessage="Please enter DOB"></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
            <tr>
                <td>
                    Gender:
                </td>
                <td>
                    <asp:RadioButtonList ID="RBLGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Male" Value="M" />
                        <asp:ListItem Text="Female" Value="F" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="RBLGender" Display="Dynamic" 
                        ErrorMessage="Please check gender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    National:
                </td>
                <td>
                    <asp:DropDownList ID="DDLNational" runat="server">
                        <asp:ListItem Text="Select a nation" Value="-1" Selected="True" />
                        <asp:ListItem Text="Vietnam" Value="Vietnam" />
                        <asp:ListItem Text="Japan" Value="Japan" />
                        <asp:ListItem Text="Singapore" Value="Singapore" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DDLNational" Display="Dynamic" 
                        ErrorMessage="Please choose national" InitialValue="-1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Phone number:
                </td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtPhone" Display="Dynamic" 
                        ErrorMessage="Please enter phone number"></asp:RequiredFieldValidator>
                   
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtPhone" ErrorMessage="Format phone is xxxx-xxxx-xxxx" 
                        ValidationExpression="\d{4}-\d{4}-\d{4}" Display="Dynamic"></asp:RegularExpressionValidator>
                   
                </td>
            </tr>
            <tr>
                <td>
                    Qualification:
                </td>
                <td>
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
                </td>
            </tr>
            <tr>
                <td>
                    Address:
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" Height="93px" 
                        TextMode="MultiLine" Width="241px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Salary:
                </td>
                <td>
                    <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
                   <%-- <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSalary"
                        ErrorMessage="Value must be integer" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtSalary" Display="Dynamic" 
                        ErrorMessage="Please enter salary"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            
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
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</asp:Content>