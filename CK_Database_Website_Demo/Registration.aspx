<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 187px;
            text-align: right;
        }
        .auto-style3 {
            width: 190px;
        }
        .auto-style4 {
            width: 187px;
            text-align: right;
            height: 26px;
        }
        .auto-style5 {
            width: 190px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">User Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxUN" runat="server" style="margin-right: 3px" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name is Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="E-mail is required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter a valid E-Mail address." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Confirm Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxCPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxCPass" ErrorMessage="Confirm password is required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxCPass" ErrorMessage="Both Passwords must be the same." Font-Bold="False" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Country:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownListCN" runat="server" Width="180px">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>United States</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>Mexico</asp:ListItem>
                        <asp:ListItem>Columbia</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCN" ErrorMessage="Select a Country Name" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
