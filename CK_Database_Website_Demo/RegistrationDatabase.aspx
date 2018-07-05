<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RegistrationDatabase.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
        </div>
    </form>
</body>
</html>
