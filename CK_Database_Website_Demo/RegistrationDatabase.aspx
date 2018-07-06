<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RegistrationDatabase.aspx.vb" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div>
            <asp:Label ID="Label_UserLoggedIn" runat="server"></asp:Label>
        
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="RegistrationConnectionString">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="RegistrationConnectionString" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString2 %>" SelectCommand="SELECT * FROM [UserData]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="B_Logout" runat="server" Text="Logout" />
        </div>
</asp:Content>
    
