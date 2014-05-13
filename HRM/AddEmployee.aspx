<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true"
    CodeFile="AddEmployee.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div class="Login">
        <div class="DivLoginMain">
            <div id="DivLoginTitle">
                <img src="Images/AddEmp.png" />
                Add Employee by Admin
            </div>
            <div id="DivLoginBox">
              
                    <div class="ValidationSummary">
                      
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" CssClass="ValidationSummary" DisplayMode="BulletList" />
                    </div>
                    <table cellspacing="15">
                    <tr>
                        <td align="left" style="padding: 5px;" colspan="2">
                            <asp:Label ID="lblErrorMsg" Visible="false" runat="server" Text="" ForeColor="#8A0808"
                                Font-Bold="true">
                            </asp:Label>
                        </td>
                    </tr>
                        <tr>
                            <td class="LoginLabel">
                                Associate ID :
                            </td>
                            <td>
                                <asp:TextBox ID="txtAssociateID" runat="server" CssClass="loginTextBox"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Associate ID Required"
                                ControlToValidate="txtAssociateID" ForeColor="#8A0808">*
                                </asp:RequiredFieldValidator>
                            </td>
                           
                        </tr>
                        <tr>
                            <td class="LoginLabel">
                                FirstName :
                            </td>
                            <td>
                                <asp:TextBox ID="txtFirstname" runat="server" CssClass="loginTextBox"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="FirstName Required"
                                ControlToValidate="txtFirstname" ForeColor="#8A0808">*
                                </asp:RequiredFieldValidator>
                            </td>
                           
                        </tr>
                        <tr>
                            <td class="LoginLabel">
                                LastName :
                            </td>
                            <td>
                                <asp:TextBox ID="txtLastname" runat="server" CssClass="loginTextBox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="LoginLabel">
                                Date Of Joining :
                            </td>
                            <td>
                                <asp:TextBox ID="txtDateofjoining" runat="server" CssClass="loginTextBox"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtDateofjoining" runat="server">
                                </asp:CalendarExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="DOJ Required"
                                ControlToValidate="txtDateofjoining" ForeColor="#8A0808">*
                                </asp:RequiredFieldValidator>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="LoginLabel">
                                Gender :
                            </td>
                            <td>
                                <asp:RadioButtonList ID="rdbtnGender" RepeatDirection="Horizontal" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                               
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="LoginLabel">
                                Designation :
                            </td>
                            <td>
                                <asp:TextBox ID="txtDesignation" runat="server" CssClass="loginTextBox"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="LoginLabel">
                                Status :
                            </td>
                            <td>
                                <asp:DropDownList ID="drpStatus" runat="server" CssClass="loginTextBox">
                                    <asp:ListItem Value="Select">--Select--</asp:ListItem>
                                    <asp:ListItem Value="1">Active</asp:ListItem>
                                    <asp:ListItem Value="0">InActive</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Status Required"
                                    ControlToValidate="drpStatus" ForeColor="#8A0808">*
                                    </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="btnAdd" runat="server" CssClass="loginButton" Text="Add" 
                                    onclick="btnAdd_Click" />
                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="loginButton" />
                            </td>
                        </tr>
                    </table>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
            </div>
       
    </div>
   
</asp:Content>
