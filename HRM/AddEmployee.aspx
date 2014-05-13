<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="AddEmployee.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Login">
        <div class="DivLoginMain">
             
        <div id="DivLoginTitle">
            <img src="Images/AddEmp.png" />
            Add Employee by Admin
        </div>
       
        <div id="DivLoginBox">
            <table>
            <tr>
            <td>FirstName : </td>
            <td>
                <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
            <td>LastName : </td>
            <td>
                <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
            <td>Date Of Joining : </td>
            <td>
                <asp:TextBox ID="txtDateofjoining" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
            <td>Gender : </td>
            <td>
                <asp:TextBox ID="txtGender" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
            <td>Designation : </td>
            <td>
                <asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox></td>
            </tr>
               <tr>
            <td>Status : </td>
            <td>
                <asp:DropDownList ID="drpStatus" runat="server">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>InActive</asp:ListItem>
                </asp:DropDownList>
            </td>
            </tr>
            </table>
        </div>        
           
        </div>
    </div>


</asp:Content>

