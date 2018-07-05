<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NursingHomeStateAverages.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="Nursing_State_Averages" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="C1_HLTH_DEFS_CNT" HeaderText="C1_HLTH_DEFS_CNT" SortExpression="C1_HLTH_DEFS_CNT" />
                <asp:BoundField DataField="C1_FS_DEFS_CNT" HeaderText="C1_FS_DEFS_CNT" SortExpression="C1_FS_DEFS_CNT" />
                <asp:BoundField DataField="C2_HLTH_DEFS_CNT" HeaderText="C2_HLTH_DEFS_CNT" SortExpression="C2_HLTH_DEFS_CNT" />
                <asp:BoundField DataField="C2_FS_DEFS_CNT" HeaderText="C2_FS_DEFS_CNT" SortExpression="C2_FS_DEFS_CNT" />
                <asp:BoundField DataField="C3_HLTH_DEFS_CNT" HeaderText="C3_HLTH_DEFS_CNT" SortExpression="C3_HLTH_DEFS_CNT" />
                <asp:BoundField DataField="C3_FS_DEFS_CNT" HeaderText="C3_FS_DEFS_CNT" SortExpression="C3_FS_DEFS_CNT" />
                <asp:BoundField DataField="PREV_HTH_AVG" HeaderText="PREV_HTH_AVG" SortExpression="PREV_HTH_AVG" />
                <asp:BoundField DataField="restot" HeaderText="restot" SortExpression="restot" />
                <asp:BoundField DataField="aidhrd" HeaderText="aidhrd" SortExpression="aidhrd" />
                <asp:BoundField DataField="vochrd" HeaderText="vochrd" SortExpression="vochrd" />
                <asp:BoundField DataField="rnhrd" HeaderText="rnhrd" SortExpression="rnhrd" />
                <asp:BoundField DataField="totlichrd" HeaderText="totlichrd" SortExpression="totlichrd" />
                <asp:BoundField DataField="tothrd" HeaderText="tothrd" SortExpression="tothrd" />
                <asp:BoundField DataField="pthrd" HeaderText="pthrd" SortExpression="pthrd" />
                <asp:BoundField DataField="fine_cnt" HeaderText="fine_cnt" SortExpression="fine_cnt" />
                <asp:BoundField DataField="fine_tot" HeaderText="fine_tot" SortExpression="fine_tot" />
                <asp:BoundField DataField="qm401" HeaderText="qm401" SortExpression="qm401" />
                <asp:BoundField DataField="qm402" HeaderText="qm402" SortExpression="qm402" />
                <asp:BoundField DataField="qm403" HeaderText="qm403" SortExpression="qm403" />
                <asp:BoundField DataField="qm404" HeaderText="qm404" SortExpression="qm404" />
                <asp:BoundField DataField="qm405" HeaderText="qm405" SortExpression="qm405" />
                <asp:BoundField DataField="qm406" HeaderText="qm406" SortExpression="qm406" />
                <asp:BoundField DataField="qm407" HeaderText="qm407" SortExpression="qm407" />
                <asp:BoundField DataField="qm408" HeaderText="qm408" SortExpression="qm408" />
                <asp:BoundField DataField="qm409" HeaderText="qm409" SortExpression="qm409" />
                <asp:BoundField DataField="qm410" HeaderText="qm410" SortExpression="qm410" />
                <asp:BoundField DataField="qm411" HeaderText="qm411" SortExpression="qm411" />
                <asp:BoundField DataField="qm415" HeaderText="qm415" SortExpression="qm415" />
                <asp:BoundField DataField="qm419" HeaderText="qm419" SortExpression="qm419" />
                <asp:BoundField DataField="qm424" HeaderText="qm424" SortExpression="qm424" />
                <asp:BoundField DataField="qm425" HeaderText="qm425" SortExpression="qm425" />
                <asp:BoundField DataField="qm426" HeaderText="qm426" SortExpression="qm426" />
                <asp:BoundField DataField="qm430" HeaderText="qm430" SortExpression="qm430" />
                <asp:BoundField DataField="qm434" HeaderText="qm434" SortExpression="qm434" />
                <asp:BoundField DataField="qm451" HeaderText="qm451" SortExpression="qm451" />
                <asp:BoundField DataField="qm452" HeaderText="qm452" SortExpression="qm452" />
                <asp:BoundField DataField="qm471" HeaderText="qm471" SortExpression="qm471" />
                <asp:BoundField DataField="qm521" HeaderText="qm521" SortExpression="qm521" />
                <asp:BoundField DataField="qm522" HeaderText="qm522" SortExpression="qm522" />
                <asp:BoundField DataField="qm523" HeaderText="qm523" SortExpression="qm523" />
                <asp:BoundField DataField="FILEDATE" HeaderText="FILEDATE" SortExpression="FILEDATE" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="Nursing_State_Averages" runat="server" ConnectionString="<%$ ConnectionStrings:cktest1ConnectionString %>" SelectCommand="SELECT * FROM [StateAverages_Download]"></asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
</html>
