<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ChangePasswordAdmin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div class="Login">
        <div class="DivLoginMain">
            <div id="DivLoginTitle">
                <%--<img src="Images/Chanepassword.png" height="32px" width="32px" />--%><img src="../Images/cp.jpg" height="32px" width="32px" />
                Change Password
            </div>
            <div id="DivLoginBox">
                <div class="ValidationSummary">
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" CssClass="ValidationSummary"
                        DisplayMode="BulletList" />
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
                            Current Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtCurrentPassword" TextMode="Password" CssClass="loginTextBox"
                                runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCurrentPassword"
                                ErrorMessage="Required">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="LoginLabel">
                            New Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtNewPassword" TextMode="Password" CssClass="loginTextBox" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required"
                                ControlToValidate="txtNewPassword">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="LoginLabel">
                            Confirm Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtConfirmPassword" CssClass="loginTextBox" TextMode="Password"
                                runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="doesn't match"
                                ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnUpdate" runat="server" CssClass="loginButton" Text="Update"  />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

