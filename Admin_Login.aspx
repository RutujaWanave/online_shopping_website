<%@ Page Title="" Language="C#" MasterPageFile="~/Home2.Master" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Project_online.Admin_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 403px;
            width: 759px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table align="center" style="background-color:aqua" class="auto-style1">
            <tr>
                <td colspan="2" align="center" class="auto-style4">
                    <h2><asp:Label ID="Label1" runat="server" Text="Admin Login"></asp:Label></h2>
                </td>
             
            </tr>
            <tr>
                <td align="center" class="auto-style3"><b>Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                    <asp:TextBox ID="User_Text" runat="server" Height="45px" Width="282px" CssClass="auto-style2"></asp:TextBox>
                </td>
              
            </tr>
            <tr>
                <td align="center" class="auto-style5"><b>Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b>
                    <asp:TextBox ID="Pass_Text" runat="server" Height="45px" Width="282px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>&nbsp;</td>
          
            </tr>
            <tr>
                <td colspan="2"align="center" style="width:50%">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_Login" runat="server" Height="63px" Text="Login" Width="170px" BackColor="#3399FF" BorderColor="Black" OnClick="Login1_Click" />
                </td>
               
            </tr>
        </table>
</asp:Content>
