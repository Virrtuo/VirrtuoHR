<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Login">
        <div class="DivLoginMain">
             
        <div id="DivLoginTitle">
            <img src="Images/Login.png" />
            Please Login Here
        </div>
       
        <div id="DivLoginBox">
             <div style="padding-left:25px;padding-top:15px;">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ValidationSummary"/>
            </div>
            <table cellspacing="15">
                    
                <tr>
                    <td align="left" style="padding:5px;" colspan="2">
                        <asp:Label ID="lblErrorMsg" Visible="false" runat="server" Text=""
                        ForeColor="#8A0808" Font-Bold="true">
                        </asp:Label>
                    </td>                        
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Username" CssClass="LoginLabel"></asp:Label>
                    </td>  
                     <td >
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="loginTextBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username Required"
                        ControlToValidate="txtUsername" ForeColor="#8A0808">*
                        </asp:RequiredFieldValidator>
                    </td>                       
                </tr>
               
                <tr>
                    <td >
                        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="LoginLabel"></asp:Label>
                    </td> 
                    <td >
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="loginTextBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required"
                        ControlToValidate="txtPassword"  ForeColor="#8A0808">*
                        </asp:RequiredFieldValidator>
                    </td>                         
                </tr>
                
                <tr>
                    <td></td>
                    <td >
                        <asp:CheckBox ID="ChkRemmMe" runat="server" Text="Remember Me" CssClass="LoginLabel" Checked="true" />                          
                    </td>                        
                </tr>
                
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login"  CssClass="loginButton" OnClick="btnLogin_Click"/>
                        <input id="Reset1" type="reset" value="Reset" class="loginButton"/>
                    </td>                        
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="New User?" CssClass="LoginLabel"></asp:Label>&nbsp
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="LoginLabel" CausesValidation="false"
                            PostBackUrl="~/Accounts/Register.aspx" ForeColor="Green">Register</asp:LinkButton>
                    </td>                        
                </tr>
            </table>
        </div>        
           
        </div>
    </div>
</asp:Content>

