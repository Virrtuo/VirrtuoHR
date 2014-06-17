<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="VerificationDetails.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <br />
    <br />
     <table width="100%">
                    <tr>
                        <td>
                            <div id="DivTitle" class="DivTitle">
                                Employee Details For Verification
                            </div>
                        </td>
                    </tr>
                  <%--  <tr>
                        <td align="left"  style="width: 150px; left:50px;position:absolute;top:170px;">
                            <asp:Button ID="Button1" runat="server" Text="Add New" onclick="Button1_Click" CssClass="loginButton" />
                            
                        </td>
                    </tr>--%>
                </table>
                <br />
                &nbsp;
   
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <style id="Style" type="text/css">
              
                .gridview
        {
            position: absolute;
            float: left;
            left: 50px;
        }
            </style>
           <br />
           <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" CssClass="gridview"
                Visible="true" AutoGenerateColumns="false" BorderColor="#CCCCCC" BorderStyle="Solid"
                BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand"
                OnRowEditing="GridView1_RowEditing" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                Width="1233px">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
                <Columns>
                   <%-- <asp:BoundField DataField="EmpDetID" HeaderStyle-HorizontalAlign="Left"  HeaderText="Employee Detail Id " />--%>
                    <asp:BoundField DataField="EmpID" HeaderStyle-HorizontalAlign="Left"  HeaderText="Employee Id" />
                    <asp:BoundField DataField="DOB" HeaderStyle-HorizontalAlign="Left" HeaderText="Date Of Birth" />
                    <asp:BoundField DataField="DOA" HeaderStyle-HorizontalAlign="Left" HeaderText="Date Of Anniversary" />
                 <%--   <asp:BoundField DataField="SpouseName" HeaderStyle-HorizontalAlign="Left" HeaderText="Spouse Name " />--%>
                    <asp:BoundField DataField="MotherName" HeaderStyle-HorizontalAlign="Left" HeaderText="Mother Name " />
                    <asp:BoundField DataField="FatherName" HeaderStyle-HorizontalAlign="Left" HeaderText="Father Name " />
                   <%-- <asp:BoundField DataField="Childrens" HeaderStyle-HorizontalAlign="Left" HeaderText="Childrens " />
                    <asp:BoundField DataField="BloodGroup" HeaderStyle-HorizontalAlign="Left" HeaderText="BloodGroup " />--%>
                    <asp:BoundField DataField="PanNO" HeaderStyle-HorizontalAlign="Left" HeaderText="Pan NO " />
                    <asp:BoundField DataField="PassPortNo" HeaderStyle-HorizontalAlign="Left" HeaderText="Passport No " />
                   <%-- <asp:BoundField DataField="RessAdds" HeaderStyle-HorizontalAlign="Left" HeaderText="RessAdds " />
                    <asp:BoundField DataField="RessPin" HeaderStyle-HorizontalAlign="Left" HeaderText="RessPin " />
                    <asp:BoundField DataField="RessState" HeaderStyle-HorizontalAlign="Left" HeaderText="RessState " />
                    <asp:BoundField DataField="RessCountry" HeaderStyle-HorizontalAlign="Left" HeaderText="RessCountry " />
                    <asp:BoundField DataField="PermAdds" HeaderStyle-HorizontalAlign="Left" HeaderText="PermAdds " />
                    <asp:BoundField DataField="PermPin" HeaderStyle-HorizontalAlign="Left" HeaderText="PermPin " />
                    <asp:BoundField DataField="PermCity" HeaderStyle-HorizontalAlign="Left" HeaderText="PermCity " />
                    <asp:BoundField DataField="PermState" HeaderStyle-HorizontalAlign="Left" HeaderText="PermState " />
                    <asp:BoundField DataField="PermCountry" HeaderStyle-HorizontalAlign="Left" HeaderText="PermCountry " />
                    <asp:BoundField DataField="Phone" HeaderStyle-HorizontalAlign="Left" HeaderText="Phone " />--%>
                    <asp:BoundField DataField="Mobile" HeaderStyle-HorizontalAlign="Left" HeaderText="Mobile " />
                    <asp:BoundField DataField="EmailOff" HeaderStyle-HorizontalAlign="Left" HeaderText="official MailId " />
                    <asp:BoundField DataField="EmailPerm" HeaderStyle-HorizontalAlign="Left" HeaderText="Personal MailId " />
                    <%--  <asp:BoundField DataField="BankAccNo" HeaderStyle-HorizontalAlign="Left" HeaderText="BankAccNo " />
                    <asp:BoundField DataField="BankName" HeaderStyle-HorizontalAlign="Left" HeaderText="BankName " />
                  <asp:BoundField DataField="BankBranch" HeaderStyle-HorizontalAlign="Left" HeaderText="BankBranch " />
                    <asp:BoundField DataField="BankIFSC" HeaderStyle-HorizontalAlign="Left" HeaderText="BankIFSC " />--%>
                    <%--<asp:BoundField DataField="" HeaderStyle-HorizontalAlign="Left" HeaderText="Gender " />--%>
                    <asp:BoundField DataField="DateTime" HeaderStyle-HorizontalAlign="Left" HeaderText="Updated On" />
                    <asp:BoundField DataField="Verification" HeaderStyle-HorizontalAlign="Left" HeaderText="Verification " />
                    <%-- <asp:TemplateField HeaderText="Solved Problem">
                        <ItemTemplate>
                            <asp:Label ID="lblText" runat="server" Visible="True"></asp:Label>
                            <asp:LinkButton Text="View" ID="lnkView" runat="server" CommandName="View" CommandArgument='<%#Eval("Contact_Id")%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="Delete" CommandName="Delete" CommandArgument='<%#Eval("Contact_Id") %>'
                                runat="server" CausesValidation="false" OnClientClick=" return confirm('Are you sure want to delete?');">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Solved Problem">
                        <ItemTemplate>
                     
                            <asp:LinkButton Text="Send Mail" ID="SendMail" runat="server" CommandName="Send Mail" CommandArgument='<%#Eval("Contact_Id")%>' />
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Edit">
                        <ItemTemplate>
                           <asp:LinkButton ID="Edit" runat="server"  CommandName="Edit" ToolTip="Edit"  CausesValidation="false"  CommandArgument='<%#Eval("EmpID") %>'>
                           <img src="../Images/edit_user.png" width="20px" height="20px"  />
                           </asp:LinkButton> 
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="Delete" CommandName="Delete" CommandArgument='<%#Eval("EmpID") %>'
                                runat="server" CausesValidation="false" OnClientClick=" return confirm('Are you sure want to delete?');">
                               <img src="../Images/user_delete.png" width="20px" height="20px"   />
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <%--<asp:Button ID="btnShowMOdelWIndow" runat="server" Text="Button" Style="display: none" />
            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1"
                TargetControlID="btnShowMOdelWIndow" BackgroundCssClass="modalBackground" CancelControlID="btnClose">
            </asp:ModalPopupExtender>
            <asp:Panel ID="Panel1" runat="server" BackColor="White" BorderColor="#3333CC" ForeColor="Black">
                <div id="dialog">
                    <b>Associate Id:</b>
                    <asp:TextBox ID="lblAssociateId" Text="" runat="server"></asp:TextBox><br />
                    <br />
                    <b>FirstName:</b>
                    <asp:TextBox ID="lblFirstName" Text="" runat="server"></asp:TextBox><br />
                    <br />
                    <b>LastName:</b>
                    <asp:TextBox ID="lblLastName" Text="" runat="server"></asp:TextBox><br />
                    <br />
                    <b>Date Of Joining:</b>
                    <asp:TextBox ID="lblDoj" Text="" runat="server"></asp:TextBox><br />
                    <br />
                    <b>Gender:</b>
                    <asp:TextBox ID="lblGender" Text="" runat="server"></asp:TextBox><br />
                    <br />
                    <b>Designation:</b>
                    <asp:TextBox ID="lblDesignation" Text="" runat="server"></asp:TextBox><br />
                    <br />
                    <b>Status:</b>
                    <asp:TextBox ID="lblStatus" Text="" runat="server"></asp:TextBox><br />
                    <br />
                     <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="loginButton"  />
                    <asp:Button ID="btnClose" runat="server" Text="Close" />
                    </div>
                </asp:Panel>--%>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

