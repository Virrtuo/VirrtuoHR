<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Emailer.aspx.cs" Inherits="Emailer" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <FTB:FreeTextBox ID="FreeTextBox1" runat="server">

            </FTB:FreeTextBox>
        </div>
        <div>
            Attachment : <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
    </div>
    </form>
</body>
</html>
