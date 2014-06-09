<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="addEmpDetails.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                                Employee List
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td align="left"  style="width: 150px; left:50px;position:absolute;top:170px;">
                            <asp:Button ID="Button1" runat="server" Text="Add New" onclick="Button1_Click" CssClass="loginButton" />
                            
                        </td>
                    </tr>
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
                    <asp:BoundField DataField="AssID" HeaderStyle-HorizontalAlign="Left"  HeaderText="Associate Id " />
                    <asp:BoundField DataField="DOJ" HeaderStyle-HorizontalAlign="Left"  HeaderText="Date Of Joining" />
                    <asp:BoundField DataField="FName" HeaderStyle-HorizontalAlign="Left" HeaderText="FirstName" />
                    <asp:BoundField DataField="LName" HeaderStyle-HorizontalAlign="Left" HeaderText="LastName" />
                    <asp:BoundField DataField="Gender" HeaderStyle-HorizontalAlign="Left" HeaderText="Gender " />
                    <asp:BoundField DataField="Designation" HeaderStyle-HorizontalAlign="Left" HeaderText="Designation " />
                    <asp:BoundField DataField="Status" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" HeaderText="Status " />
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
                           <asp:LinkButton ID="Edit" runat="server"  CommandName="Edit" ToolTip="Edit"  CausesValidation="false"  CommandArgument='<%#Eval("AssID") %>'>
                           <img src="../Images/edit_user.png" width="20px" height="20px"  />
                           </asp:LinkButton> 
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="Delete" CommandName="Delete" CommandArgument='<%#Eval("AssID") %>'
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
