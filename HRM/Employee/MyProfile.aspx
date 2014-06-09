<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true"
    CodeFile="MyProfile.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <script src="../Bin/jquery-1.8.2.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $('#txtResidenceAddress').blur(function () {
                $('#TxtPermanentAddress').val($('#txtResidenceAddress').val());
                //alert('test');
            });
        });
    </script>
    <style type="text/css">
        .text
        {
            width: 200px;
        }
        .residence
        {
            position: absolute;
            float: left;
            left: 250px;
            top: 460px;
        }
        .permanent
        {
            position: absolute;
            float: left;
            left: 600px;
            top: 460px;
        }
        .samecheck
        {
            position: absolute;
            float: left;
            left: 500px;
            top: 460px;
        }
        .fieldset
        {
          position:relative;
            left: 50px;  
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <br />
    <br />
    <table width="100%">
        <tr>
            <td>
                <div id="DivTitle" class="DivTitle">
                    Employee Profile
                </div>
            </td>
        </tr>
        <tr>
        <td colspan="2">
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        </td>
        </tr>
       <%-- <tr>
            <td align="left" style="width: 150px; left: 50px; position: absolute; top: 170px;">
                <asp:Button ID="Button1" runat="server" Text="Back" CssClass="loginButton" 
                    CausesValidation="false" onclick="Button1_Click" />
            </td>
        </tr>--%>
        <tr>
        <td align="right">
            <asp:Label ID="txtDatetimeNow" runat="server" Text=""></asp:Label>
        </td>
        </tr>
       
    </table>
    <br />
    <br />
    &nbsp;
    <fieldset class="fieldset">
        <legend style="">Basic Details</legend>
        <table class="table">
        <tr>
        <td>
            <asp:TextBox ID="txtEmpId" Visible="false" runat="server"></asp:TextBox>
        </td>
        </tr>
            <tr>
                <td align="right" style="width: 200px;" valign="top">
                    <asp:Label ID="Label10" runat="server" Text="Associate ID :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAssociateID" CssClass="text" runat="server"></asp:TextBox>
                </td>
                <td align="right" style="width: 200px;" valign="top">
                    <asp:Label ID="Label5" runat="server" Text="Date Of Joining :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDateofjoining" CssClass="text" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" TargetControlID="txtDateofjoining"
                        Format="dd/MM/yyyy">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 200px;" valign="top">
                    <asp:Label ID="Label14" runat="server" Text="First Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstname" CssClass="text" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtFirstname"
                        runat="server" ErrorMessage="Please Enter First Name" ForeColor="Red" Font-Size="0.8em">*</asp:RequiredFieldValidator>
                </td>
                <td align="right" style="width: 200px;" valign="top">
                    <asp:Label ID="Label3" runat="server" Text="Last Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLastname" CssClass="text" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtLastname"
                        runat="server" ErrorMessage="Please Enter Last Name" ForeColor="Red" Font-Size="0.8em">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 200px;" valign="top">
                    <asp:Label ID="Label11" runat="server" Text=" Gender :"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="rdbtnGender" RepeatDirection="Horizontal" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td align="right" style="width: 200px;" valign="top">
                    <asp:Label ID="Label4" runat="server" Text="Designation :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDesignation" CssClass="text" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtDesignation"
                        runat="server" ErrorMessage="Please Enter Title" ForeColor="Red" Font-Size="0.8em">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 200px;" valign="top">
                    <asp:Label ID="Label1" runat="server" Text="Status :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="drpStatus" CssClass="text" runat="server">
                        <asp:ListItem Value="Select">--Select--</asp:ListItem>
                        <asp:ListItem Value="1">Active</asp:ListItem>
                        <asp:ListItem Value="0">InActive</asp:ListItem>
                    </asp:DropDownList>
                <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Status Required"
                        ControlToValidate="drpStatus" ForeColor="#8A0808">*
                    </asp:RequiredFieldValidator>--%>
                </td>
            </tr>
        </table>
    </fieldset>
    <fieldset class="fieldset">
        <legend>Personal Details</legend>
        <table class="table">
            <tr>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label12" runat="server" Text="Date Of Birth :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDOB" CssClass="text" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="txtRemDate_CalendarExtender" runat="server" Enabled="True"
                        TargetControlID="txtDOB" Format="dd/MM/yyyy">
                    </asp:CalendarExtender>
                </td>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label15" runat="server" Text="Mother Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMotherName" CssClass="text" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMotherName"
                        ErrorMessage="Required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label18" runat="server" Text="Blood Group :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBloodGroup" CssClass="text" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBloodGroup"
                        ErrorMessage="Required">*</asp:RequiredFieldValidator>
                </td>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label16" runat="server" Text="Father Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFatherName" CssClass="text" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtFatherName"
                        ErrorMessage="Required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label17" runat="server" Text="Spouse Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSpouseName" CssClass="text" runat="server"></asp:TextBox>
                </td>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label2" runat="server" Text="Date Of Anniversary :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDateofAnniversary" CssClass="text" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender2" TargetControlID="txtDateofAnniversary" runat="server">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label6" runat="server" Text="Childrens :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtChildrens" CssClass="text" runat="server"></asp:TextBox>
                </td>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label7" runat="server" Text="Pan No :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPanNo" CssClass="text" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtPanNo"
                        runat="server" ErrorMessage="Required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label8" runat="server" Text="Passport No :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassportNo" CssClass="text" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </fieldset>
    <fieldset class="fieldset">
        <legend>Contact Details</legend>
        <table class="table" width="100%">
            <tr>
                <td>
                    <table class="table" width="50%">
                        <tr>
                            <td align="right" style="width: 200px;">
                                <asp:Label ID="Label23" runat="server" Text="Residencial"></asp:Label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 200px;">
                                <asp:Label ID="Label9" runat="server" Text=" Address :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtResidenceAddress"  CssClass="text" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 200px;">
                                <asp:Label ID="Label13" runat="server" Text=" Pincode  :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtResidencePincode" CssClass="text" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 200px;">
                                <asp:Label ID="Label24" runat="server" Text=" City  :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtResidenceCity" CssClass="text" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 200px;">
                                <asp:Label ID="Label37" runat="server" Text=" State  :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtResidenceState" CssClass="text" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 200px;">
                                <asp:Label ID="Label38" runat="server" Text=" Country  :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtResidenceCountry" CssClass="text" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="table" width="50%">
                        <tr>
                            <td align="right" style="width: 200px;">
                                <asp:Label ID="Label39" runat="server" Text="Permanent"></asp:Label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 200px;">
                                <asp:Label ID="Label40" runat="server" Text=" Address :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPermanentAddress" CssClass="text" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 200px;">
                                <asp:Label ID="Label41" runat="server" Text=" Pincode  :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPermanentPincode" CssClass="text" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 200px;">
                                <asp:Label ID="Label42" runat="server" Text=" City  :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPermanentCity" CssClass="text" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 200px;">
                                <asp:Label ID="Label43" runat="server" Text=" State  :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPermanentState" CssClass="text" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 200px;">
                                <asp:Label ID="Label44" runat="server" Text=" Country  :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPermanentCountry" CssClass="text" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table class="table">
            <tr>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label29" runat="server" Text=" Phone No :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhoneNo" CssClass="text" runat="server"></asp:TextBox>
                </td>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label30" runat="server" Text=" Mobile No :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMobileNo" CssClass="text" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtMobileNo"
                        ErrorMessage="Required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label31" runat="server" Text=" Official Email :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtOfficialEmail" CssClass="text" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtOfficialEmail" ErrorMessage="*">*</asp:RequiredFieldValidator>
                </td>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label32" runat="server" Text=" Personal Email :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPersonaEmail" CssClass="text" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtPersonaEmail"
                        ErrorMessage="Required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:CheckBox ID="CheckBox1" runat="server" 
                        oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="true" />
                </td>
            </tr>
        </table>
    </fieldset>
    <fieldset class="fieldset">
        <legend>Bank Details</legend>
        <table class="table">
            <tr>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label33" runat="server" Text=" Bank Account Number :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBankAcctNo" CssClass="text" runat="server"></asp:TextBox>
                </td>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label34" runat="server" Text=" Bank Branch :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBankBranch" CssClass="text" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label35" runat="server" Text=" Bank Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBankName" CssClass="text" runat="server"></asp:TextBox>
                </td>
                <td align="right" style="width: 200px;">
                    <asp:Label ID="Label36" runat="server" Text=" Bank IFSC :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBankIfsc" CssClass="text" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </fieldset>
    <fieldset class="fieldset">
        <legend>Photo</legend>
        <div class="divPhoto">
            <div class="divImage">
                <br />
                <br />
                <asp:FileUpload ID="photoUpload" runat="server" />
                <br />
                <asp:Button ID="btnUpload" runat="server" CausesValidation="false" CssClass="Button"
                    Text="Upload" onclick="btnUpload_Click" />
                <asp:Label ID="lblfilename" runat="server" Visible="true"></asp:Label>
            </div>
            <div class="divImage">
                <asp:Image ID="imgProfile" runat="server" Height="130px" ImageUrl="~/Images/defaultProfile.png"
                    Width="200px" />
            </div>
        </div>
    </fieldset>
     <fieldset class="fieldset">

    <legend>Comment</legend>
    <table>
    <tr>
    <td>
     <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Height="150px" Width="500px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>Status :
        <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
    </td>
    </tr>
       </table>
    </fieldset>
    <div class="fieldset">
        <asp:Button ID="btnSave" runat="server" CssClass="loginButton" Text="Save" OnClick="btnSave_Click" />
        <asp:Button ID="btnUpdate" runat="server" CssClass="loginButton" Visible="false"
            Text="Update" onclick="btnUpdate_Click1" />
        &nbsp;
        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="loginButton"
            Text="Cancel" />
    </div>
    <br />
    <br />
    <br />
</asp:Content>
