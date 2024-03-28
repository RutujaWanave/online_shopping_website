<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="Project_online.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
</p>
<p>
</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" align="center">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
        <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
        <asp:BoundField DataField="Prices" HeaderText="Prices" SortExpression="Prices" />
        <asp:BoundField DataField="Fname" HeaderText="First name" SortExpression="Fname" />
        <asp:BoundField DataField="Lname" HeaderText="Last name" SortExpression="Lname" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Phone" HeaderText="Mobile No" SortExpression="Phone" />
        <asp:BoundField DataField="CardNo" HeaderText="Card Number" SortExpression="CardNo" />
        <asp:BoundField DataField="CVC" HeaderText="CVC" SortExpression="CVC" />
    </Columns>
</asp:GridView>
<p>
</p>
<p>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_ShoppingConnectionString14 %>" SelectCommand="SELECT * FROM [FeedBack2]"></asp:SqlDataSource>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
    &nbsp;</p>
</asp:Content>
