﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayProfile.aspx.cs" Inherits="CharityManagement.DisplayProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridViewPM" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="u_id" DataSourceID="ProfileManagement" ForeColor="#333333" GridLines="None" OnRowDeleting="DeleteProfile">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="u_id" HeaderText="u_id" InsertVisible="False" ReadOnly="True" SortExpression="u_id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="ProfileManagement" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [u_id] = @u_id" InsertCommand="INSERT INTO [users] ([name], [email], [phone], [password]) VALUES (@name, @email, @phone, @password)" SelectCommand="SELECT * FROM [users] WHERE ([u_id] = @u_id)" UpdateCommand="UPDATE [users] SET [name] = @name, [email] = @email, [phone] = @phone, [password] = @password WHERE [u_id] = @u_id">
                <DeleteParameters>
                    <asp:Parameter Name="u_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="u_id" SessionField="id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="u_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
       <asp:HyperLink ID="Home_page" runat="server" NavigateUrl="~/HomePage.aspx">Go to Home</asp:HyperLink>

        <br />
        <br />
        <asp:Button ID="btnLogout" runat="server" OnClick="btn_clickLogout" Text="Logout" />

    </form>
</body>
</html>
