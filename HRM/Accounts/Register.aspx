<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMaster.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Accounts_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Register">
        <div class="DivLoginMain">
             
        <div id="DivLoginTitle">
            <img src="../Images/Register.png" />
            Please Register Here
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
                        <asp:Label ID="Label5" runat="server" Text="Associate ID" CssClass="LoginLabel"></asp:Label>
                    </td>  
                     <td >
                        <asp:TextBox ID="txtAssociateID" runat="server" CssClass="loginTextBox" OnTextChanged="txtAssociateID_TextChanged"
                            AutoPostBack="true"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Associate ID Required"
                        ControlToValidate="txtAssociateID" ForeColor="#8A0808">*
                        </asp:RequiredFieldValidator>
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
                    <td >
                        <asp:Label ID="Label4" runat="server" Text="Confirm Password" CssClass="LoginLabel"></asp:Label>
                    </td> 
                    <td >
                        <asp:TextBox ID="txtCPassword" TextMode="Password" runat="server" CssClass="loginTextBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm Password Required"
                        ControlToValidate="txtCPassword"  ForeColor="#8A0808">*
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Marching"
                            ControlToCompare="txtPassword" ControlToValidate="txtCPassword" >*
                        </asp:CompareValidator>
                    </td>                         
                </tr>                             
                
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" Text="Register"  CssClass="loginButton" OnClick="btnRegister_Click"/>
                        <input id="Reset1" type="reset" value="Reset" class="loginButton"/>
                    </td>                        
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="If Already Member?" CssClass="LoginLabel"></asp:Label>&nbsp
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="LoginLabel" ForeColor="Green" CausesValidation="false"
                            PostBackUrl="~/Login.aspx">Login Here</asp:LinkButton>
                    </td>                        
                </tr>
            </table>
        </div>        
           
        </div>
    </div>
</asp:Content>

