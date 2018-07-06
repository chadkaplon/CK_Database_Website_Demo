<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   
        <div class="auto-style1">
            <br />
            <strong>Login Page</strong><table class="auto-style2">
                <tr>
                    <td class="auto-style3">User Name:</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBoxUserName" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" CssClass="auto-style10" ErrorMessage="Please enter User Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Password:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" CssClass="auto-style10" ErrorMessage="Please enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style15">
                        <asp:Button ID="Button_Login" runat="server" Text="Login" Width="87px" />
                    </td>
                    <td class="auto-style12">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" ForeColor="#CC3300" NavigateUrl="~/Registration.aspx">New User Register</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
            </table>
        </div>
    



</asp:Content>
